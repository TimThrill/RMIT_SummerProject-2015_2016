/*
 * MyApplicationLayer.h
 *
 *  Created on: Dec 14, 2015
 *      Author: cheetah
 */

#ifndef MYAPPLICATIONLAYER_H_
#define MYAPPLICATIONLAYER_H_

#ifdef _WIN32
#include "stdint.h"
#endif

#include <queue>
#include <mutex>

#include "BaseApplLayer.h"
#include "MiXiMDefs.h"
#include "Beacon_m.h"
#include "BeaconReply_m.h"
#include "Query_m.h"
#include "QueryReply_m.h"
#include "ExtractDataset.h"

extern int queryNodeNumber;

class MyApplicationLayer: public BaseApplLayer {
public:
    //Constructor
    MyApplicationLayer();

    //Deconstructor
    virtual ~MyApplicationLayer();

    /** @brief Initialization of the module and some variables*/
    void initialize(int);

    /* The message type of application layer */
    enum messageType {
        SEND_BEACON_TIMER,
        BEACON_MESSAGE,
        BEACON_REPLY_MESSAGE,
        QUERY_MESSAGE,
        QUERY_REPLY_MESSAGE,
        SEND_BEACON_EXPIRED_TIMER,      // Timer for expiration period of sent message
        SEND_QUERY_EXPIRED_TIMER
    };

    // Source ip address
    long srcAddress;
    // Destination ip address
    long destAdress;

    // Extract message class
    ExtractDataset extractMessage;

    // We use poisson process to distribute query rounds of each peer node
    int queryTimes; // how many query rounds
    double lamda;   // parameter of poisson formula
    int querySendRounds; // Counter for how many query rounds


    // Initial number of peers that send query
    static const int INITIAL_BEACON_NODES_NUMBER;

private:

    /** @brief Copy constructor is not allowed.
     */
    MyApplicationLayer(const MyApplicationLayer&);
    /** @brief Assignment operator is not allowed.
     */
    MyApplicationLayer& operator=(const MyApplicationLayer&);

    std::queue<LAddress::L3Type> *queryPeerList;  // Address list of peers that return beacon reply message and shoudl send query message to

    std::mutex m;   // Mutex lock to ensure thread safe

    // Signal for recording the processing time of each simulation
    simsignal_t finishSignal;
    // signal for recording latency
    simsignal_t reply;
    simtime_t startTime;

protected:
    /** @brief Timer message for scheduling next message.*/
    cMessage *delayTimer;
    /** @brief Timer message for beacon expired period */
    cMessage *beaconExpiredTimer;
    /** @brief Timer message for query expired period */
    cMessage *queryExpiredTimer;
    /** @brief Enables debugging of this module.*/
    bool coreDebug;

    /** @brief Handle self messages such as timer... */
    void handleSelfMsg(cMessage*);
    /** @brief Handle beacon message */
    void handleBeaconMessage(Beacon*);
    /** @brief Handle beacon reply message */
    void handleBeaconReplyMessage(BeaconReply*);
    /** @brief Handle query message */
    void handleQueryMessage(Query*);
    /** @brief Handle query reply message */
    void handleQueryReplyMessage(QueryReply*);
    /** @brief Handle beacon expired timer */
    void handleBeaconExpiredTimer();
    /** @brief Handle query expired timer */
    void handleQueryExpiredTimer();
    /** @brief send a broadcast packet to all connected neighbors */
    void sendBeacon();
    /** @brief send beacon reply message */
    void sendBeaconReply(BeaconReply*);
    /** @brief send query message */
    void sendQuery(LAddress::L3Type& destAddr);
    /** @brief send query reply message */
    void sendQueryReply(QueryReply*);

    /**
     * @brief Handle messages from lower layer
     **/
    void handleLowerMsg(cMessage* msg);

    QueryReply* setQueryReplyMessage(QueryReply*, Query*);

    void printReceivedQueryMessage(Query*);
};

#endif /* MYAPPLICATIONLAYER_H_ */
