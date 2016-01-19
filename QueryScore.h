/*
 * QueryScore.h
 *
 *  Created on: Jan 16, 2016
 *      Author: cheetah
 */

#ifndef QUERYSCORE_H_
#define QUERYSCORE_H_

#include "QueryReply_m.h"
#include "ExtractDataset.h"
#include "MyApplicationLayer.h"

class QueryScore {
public:
std::vector<Business> getRankingResult(QueryReply* queryReplyMessage,
        std::string business_id,
        std::vector<std::string> keyWords,
        std::string business_name);

float rankingScore(Business&, std::vector<std::string>, std::string);
};


#endif /* QUERYSCORE_H_ */
