/*
 * ExtractDataset.h
 *
 *  Created on: 23 Dec 2015
 *      Author: admin
 */


#ifndef EXTRACTDATASET_H_
#define EXTRACTDATASET_H_

#include <string>
#include <map>

#include "Business.h"

class ExtractDataset {
public:
    /*
     * Map for business list, include their review.
     * The key is: userId
     * */
    std::multimap<int, Business> businessList;

    int readDataset(std::string path);
};



#endif /* EXTRACTDATASET_H_ */
