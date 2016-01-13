/*
 * MyApplicationLayer.cpp
 *
 *  Created on: Dec 14, 2015
 *      Author: cheetah
 */

#include <MyApplicationLayer.h>

#include "NetwControlInfo.h"
#include "SimpleAddress.h"
#include "ApplPkt_m.h"
#include "AddressingInterface.h"
#include "FindModule.h"
#include "ExtractDataset.h"
#include "Constant.h"
#include "Util.h"

Define_Module(MyApplicationLayer);

const int MyApplicationLayer::INITIAL_BEACON_NODES_NUMBER = 1;

// Constructor
MyApplicationLayer::MyApplicationLayer() : BaseApplLayer(), delayTimer(NULL), beaconExpiredTimer(NULL), queryExpiredTimer(NULL) {
    m.lock();
    queryPeerList = new std::queue<LAddress::L3Type>();
    m.unlock();
}

//Destructor
MyApplicationLayer::~MyApplicationLayer() {
    // TODO Auto-generated destructor stub
    delete queryPeerList;
}

void MyApplicationLayer::initialize(int stage) {
    EV<<"initiallize start"<<std::endl;
    BaseApplLayer::initialize(stage);
    EV<<"stage: "<<stage<<std::endl;
    if(stage == 0) {
        hasPar("coreDebug") ? coreDebug = par("coreDebug").boolValue() : coreDebug = false;
        EV<<"initialized"<<std::endl;

        // Set source ip address
        srcAddress = getNode()->getId();

        // Read dataset
        extractMessage.readDataset("/home/cheetah/Desktop/Sub_of_Ports_in_Las_Vegas_new.txt");

        // Initial beacon message rules
        querySendRounds = 0;
        if(queryNodeNumber < INITIAL_BEACON_NODES_NUMBER) { // Still have node to send beacon message
            // Initilistion for query rounds
            lamda = par("lamda");   // Set lamda parameter for poisson function
            // Get sim_time_limit value from ini file
            const char *s = ev.getConfig()->getConfigValue("sim-time-limit");
            int simulationTime = MAX_SIM_TIME; //convert from s

            if (s != NULL) // if max_sim_time is set in ini file
            {

                char secondNo[10]; // to store string s without 's' (second symbol) appendix
                strncpy(secondNo, s, strlen(s) - 1);
                secondNo[strlen(s) - 1]='\0';
                simulationTime = atoi(secondNo);
                EV<<"simulation time: "<<simulationTime;

            } // otherwise use the default MAX_SIM_TIME value

            // assume that we have max_sim_time value, now calculate no of queries N coming to this node as a poisson random number
            queryTimes = poisson(lamda * simulationTime);

            if (queryTimes < 0)
            {
                queryTimes = 0;
            }

            EV<<"Total query times of this node: "<<queryTimes<<std::endl;


            if(querySendRounds < queryTimes) {  // query send round is not reached query times, send beacon to query
                delayTimer = new cMessage( "delay-timer", SEND_BEACON_TIMER );
                scheduleAt(simTime() + uniform(0, 1) * QUERY_FREQUENCY, delayTimer);
                querySendRounds++;
                queryNodeNumber++;
            }
        }
        // Register the finish signal
        finishSignal = registerSignal("finish");
        reply = registerSignal("reply");
    }
    else if(stage==1) {
        //scheduleAt(simTime() + dblrand() * 10, delayTimer);
    }
    EV<<"Finish initialized"<<std::endl;
}

void MyApplicationLayer::handleBeaconExpiredTimer() {
    EV<<"Cancel and delete beacon timer: "<<std::endl;
    cancelAndDelete(beaconExpiredTimer);
    beaconExpiredTimer = NULL;
    sendBeacon();
}

void MyApplicationLayer::handleQueryExpiredTimer() {
    EV<<"Cancel and delete query timer"<<std::endl;
    cancelAndDelete(queryExpiredTimer);
    queryExpiredTimer = NULL;
    m.lock();
    unsigned int n = 0;
    unsigned int listSize = queryPeerList->size();
    for(; n < listSize; n++) {
        LAddress::L3Type address = queryPeerList->front();  // Get the first peer address
        sendQuery(address);
        EV<<"Resend query message to peer: "<<address<<std::endl;
    }
    m.unlock();
}

