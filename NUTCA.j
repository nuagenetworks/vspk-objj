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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUTCAAction_ALERT = @"Alert";
NUTCAAction_ALERT_ADD_NETWORK_MACRO = @"Alert_Add_Network_Macro";
NUTCAAction_ALERT_ADD_POLICY_GROUP = @"Alert_Add_Policy_Group";
NUTCAAction_ALERT_POLICYGROUPCHANGE = @"Alert_PolicyGroupChange";
NUTCAEntityScope_ENTERPRISE = @"ENTERPRISE";
NUTCAEntityScope_GLOBAL = @"GLOBAL";
NUTCAMetric_ACL_DENY_EVENT_COUNT = @"ACL_DENY_EVENT_COUNT";
NUTCAMetric_ANTI_SPOOF_EVENT_COUNT = @"ANTI_SPOOF_EVENT_COUNT";
NUTCAMetric_BYTES_IN = @"BYTES_IN";
NUTCAMetric_BYTES_OUT = @"BYTES_OUT";
NUTCAMetric_FIP_PRE_RATE_LIMIT_BYTES = @"FIP_PRE_RATE_LIMIT_BYTES";
NUTCAMetric_FIP_PRE_RATE_LIMIT_PACKETS = @"FIP_PRE_RATE_LIMIT_PACKETS";
NUTCAMetric_FIP_RATE_LIMIT_DROPPED_BYTES = @"FIP_RATE_LIMIT_DROPPED_BYTES";
NUTCAMetric_FIP_RATE_LIMIT_DROPPED_PACKETS = @"FIP_RATE_LIMIT_DROPPED_PACKETS";
NUTCAMetric_HIGH_RISK_IP_ACCESS_EVENT_COUNT = @"HIGH_RISK_IP_ACCESS_EVENT_COUNT";
NUTCAMetric_IDP_EVENT_COUNT = @"IDP_EVENT_COUNT";
NUTCAMetric_L7_BYTES_IN = @"L7_BYTES_IN";
NUTCAMetric_L7_BYTES_OUT = @"L7_BYTES_OUT";
NUTCAMetric_L7_PACKETS_IN = @"L7_PACKETS_IN";
NUTCAMetric_L7_PACKETS_OUT = @"L7_PACKETS_OUT";
NUTCAMetric_MEDIUM_RISK_IP_ACCESS_EVENT_COUNT = @"MEDIUM_RISK_IP_ACCESS_EVENT_COUNT";
NUTCAMetric_PACKETS_DROPPED_BY_RATE_LIMIT = @"PACKETS_DROPPED_BY_RATE_LIMIT";
NUTCAMetric_PACKETS_IN = @"PACKETS_IN";
NUTCAMetric_PACKETS_IN_DROPPED = @"PACKETS_IN_DROPPED";
NUTCAMetric_PACKETS_IN_ERROR = @"PACKETS_IN_ERROR";
NUTCAMetric_PACKETS_OUT = @"PACKETS_OUT";
NUTCAMetric_PACKETS_OUT_DROPPED = @"PACKETS_OUT_DROPPED";
NUTCAMetric_PACKETS_OUT_ERROR = @"PACKETS_OUT_ERROR";
NUTCAMetric_PORT_SCAN_PORT_COUNT = @"PORT_SCAN_PORT_COUNT";
NUTCAMetric_PORT_SWEEP_IP_COUNT = @"PORT_SWEEP_IP_COUNT";
NUTCAMetric_TCP_FLAG_ACK_IN = @"TCP_FLAG_ACK_IN";
NUTCAMetric_TCP_FLAG_ACK_OUT = @"TCP_FLAG_ACK_OUT";
NUTCAMetric_TCP_FLAG_NULL_IN = @"TCP_FLAG_NULL_IN";
NUTCAMetric_TCP_FLAG_NULL_OUT = @"TCP_FLAG_NULL_OUT";
NUTCAMetric_TCP_FLAG_RST_IN = @"TCP_FLAG_RST_IN";
NUTCAMetric_TCP_FLAG_RST_OUT = @"TCP_FLAG_RST_OUT";
NUTCAMetric_TCP_FLAG_SYN_IN = @"TCP_FLAG_SYN_IN";
NUTCAMetric_TCP_FLAG_SYN_OUT = @"TCP_FLAG_SYN_OUT";
NUTCAType_BREACH = @"BREACH";
NUTCAType_ROLLING_AVERAGE = @"ROLLING_AVERAGE";
NUTCAType_UNIQUE_COUNT = @"UNIQUE_COUNT";


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
        ID of the target VSD entity used by the TCA action
    */
    CPString _targetEntityID @accessors(property=targetEntityID);
    /*!
        Target policygroup used by the TCA action
    */
    CPString _targetPolicyGroupID @accessors(property=targetPolicyGroupID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
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
        Throttle time in seconds
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
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Count of the attempts by maintenanace thread to create/update watcher
    */
    CPNumber _count @accessors(property=count);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        The trigger interval of the ES watch corresponding to this TCA, in seconds
    */
    CPNumber _triggerInterval @accessors(property=triggerInterval);
    /*!
        This flag is used to indicate the status of TCA
    */
    BOOL _status @accessors(property=status);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The aggregation type for the metric over the selected period - Sum, Average or Unique Count
    */
    CPString _type @accessors(property=type);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
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
        [self exposeLocalKeyPathToREST:@"targetEntityID"];
        [self exposeLocalKeyPathToREST:@"targetPolicyGroupID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"period"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metric"];
        [self exposeLocalKeyPathToREST:@"threshold"];
        [self exposeLocalKeyPathToREST:@"throttleTime"];
        [self exposeLocalKeyPathToREST:@"disable"];
        [self exposeLocalKeyPathToREST:@"displayStatus"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"count"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"triggerInterval"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
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