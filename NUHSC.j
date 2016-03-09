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

@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUBGPPeersFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUMonitoringPortsFetcher.j"
@import "Fetchers/NUVRSsFetcher.j"

NUHSCEntityScope_ENTERPRISE = @"ENTERPRISE";
NUHSCEntityScope_GLOBAL = @"GLOBAL";
NUHSCStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUHSCStatus_DOWN = @"DOWN";
NUHSCStatus_UP = @"UP";
NUHSCType_DC7X50 = @"DC7X50";
NUHSCType_NONE = @"NONE";
NUHSCType_VSA = @"VSA";
NUHSCType_VSG = @"VSG";


/*!
    System Monitoring details for hardware service controllers.
*/
@implementation NUHSC : NURESTObject
{
    /*!
        The IP of the VRS entity
    */
    CPString _address @accessors(property=address);
    /*!
        Flag to indicate that it is already marked a unavailable.
    */
    BOOL _alreadyMarkedForUnavailable @accessors(property=alreadyMarkedForUnavailable);
    /*!
        Average CPU usage percentage.
    */
    CPNumber _averageCPUUsage @accessors(property=averageCPUUsage);
    /*!
        Average memory usage percentage.
    */
    CPNumber _averageMemoryUsage @accessors(property=averageMemoryUsage);
    /*!
        Current CPU usage percentage.
    */
    CPNumber _currentCPUUsage @accessors(property=currentCPUUsage);
    /*!
        Current memory usage percentage.
    */
    CPNumber _currentMemoryUsage @accessors(property=currentMemoryUsage);
    /*!
        Description of the entity.
    */
    CPString _description @accessors(property=description);
    /*!
        Set of disk usage details.
    */
    CPArrayController _disks @accessors(property=disks);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Last state change timestamp (in millis).
    */
    CPNumber _lastStateChange @accessors(property=lastStateChange);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Identifies the entity to be associated with a location.
    */
    CPString _location @accessors(property=location);
    /*!
        The management IP of the VSC/HSC entity
    */
    CPString _managementIP @accessors(property=managementIP);
    /*!
        An array of degraded messages.
    */
    CPArrayController _messages @accessors(property=messages);
    /*!
        The model of the hardware service controller
    */
    CPString _model @accessors(property=model);
    /*!
        Identifies the entity with a name.
    */
    CPString _name @accessors(property=name);
    /*!
        Peek CPU usage percentage.
    */
    CPNumber _peakCPUUsage @accessors(property=peakCPUUsage);
    /*!
        Peek memory usage percentage.
    */
    CPNumber _peakMemoryUsage @accessors(property=peakMemoryUsage);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        Computed status of the entity. Possible values are UP, DOWN, ADMIN_DOWN, .
    */
    CPString _status @accessors(property=status);
    /*!
        The type of the hardware service controller.
    */
    CPString _type @accessors(property=type);
    /*!
        The duration the controller is unavailable (in millis).
    */
    CPNumber _unavailableTimestamp @accessors(property=unavailableTimestamp);
    /*!
        A collection of VSD id(s) which are identified by this controller.
    */
    CPArrayController _vsds @accessors(property=vsds);
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUBGPPeersFetcher _childrenBGPPeers @accessors(property=childrenBGPPeers);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUMonitoringPortsFetcher _childrenMonitoringPorts @accessors(property=childrenMonitoringPorts);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"hsc";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"alreadyMarkedForUnavailable"];
        [self exposeLocalKeyPathToREST:@"averageCPUUsage"];
        [self exposeLocalKeyPathToREST:@"averageMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"currentCPUUsage"];
        [self exposeLocalKeyPathToREST:@"currentMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"disks"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"location"];
        [self exposeLocalKeyPathToREST:@"managementIP"];
        [self exposeLocalKeyPathToREST:@"messages"];
        [self exposeLocalKeyPathToREST:@"model"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"type"];
        [self exposeLocalKeyPathToREST:@"unavailableTimestamp"];
        [self exposeLocalKeyPathToREST:@"vsds"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenBGPPeers = [NUBGPPeersFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenMonitoringPorts = [NUMonitoringPortsFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end