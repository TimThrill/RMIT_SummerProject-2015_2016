/*
 * QueryScore.cc
 *
 *  Created on: Jan 16, 2016
 *      Author: cheetah
 */
#include "QueryScore.h"

std::vector<Business> QueryScore::getRankingResult(QueryReply* queryReplyMessage,
        std::string business_id,
        std::vector<std::string> keyWords,
        std::string business_name) {
    std::vector<Business> businesses;

    std::map<std::string, Business>::iterator it = MyApplicationLayer::extractMessage.businessList.begin();

    while(it != MyApplicationLayer::extractMessage.businessList.end())
    {
        Business& business = it->second;
        if(business_id.compare(business.businessId) == 0)   // Are same business id
        {
            int score = rankingScore(business, keyWords, business_name);
        }
        it++;
    }
    return businesses;
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