/**
 * A timer with kind = SEND_PEER_QUERY_TIMER indicates that a new
 * peer query has to be send (@ref sendBroadcast).
 *
 *
 * sendPeerQuery
 **/
void MyApplicationLayer::handleSelfMsg(cMessage *msg) {
    switch( msg->getKind() ) {
    case SEND_BEACON_TIMER:
        EV<<"Receive send beacon signal"<<std::endl;
        sendBeacon();
        delete msg;
        delayTimer = NULL;
        break;
    case SEND_BEACON_EXPIRED_TIMER:
        EV<<"Receive send beacon expired timer signal"<<std::endl;
        handleBeaconExpiredTimer();
    case SEND_QUERY_EXPIRED_TIMER:
        EV<<"Receive send query expired timer signal"<<std::endl;
        handleQueryExpiredTimer();
    default:
        EV << "Unknown selfmessage! ->, kind: "<<msg->getKind()<<std::endl;
        delete msg;
        break;
    }
}


/**
 * This function creates a new peer query message and sends it down to
 * the network layer
 **/
void MyApplicationLayer::sendBeacon() {
    Beacon *beaconMessage = new Beacon("BEACON_MESSAGE", BEACON_MESSAGE);

    beaconMessage->setSrcAddr(srcAddress);
    EV<<"Send beacon from: "<<srcAddress<<std::endl;

    // we use the host modules getIndex() as a appl address
    beaconMessage->setBitLength(headerLength);

    // set the control info to tell the network layer the layer 3
    // address;
    NetwControlInfo::setControlInfo(beaconMessage, LAddress::L3BROADCAST );

    // Set beacon expired timer for send message
    if(!beaconExpiredTimer) { // No previous expired timer, create new one
        beaconExpiredTimer = new cMessage("Beacon Expired Timer", SEND_BEACON_EXPIRED_TIMER);
        scheduleAt(simTime() + MESSAGE_EXPIRE_TIME, beaconExpiredTimer);  // Add the expired timer into schedule
    }
    else {  // Already existed a beacon expired timer, delete previous and set a new one
        EV<<"Error: Already exited expired timer!"<<std::endl;
        cancelAndDelete(beaconExpiredTimer);  // Cancel and delete previous timer
        beaconExpiredTimer = NULL;  // Restore pointer to NULL
        EV<<"Cancel the previous timer and set a new timer at time: "<<simTime()<<std::endl;
        beaconExpiredTimer = new cMessage("Beacon Expired Timer", SEND_BEACON_EXPIRED_TIMER);   // Set a new timer
        scheduleAt(simTime() + MESSAGE_EXPIRE_TIME, beaconExpiredTimer);  // Add the beacon expired timer into schedule
    }

    EV<<"Node :"<<beaconMessage->getSrcAddr()<<" send broadcast beacon message"<<std::endl;
    coreEV << "Sending Beacon packet!" << endl;

    // Set start timer
    startTime = simTime();
    // Set send time stamp
    beaconMessage->setTimeStamp(simTime());

    sendDown( beaconMessage );
}

/**
 * This function handle received beacon message
 **/
void MyApplicationLayer::handleBeaconMessage(Beacon* msg) {
    // Set reply ip address
    EV<<"Node: "<<srcAddress<<"** receive beacon from node ip address: "<<msg->getSrcAddr()<<std::endl;

    // Record the latency time
    simtime_t latency = simTime() - msg->getTimeStamp();
    emit(reply, latency);
	EV<<"latency: "<<latency<<std::endl;

    BeaconReply *beaconReplyMessage = new BeaconReply("BEACON_REPLY_MESSAGE", BEACON_REPLY_MESSAGE);
    // Set peer distance
    Coord currentPeerLocation = beaconReplyMessage->getPeerLocation();
    beaconReplyMessage->setPeerDistance(currentPeerLocation.distance(msg->getSrcPosition()));

    // Set source ip address
    beaconReplyMessage->setSrcAddr(getNode()->getId());

    uint32_t replyIpAddress = msg->getSrcAddr();
    beaconReplyMessage->setDestAddr(replyIpAddress);

    // Set send time stamp
    beaconReplyMessage->setTimeStamp(simTime());

    // Send message
    sendBeaconReply(beaconReplyMessage);

    //delete(beaconReplyMessage);
}

