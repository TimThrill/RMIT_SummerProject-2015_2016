/*
 * QueryReplyMessage.h
 *
 *  Created on: 23 Dec 2015
 *      Author: admin
 */

#ifndef QUERYREPLYMESSAGE_H_
#define QUERYREPLYMESSAGE_H_

#include <string>

#include "Coord.h"

typedef struct queryReplyMessage {
    std::string businessId;
    std::string businessName;
    std::string businessType;
    Coord businessLocation;
    double distance;    /* Distance from the user to the business */
    std::string businessAddress;
    double rate;
    std::string textReview;
} QueryReplyMessage;



#endif /* QUERYREPLYMESSAGE_H_ */
