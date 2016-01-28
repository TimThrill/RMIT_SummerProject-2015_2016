/*
 * Constant.h
 *
 *  Created on: 26 Dec 2015
 *      Author: admin
 */

#ifndef CONSTANT_H_
#define CONSTANT_H_

#include <string>

const int MESSAGE_EXPIRE_TIME = 5; // Expiration time of send message
const int MAX_SIM_TIME = 10;    // Max simulation time @unit(s)
const int QUERY_FREQUENCY = 10;   // Query interval of each query round
const int INITIAL_BEACON_NODES_NUMBER = 10; // Initial number of node who send beacon messages
const std::string DATASET_PATH = "/home/cheetah/Desktop/new";
const int MAX_QUERY_REPLY_BUSINESS = 5; // The number of businesses in query reply messages
const std::string LEXICON_FILE_PATH = "/home/cheetah/Desktop/lexicon";   // The lexicon file contains all the terms in the collection and point to their position in the inverted list file
const std::string INVERTED_LIST_FILE_PATH = "/home/cheetah/Desktop/ivlist"; // The inverted list file records the docID and doc frequency of terms
const std::string DOCUMENT_MAP_FILE_PATH = "/home/cheetah/Desktop/map";  // The map file records the review id and corresponding line numbers in the json dataset file
const std::string REVIEW_JSON_DATASET = "/home/cheetah/Desktop/new"; // This file contains original review data


#endif /* CONSTANT_H_ */