/**
 * This function handle received beacon reply message
 **/
void MyApplicationLayer::handleBeaconReplyMessage(BeaconReply* msg) {
    EV<<"Node: "<<srcAddress<<"** receive beacon reply from node: "<<msg->getSrcAddr()<<std::endl;

    // Record the latency time
    simtime_t latency = simTime() - msg->getTimeStamp();
    emit(reply, latency);

    if(beaconExpiredTimer) {
        cancelAndDelete(beaconExpiredTimer); // Existed previous timer, cancle and delete because receive one beacon reply message
        beaconExpiredTimer = NULL;  // Restore pointer to NULL
        EV<<"After delete beacon expired timer, point to: "<<beaconExpiredTimer<<std::endl;
    } else {
        EV<<"Already delete previous send beacon expired timer"<<std::endl;
    }

    // Add the sender to the query list
    m.lock();
    if(queryPeerList) {
        queryPeerList->push(msg->getSrcAddr());
    } else {
        EV<<"Error: query peer list is null, cannot add peer!"<<std::endl;
    }

    EV<<"Add peer to query peer list, queue size: "<<queryPeerList->size()<<std::endl;
    m.unlock();

    // Send the query message
    sendQuery(msg->getSrcAddr());
}

void MyApplicationLayer::handleQueryMessage(Query* msg) {
    EV<<"Node: "<<srcAddress<<" receive query message from node: "<<msg->getSrcAddr()<<std::endl;

    // Record the latency time
    simtime_t latency = simTime() - msg->getTimeStamp();
    emit(reply, latency);
	EV<<"Latency: "<<latency<<std::endl;

    QueryReply* queryReplyMessage = new QueryReply("QUERY_REPLY_MESSAGE", QUERY_REPLY_MESSAGE);

    printReceivedQueryMessage(msg);

    setQueryReplyMessage(queryReplyMessage, msg);

    // Set query reply src address
    queryReplyMessage->setSrcAddr(srcAddress);

    // Set query reply ip address
    queryReplyMessage->setDestAddr(msg->getSrcAddr());

    sendQueryReply(queryReplyMessage);

    //delete(queryReplyMessage);
}

void MyApplicationLayer::handleQueryReplyMessage(QueryReply* msg) {
    EV<<"Node: "<<srcAddress<<" receive query reply message from node: "<<msg->getSrcAddr()<<std::endl;

    // Record the latency time
    simtime_t latency = simTime() - msg->getTimeStamp();
    //emit(reply, latency);

    if(queryExpiredTimer) {
        cancelAndDelete(queryExpiredTimer); // Existed previous timer, cancle and delete because receive one beacon reply message
        queryExpiredTimer = NULL;   // Restore pointer to null
        EV<<"After delete query expired timer, point to: "<<queryExpiredTimer<<std::endl;
    } else {
        EV<<"Already delete previous send query expired timer"<<std::endl;
    }

    // Test for print result
    std::vector<QueryReplyMessage>::iterator it = msg->getReplyBusinesses().begin();
    for(; it != msg->getReplyBusinesses().end(); it++) {
        EV<<"Result start: "<<std::endl;
        EV<<"Business name: "<<it->businessName<<std::endl;
        EV<<"Business id: "<<it->businessId<<std::endl;
        EV<<"Business type: "<<it->businessType<<std::endl;
        EV<<"Business address: "<<it->businessAddress<<std::endl;
        EV<<"Business location latitude: "<<it->businessLocation.y<<" longitude: "<<it->businessLocation.x<<std::endl;
        EV<<"Business distance"<<it->distance<<std::endl;
        EV<<"rate: "<<it->rate<<std::endl;
        EV<<"Text review: "<<it->textReview<<std::endl;
        EV<<"Result end"<<std::endl;
    }

    // Receive query reply from a peer, pop that peer from query peer list
    m.lock();
    if(queryPeerList->size() > 0) {
        queryPeerList->pop();
        EV<<"Pop peer from the peer list, query peer list size: "<<queryPeerList->size()<<std::endl;

        if((queryPeerList->size() == 0) && (querySendRounds == queryTimes)) {
            // This query node receive all the peers' query reply messages and finish its query round
            queryNodeNumber--;  // Reduce number of query node

            // All the query node finish their query, recording the simulation time
            simtime_t processingTime = simTime()- startTime;
            emit(finishSignal, processingTime);

            EV<<"After received query reply: Initial query node number: "<<queryNodeNumber<<std::endl;
            if(queryNodeNumber == 0) {
                // Finish the simulation
            }
        } else if(queryPeerList->size() == 0 && querySendRounds < queryTimes){
            // This round has been finished, start next query round
            delayTimer = new cMessage( "delay-timer", SEND_BEACON_TIMER );
            scheduleAt(simTime() + QUERY_FREQUENCY * uniform(0, 1), delayTimer);

            // All the query node finish their query, recording the simulation time
            simtime_t processingTime = simTime()- startTime;
            emit(finishSignal, processingTime);

            querySendRounds++;
        }
    } else {
        EV<<"Error: query peer list is null!"<<std::endl;
    }
    m.unlock();
    return;
}

