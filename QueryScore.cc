/*
 * QueryScore.cc
 *
 *  Created on: Jan 16, 2016
 *      Author: cheetah
 */
#include "QueryScore.h"

void QueryScore::getRankingResult(QueryReply* queryReplyMessage,
        Query* queryMessage,
        std::vector<Business>& myReviews)
{
    // Return value
    std::vector<std::pair<double, Business> > businessScore;
    std::vector<Business>::iterator it = myReviews.begin();
    while(it != myReviews.end()) {
        Coord businessCoord(it->longitude, it->latitude);
        double distanceScore = getDistanceScore(queryMessage->getPeerLocation(), businessCoord);
        double ratingScore = it->rating;
        double score = distanceScore + ratingScore;
        EV<<"business id: "<<it->businessId<<"  Score: "<<score<<std::endl;
        if(businessScore.size() < 3) {
            businessScore.push_back(std::pair<double, Business>(score, *it));
        }
        else
        {
            std::vector<std::pair<double, Business> >::iterator min_it = businessScore.begin();
            for(std::vector<std::pair<double, Business> >::iterator it_b = businessScore.begin(); it_b != businessScore.end(); it_b++) {
                if(min_it->first > it_b->first)
                {
                    min_it = it_b;
                }
            }

            if(score > min_it->first)   // Remove the lowest score review from the result
            {
                businessScore.erase(min_it);
                businessScore.push_back(std::pair<double, Business>(score, *it));
            }
        }
        it++;
    }


    for(std::vector<std::pair<double, Business> >::iterator it_b = businessScore.begin(); it_b != businessScore.end(); it_b++) {
        QueryReplyMessage message = {it_b->second.businessId,
                it_b->second.businessName,
                std::string("type"),
                Coord(it_b->second.longitude, it_b->second.latitude),
                queryMessage->getPeerLocation().distance(Coord(it_b->second.longitude, it_b->second.latitude)),
                it_b->second.address,
                it_b->second.rating,
                it_b->second.textReview};
        queryReplyMessage->getReplyBusinesses().push_back(message);
    }
    return;
}

float QueryScore::rankingScore(Business& business, std::vector<std::string> keyWords, std::string business_name)
{
    float value = 0;
//    for(int i = 0; i < keyWords.size(); i++) {
//        Lexicon term = lexiconMap.get(queryList.get(i));
//        int ft = term.docFrequency;
//        CollectionFrequency doc = term.getFdt().get(docId);
//        if(doc != null) {   //Term exists in this document
//            int fdt = doc.getFdt();
//            value += (float)(Math.log(((documentNumber - ft + 0.5) / (ft + 0.5)))
//                    / Math.log(2)) * (((k1 + 1) * fdt) / (calculateK() + fdt));
//        }
//    }
    return value;
}


double QueryScore::getDistanceScore(Coord& a, Coord& b) {
    return a.distance(b);
}


