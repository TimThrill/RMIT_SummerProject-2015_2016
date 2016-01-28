/*
 * QueryScore.cc
 *
 *  Created on: Jan 16, 2016
 *      Author: cheetah
 */
#include <limits>
#include <algorithm>

#include "QueryScore.h"
#include "Constant.h"

void QueryScore::initialise() {
    std::ifstream lexiconfile(LEXICON_FILE_PATH);
    std::ifstream mapFile(DOCUMENT_MAP_FILE_PATH);

    // Read map file into memory
    unsigned int docNo;
    while (mapFile >> docNo) {
        long docOffset;
        mapFile >> docOffset;
        docMap.insert(
                std::pair<unsigned int, Document>(docNo,
                        Document(docNo, docOffset)));
    }

    // Read lexicon file into memeory
    std::string word;
    while (lexiconfile >> word) {
        int docFrequency;
        lexiconfile >> docFrequency;
        long invlistPos;
        lexiconfile >> invlistPos;
        lexiconMap.insert(
                std::pair<std::string, Lexicon>(word,
                        Lexicon(word, invlistPos, docFrequency)));
    }

    lexiconfile.close();
    mapFile.close();
    return;
}

void QueryScore::getRankingResult(QueryReply* queryReplyMessage,
        Query* queryMessage) {
    std::vector<std::pair<unsigned int, double> > reviewScore;
    for (std::vector<std::string>::iterator it_key =
            queryMessage->getKeyWords().keywords.begin();
            it_key != queryMessage->getKeyWords().keywords.end(); it_key++) {
        if (lexiconMap.find(*it_key) != lexiconMap.end()) { // The word is in the lexicon map
            Lexicon& term = lexiconMap[*it_key];
            long pos = term.location;
            std::ifstream ivsFile(INVERTED_LIST_FILE_PATH);
            ivsFile.seekg(pos, ivsFile.beg); // Jump to the relavant start position
                                             // in invert list
            int ft = term.docFrequency; // Read document frequency
            EV << "doc freq: " << ft << std::endl;
            ivsFile.read((char*) &ft, sizeof(int));
            EV << "doc freq in invs: " << ft << std::endl;
            for (int j = 0; j < ft; j++) {
                unsigned int docId;
                ivsFile.read((char*) &docId, sizeof(int));
                int fdt;
                ivsFile.read((char*) &fdt, sizeof(int));
                unsigned int i = 0;
                for (; i < reviewScore.size(); i++) {
                    if (docId == reviewScore[i].first) {
                        break;
                    }
                }

                if (i == reviewScore.size()) {
                    reviewScore.push_back(
                            std::pair<unsigned int, double>(docId, 0.0)); // This review is not in the review result, add into review results.
                }
            }
            ivsFile.close();
        }
    }

    EV << "effective review set size: " << reviewScore.size() << std::endl;

    rankingScore(&reviewScore, queryMessage);

    setRankingResult(MAX_QUERY_REPLY_BUSINESS, queryReplyMessage, &reviewScore);

    return;
}

void QueryScore::setRankingResult(int maxResults, QueryReply* queryReplyMessage,
        std::vector<std::pair<unsigned int, double> >* reviewScore) {
    std::vector<std::pair<unsigned int, double> >::iterator it =
            reviewScore->begin();
    vecQueryReply replyBusinesses_var;
    for (int i = 0; i < maxResults; i++) {
        Json::Value root = readReviewJson(docMap[(it + i)->first].docOffset);
        QueryReplyMessage reply;
        reply.textReview = root["text_review"].asString();
        reply.businessName = root["business_name"].asString();
        reply.rate = root["rate"].asDouble();
        queryReplyMessage->getReplyBusinesses().push_back(reply);
    }
    return;
}