void MyApplicationLayer::sendBeaconReply(BeaconReply* beaconReplyMessage) {
    beaconReplyMessage->setBitLength(headerLength);

    // set the control info to tell the network layer the layer 3
    // address;
    NetwControlInfo::setControlInfo(beaconReplyMessage, beaconReplyMessage->getDestAddr() );

    EV<<"Send beacon reply from Node :"<<beaconReplyMessage->getSrcAddr()<<std::endl;
    EV<<"Send beacon reply to Node: "<<beaconReplyMessage->getDestAddr()<<std::endl;

    coreEV << "Sending Beacon reply packet!" << endl;
    sendDown( beaconReplyMessage );
}

void MyApplicationLayer::sendQuery(LAddress::L3Type& destAddr) {
    Query* queryMessage = new Query("QUERY_MESSAGE", QUERY_MESSAGE);

    // Set business name
    queryMessage->setBusinessName("McDonals");
    // Set business type
    queryMessage->setBusinessType("Restaurant");

    // Set query key words
    std::string keyword1 = "good";
    std::string keyword2 = "credit";
    (queryMessage->getKeyWords()).keywords.push_back(keyword1);
    (queryMessage->getKeyWords()).keywords.push_back(keyword2);

    // Set business location
    // Read position from omnetpp.ini file
    queryMessage->setLongitude(par("longitude"));
    queryMessage->setLatitude(par("latitude"));

    // Set src address
    queryMessage->setSrcAddr(srcAddress);
    // Set query ip address
    queryMessage->setDestAddr(destAddr);

    queryMessage->setBitLength(headerLength);

    // set the control info to tell the network layer the layer 3
    // address;
    NetwControlInfo::setControlInfo(queryMessage, queryMessage->getDestAddr() );

    // Set expired timer for send message
    if(!queryExpiredTimer) { // No previous expired timer, create new one
        queryExpiredTimer = new cMessage("Expired Timer", SEND_QUERY_EXPIRED_TIMER);
        scheduleAt(simTime() + MESSAGE_EXPIRE_TIME, queryExpiredTimer);  // Add the expired timer into schedule
    }
    else {  // Already existed a expired timer, delete previous and set a new one
        EV<<"Error: Already existed query expired timer!"<<std::endl;
        cancelAndDelete(queryExpiredTimer);  // Cancel and delete previous timer
        queryExpiredTimer = NULL;
        EV<<"Cancel the previous query timer and set a new timer at time: "<<simTime()<<std::endl;
        queryExpiredTimer = new cMessage("Expired Timer", SEND_QUERY_EXPIRED_TIMER);   // Set a new timer
        scheduleAt(simTime() + MESSAGE_EXPIRE_TIME, queryExpiredTimer);  // Add the expired timer into schedule
    }

    // Set time stamp
    queryMessage->setTimeStamp(simTime());

    EV<<"Node: "<<queryMessage->getSrcAddr()<<" send query message to node: "<<queryMessage->getDestAddr()<<std::endl;
    coreEV << "Sending Query packet!" << endl;
    sendDown( queryMessage );
    //delete(queryMessage);
}

