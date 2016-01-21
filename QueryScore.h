/*
 * QueryScore.h
 *
 *  Created on: Jan 16, 2016
 *      Author: cheetah
 */

#ifndef QUERYSCORE_H_
#define QUERYSCORE_H_

#include "QueryReply_m.h"
#include "Query_m.h"
#include "ExtractDataset.h"
#include "MyApplicationLayer.h"
#include "Coord.h"

class QueryScore {
public:
void getRankingResult(QueryReply* queryReplyMessage,
        Query* queryMessage,
        std::vector<Business>& myReviews);

float rankingScore(Business&, std::vector<std::string>, std::string);

double getDistanceScore(Coord& a, Coord&b);
};


#endif /* QUERYSCORE_H_ */
