//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package p2p_wireless_wifi;

import org.mixim.base.modules.IBaseApplLayer;


//
// TODO auto-generated type
//
simple MyApplicationLayer like IBaseApplLayer
{
    parameters:
        // Parameter to record processing time
        @signal[finish](type="simtime_t");
        @statistic[processingTime](title="query processing time"; source="finish"; record=vector,stats; interpolationmode=none);
        @signal[reply](type="simtime_t");
        @statistic[latency](title="laytency"; source="reply"; record=vector,stats; interpolationmode=none);
        
        //Declareation for the cpp file
        @class(MyApplicationLayer);
        bool coreDebug = default(false); //debug switch for base class (TestApplLayer)
        bool debug = default(false); // debug switch
        int headerLength @unit("bit"); // length of the application message header (in bits)
        double longitude;	// Longitude of the node
        double latitude;	// Latitude of the node
        int initial_beacon_nodes_number;	// Number of nodes that send beacon messages
        double lamda;	// Parameter for poisson formula
        // string businessId;	// The id of query business

    gates:
        input lowerLayerIn; // from network layer
        output lowerLayerOut; // to network layer
        input lowerControlIn; // control from network layer
        output lowerControlOut; // control to network layer
}