void QueryScore::rankingScore(
        std::vector<std::pair<unsigned int, double> >* reviewsScore,
        Query* queryMessage) {
    float alpha = 0.5;  // weight parameter for distance score
    float beta = 0.5;   // weight parameter for text score
    float charley = 0.8;    // weight parameter for rating score
    double maxDis = 0;
    double maxText = 0;
    double maxRating = 5;
    std::map<unsigned int, double> disScoreset; // Use to store distance score and normalised by max distance later
    std::map<unsigned int, double> textScoreSet; // Use to store distance score and normalised by max text score later
    std::map<unsigned int, double> ratings;
    for (std::vector<std::pair<unsigned int, double> >::iterator it =
            reviewsScore->begin(); it != reviewsScore->end(); it++) {
        // Read the corresponding json data of this review into memory
        Json::Value root = readReviewJson(docMap[it->first].docOffset);
        EV << "Processing review: " << root["hash_value"].asString()
                  << std::endl;

        Coord businessCoord(root["longitude"].asDouble(),
                root["latitude"].asDouble());
        double disScore = getDistanceScore(businessCoord,
                queryMessage->getPeerLocation());
        if (maxDis < disScore) {
            maxDis = disScore;
        }
        disScoreset.insert(
                std::pair<unsigned int, double>(it->first, disScore));

        double textScore = getTextScore(it, queryMessage);
        if (maxText < textScore) {
            maxText = textScore;
        }
        textScoreSet.insert(
                std::pair<unsigned int, double>(it->first, textScore));
        //double reviewScore = textScore * root["rating"].asDouble() / maxText;
        EV << "Dis socre: " << disScore << " text score: " << textScore
                  << std::endl << std::endl;

        ratings.insert(
                std::pair<unsigned int, double>(it->first,
                        root["rating"].asDouble()));
    }

    for (std::vector<std::pair<unsigned int, double> >::iterator it =
            reviewsScore->begin(); it != reviewsScore->end(); it++) {
        if (maxDis && maxText && maxRating) {
            it->second = disScoreset[it->first] / maxDis
                    + textScoreSet[it->first] / maxText
                    + ratings[it->first] / maxRating;
        }
    }

    struct scoreCompare {
        bool operator ()(std::pair<unsigned int, double>& a,
                std::pair<unsigned int, double>& b) {
            return (a.second > b.second);
        }
    } t_scoreCompare;

    std::sort(reviewsScore->begin(), reviewsScore->end(), t_scoreCompare);

    for (std::vector<std::pair<unsigned int, double> >::iterator it =
            reviewsScore->begin(); it != reviewsScore->end(); it++) {
        EV << "hash_value: " << it->first << " score: " << it->second
                  << std::endl;
    }
    return;
}

/*
 * The ranking formula is
 * S = 1/N * sum(fdt / docFreq)
 * N is the number of keywords
 * sum is the word in keywords
 * fdt is the within review word frequency
 * docFreq is the review frequency of the word
 * */
double QueryScore::getTextScore(
        const std::vector<std::pair<unsigned int, double> >::iterator& it_review,
        Query* queryMessage) {
    int N = queryMessage->getKeyWords().keywords.size(); // number of query word in the keywords collection
    double score = 0;
    for (std::vector<std::string>::iterator it =
            queryMessage->getKeyWords().keywords.begin();
            it != queryMessage->getKeyWords().keywords.end(); it++) {
        if (lexiconMap.find(*it) != lexiconMap.end()) {
            Lexicon& term = lexiconMap[*it];
            int docFreq = term.docFrequency;
            long pos = term.location;
            std::ifstream ivsFile(INVERTED_LIST_FILE_PATH);
            ivsFile.seekg(pos + sizeof(int), ivsFile.beg); // Jump to the relavant start position
            for (int j = 0; j < docFreq; j++) {
                unsigned int docId;
                ivsFile.read((char*) &docId, sizeof(int));
                int fdt;    // Within document frequency
                ivsFile.read((char*) &fdt, sizeof(int));
                if (docId == it_review->first) {
                    score += (double) fdt / docFreq;
                    break;
                }
            }
            ivsFile.close();
        }
    }
    score = score / N;
    return score;
}

Json::Value QueryScore::readReviewJson(long line_number) {
    Json::Value root;
    Json::Reader reader;

    std::ifstream jsonFile(REVIEW_JSON_DATASET);
    // Jump to specific line
    jsonFile.seekg(jsonFile.beg);
    for (int i = 1; i <= line_number; ++i) {
        jsonFile.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    }

    std::string line;
    getline(jsonFile, line);
    reader.parse(line, root, false);
    jsonFile.close();
    return root;
}

double QueryScore::getDistanceScore(Coord& a, Coord& b) {
    return a.distance(b);
}