void MyApplicationLayer::sendQueryReply(QueryReply* queryReplyMessage) {
    queryReplyMessage->setBitLength(headerLength);

    // Set send time stamp
    queryReplyMessage->setTimeStamp(simTime());

    // set the control info to tell the network layer the layer 3
    // address;
    NetwControlInfo::setControlInfo(queryReplyMessage, queryReplyMessage->getDestAddr() );

    EV<<"Node: "<<queryReplyMessage->getSrcAddr()<<" send query reply message to node: "<<queryReplyMessage->getDestAddr()<<std::endl;

    coreEV << "Sending Query reply packet!" << endl;
    sendDown( queryReplyMessage );
}

void MyApplicationLayer::handleLowerMsg(cMessage* msg) {
    switch (msg->getKind()) {
    case BEACON_MESSAGE:
        EV<<"Receive beacon signal"<<std::endl;
        handleBeaconMessage(static_cast<Beacon*>(msg));
        delete msg;
        break;
    case BEACON_REPLY_MESSAGE:
        EV<<"Receive beacon reply signal"<<std::endl;
        handleBeaconReplyMessage(static_cast<BeaconReply*>(msg));
        delete msg;
        break;
    case QUERY_MESSAGE:
        EV<<"Receive query signal"<<std::endl;
        handleQueryMessage(static_cast<Query*>(msg));
        delete msg;
        break;
    case QUERY_REPLY_MESSAGE:
        EV<<"Receive query reply signal"<<std::endl;
        handleQueryReplyMessage(static_cast<QueryReply*>(msg));
        delete msg;
        break;
    default:
        EV<<"Unknown message type!!!! Delete message"<<std::endl;
        delete msg;
        break;
    }
}

/**
 * Get the data from dataset and asset into query reply message
 * */
QueryReply* MyApplicationLayer::setQueryReplyMessage(QueryReply* queryReplyMessage, Query* queryMessage) {
    EV<<"Set query reply message start"<<std::endl;
    QueryReplyMessage mQueryReply = {};
    //for(; it != queryReplyMessage->getReplyBusinesses().end(); it++)
    //{
    mQueryReply.businessId = (extractMessage.businessList.begin()->second).businessId;
    mQueryReply.businessName = (extractMessage.businessList.begin()->second).businessName;
    mQueryReply.businessLocation.x = (extractMessage.businessList.begin()->second).longitude;
    mQueryReply.businessLocation.y = (extractMessage.businessList.begin()->second).latitude;
    mQueryReply.distance = getDistance((extractMessage.businessList.begin()->second).longitude,
            queryMessage->getLongitude(),
            (extractMessage.businessList.begin()->second).latitude,
            queryMessage->getLatitude());
    mQueryReply.businessType = "Restaurant";
    mQueryReply.businessAddress = (extractMessage.businessList.begin()->second).address;
    mQueryReply.rate = (extractMessage.businessList.begin()->second).rating;
    mQueryReply.textReview = (extractMessage.businessList.begin()->second).textReview;
    //}
    queryReplyMessage->getReplyBusinesses().push_back(mQueryReply);

    // Test attributes and categories
    std::map<std::string, std::string>::iterator it = (extractMessage.businessList.begin()->second).attributes.begin();
    EV<<"######attributes start######"<<std::endl;
    while(it != (extractMessage.businessList.begin()->second).attributes.end()) {
        EV<<it->first<<": "<<it->second<<std::endl;
        it++;
    }
    EV<<"######attributes end######"<<std::endl;
    EV<<"Categories: "<<(extractMessage.businessList.begin()->second).categories.at(0)<<std::endl;
    EV<<"Set query reply message end"<<std::endl;
    return queryReplyMessage;
}

void MyApplicationLayer::printReceivedQueryMessage(Query* msg) {
    EV<<"Received query message start:"<<std::endl;
    EV<<"Business name: "<<msg->getBusinessName()<<std::endl;
    EV<<"Business type: "<<msg->getBusinessType();
    Keywords &keywords = msg->getKeyWords();
    EV<<"Query keywords: ";
    std::vector<std::string>::iterator it = keywords.keywords.begin();
    while(it != keywords.keywords.end()) {
        EV<<*it<<" ";
        it++;
    }
    EV<<std::endl;
    EV<<"Longitude: "<<msg->getLongitude()<<" Latitude: "<<msg->getLatitude()<<std::endl;
    EV<<"Max range: "<<msg->getMaxRange()<<"m"<<std::endl;
    EV<<"Received query message end"<<std::endl;
    return;
}
