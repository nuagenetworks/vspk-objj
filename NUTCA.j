/*
  Copyright (c) 2015, Alcatel-Lucent Inc
  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
      * Redistributions of source code must retain the above copyright
        notice, this list of conditions and the following disclaimer.
      * Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.
      * Neither the name of the copyright holder nor the names of its contributors
        may be used to endorse or promote products derived from this software without
        specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

@import <Foundation/Foundation.j>
@import <AppKit/CPArrayController.j>
@import <Bambou/NURESTObject.j>

@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUTCAAction_ALERT = @"ALERT";
NUTCAAction_ALERT_POLICYGROUPCHANGE = @"ALERT_POLICYGROUPCHANGE";
NUTCAEntityScope_ENTERPRISE = @"ENTERPRISE";
NUTCAEntityScope_GLOBAL = @"GLOBAL";
NUTCAMetric_ACL_DENY_EVENT_COUNT = @"ACL_DENY_EVENT_COUNT";
NUTCAMetric_ADDRESS_MAP_EGRESS_BYTE_CNT = @"ADDRESS_MAP_EGRESS_BYTE_CNT";
NUTCAMetric_ADDRESS_MAP_EGRESS_PKT_CNT = @"ADDRESS_MAP_EGRESS_PKT_CNT";
NUTCAMetric_ADDRESS_MAP_INGRESS_BYTE_CNT = @"ADDRESS_MAP_INGRESS_BYTE_CNT";
NUTCAMetric_ADDRESS_MAP_INGRESS_PKT_CNT = @"ADDRESS_MAP_INGRESS_PKT_CNT";
NUTCAMetric_ANTI_SPOOF_EVENT_COUNT = @"ANTI_SPOOF_EVENT_COUNT";
NUTCAMetric_BYTES_IN = @"BYTES_IN";
NUTCAMetric_BYTES_OUT = @"BYTES_OUT";
NUTCAMetric_CONNECTION_TYPE = @"CONNECTION_TYPE";
NUTCAMetric_EGRESS_BYTE_COUNT = @"EGRESS_BYTE_COUNT";
NUTCAMetric_EGRESS_PACKET_COUNT = @"EGRESS_PACKET_COUNT";
NUTCAMetric_FIP_PRE_RATE_LIMIT_BYTES = @"FIP_PRE_RATE_LIMIT_BYTES";
NUTCAMetric_FIP_PRE_RATE_LIMIT_PACKETS = @"FIP_PRE_RATE_LIMIT_PACKETS";
NUTCAMetric_FIP_RATE_LIMIT_DROPPED_BYTES = @"FIP_RATE_LIMIT_DROPPED_BYTES";
NUTCAMetric_FIP_RATE_LIMIT_DROPPED_PACKETS = @"FIP_RATE_LIMIT_DROPPED_PACKETS";
NUTCAMetric_INGRESS_BYTE_COUNT = @"INGRESS_BYTE_COUNT";
NUTCAMetric_INGRESS_PACKET_COUNT = @"INGRESS_PACKET_COUNT";
NUTCAMetric_L7_BYTES_IN = @"L7_BYTES_IN";
NUTCAMetric_L7_BYTES_OUT = @"L7_BYTES_OUT";
NUTCAMetric_L7_PACKETS_IN = @"L7_PACKETS_IN";
NUTCAMetric_L7_PACKETS_OUT = @"L7_PACKETS_OUT";
NUTCAMetric_PACKETS_DROPPED_BY_RATE_LIMIT = @"PACKETS_DROPPED_BY_RATE_LIMIT";
NUTCAMetric_PACKETS_IN = @"PACKETS_IN";
NUTCAMetric_PACKETS_IN_DROPPED = @"PACKETS_IN_DROPPED";
NUTCAMetric_PACKETS_IN_ERROR = @"PACKETS_IN_ERROR";
NUTCAMetric_PACKETS_OUT = @"PACKETS_OUT";
NUTCAMetric_PACKETS_OUT_DROPPED = @"PACKETS_OUT_DROPPED";
NUTCAMetric_PACKETS_OUT_ERROR = @"PACKETS_OUT_ERROR";
NUTCAMetric_Q0_BYTES = @"Q0_BYTES";
NUTCAMetric_Q0_DROPPED = @"Q0_DROPPED";
NUTCAMetric_Q0_PKT_COUNT = @"Q0_PKT_COUNT";
NUTCAMetric_Q10_BYTES = @"Q10_BYTES";
NUTCAMetric_Q10_DROPPED = @"Q10_DROPPED";
NUTCAMetric_Q10_PKT_COUNT = @"Q10_PKT_COUNT";
NUTCAMetric_Q1_BYTES = @"Q1_BYTES";
NUTCAMetric_Q1_DROPPED = @"Q1_DROPPED";
NUTCAMetric_Q1_PKT_COUNT = @"Q1_PKT_COUNT";
NUTCAMetric_Q2_BYTES = @"Q2_BYTES";
NUTCAMetric_Q2_DROPPED = @"Q2_DROPPED";
NUTCAMetric_Q2_PKT_COUNT = @"Q2_PKT_COUNT";
NUTCAMetric_Q3_BYTES = @"Q3_BYTES";
NUTCAMetric_Q3_DROPPED = @"Q3_DROPPED";
NUTCAMetric_Q3_PKT_COUNT = @"Q3_PKT_COUNT";
NUTCAMetric_Q4_BYTES = @"Q4_BYTES";
NUTCAMetric_Q4_DROPPED = @"Q4_DROPPED";
NUTCAMetric_Q4_PKT_COUNT = @"Q4_PKT_COUNT";
NUTCAMetric_RX_BYTES = @"RX_BYTES";
NUTCAMetric_RX_DROPPED = @"RX_DROPPED";
NUTCAMetric_RX_ERRORS = @"RX_ERRORS";
NUTCAMetric_RX_PKT_COUNT = @"RX_PKT_COUNT";
NUTCAMetric_TCP_FLAG_ACK_IN = @"TCP_FLAG_ACK_IN";
NUTCAMetric_TCP_FLAG_NULL_IN = @"TCP_FLAG_NULL_IN";
NUTCAMetric_TCP_FLAG_NULL_OUT = @"TCP_FLAG_NULL_OUT";
NUTCAMetric_TCP_FLAG_RST_IN = @"TCP_FLAG_RST_IN";
NUTCAMetric_TCP_FLAG_RST_OUT = @"TCP_FLAG_RST_OUT";
NUTCAMetric_TCP_FLAG_SYN_IN = @"TCP_FLAG_SYN_IN";
NUTCAMetric_TCP_FLAG_SYN_OUT = @"TCP_FLAG_SYN_OUT";
NUTCAMetric_TCP_SYN_EVENT_COUNT = @"TCP_SYN_EVENT_COUNT";
NUTCAMetric_TX_BYTES = @"TX_BYTES";
NUTCAMetric_TX_DROPPED = @"TX_DROPPED";
NUTCAMetric_TX_ERRORS = @"TX_ERRORS";
NUTCAMetric_TX_PKT_COUNT = @"TX_PKT_COUNT";
NUTCAType_BREACH = @"BREACH";
NUTCAType_ROLLING_AVERAGE = @"ROLLING_AVERAGE";


/*!
    Provides the definition of the Threshold Control Alarms.
*/
@implementation NUTCA : NURESTObject
{
    /*!
        URL endpoint to post Alarm data to when TCA is triggered
    */
    CPString _URLEndPoint @accessors(property=URLEndPoint);
    /*!
        The name of the TCA
    */
    CPString _name @accessors(property=name);
    /*!
        Target policygroup when TCA is triggered
    */
    CPString _targetPolicyGroupID @accessors(property=targetPolicyGroupID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Action to be taken when TCA is fired - Alert or PolicyGroupChange
    */
    CPString _action @accessors(property=action);
    /*!
        The averaging period
    */
    CPNumber _period @accessors(property=period);
    /*!
        Description of the TCA
    */
    CPString _description @accessors(property=description);
    /*!
        The metric associated with the TCA.
    */
    CPString _metric @accessors(property=metric);
    /*!
        The threshold that must be exceeded before an alarm is issued
    */
    CPNumber _threshold @accessors(property=threshold);
    /*!
        Throttle time in secs
    */
    CPNumber _throttleTime @accessors(property=throttleTime);
    /*!
        This flag is used to indicate whether the watch(TCA) is enabled/disabled
    */
    BOOL _disable @accessors(property=disable);
    /*!
        Explanation of the TCA status
    */
    CPString _displayStatus @accessors(property=displayStatus);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Count of the attempts by maintenanace thread to create/update watcher
    */
    CPNumber _count @accessors(property=count);
    /*!
        This flag is used to indicate the status of TCA
    */
    BOOL _status @accessors(property=status);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Rolling average or sequence of samples over the averaging period.
    */
    CPString _type @accessors(property=type);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"tca";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"URLEndPoint"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"targetPolicyGroupID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"period"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metric"];
        [self exposeLocalKeyPathToREST:@"threshold"];
        [self exposeLocalKeyPathToREST:@"throttleTime"];
        [self exposeLocalKeyPathToREST:@"disable"];
        [self exposeLocalKeyPathToREST:@"displayStatus"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"count"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _scope = @"LOCAL";
        _metric = @"BYTES_IN";
        _type = @"ROLLING_AVERAGE";
        
    }

    return self;
}

@end