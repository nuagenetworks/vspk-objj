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
@import "Fetchers/NUBGPPeersFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMonitoringPortsFetcher.j"
@import "Fetchers/NUVRSsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVSCEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVSCEntityScope_GLOBAL = @"GLOBAL";
NUVSCStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUVSCStatus_DOWN = @"DOWN";
NUVSCStatus_UP = @"UP";


/*!
    System Monitoring details for VSC.
*/
@implementation NUVSC : NURESTObject
{
    /*!
        Identifies the entity with a name.
    */
    CPString _name @accessors(property=name);
    /*!
        The management IP of the VSC/HSC entity
    */
    CPString _managementIP @accessors(property=managementIP);
    /*!
        Last state change timestamp (in millis).
    */
    CPNumber _lastStateChange @accessors(property=lastStateChange);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The IP of the VRS entity
    */
    CPString _address @accessors(property=address);
    /*!
        Peek CPU usage percentage.
    */
    CPNumber _peakCPUUsage @accessors(property=peakCPUUsage);
    /*!
        Peek memory usage percentage.
    */
    CPNumber _peakMemoryUsage @accessors(property=peakMemoryUsage);
    /*!
        Description of the entity.
    */
    CPString _description @accessors(property=description);
    /*!
        An array of degraded messages.
    */
    CPArrayController _messages @accessors(property=messages);
    /*!
        Set of disk usage details.
    */
    CPArrayController _disks @accessors(property=disks);
    /*!
        Flag to indicate that it is already marked a unavailable.
    */
    BOOL _alreadyMarkedForUnavailable @accessors(property=alreadyMarkedForUnavailable);
    /*!
        The duration the controller is unavailable (in millis).
    */
    CPNumber _unavailableTimestamp @accessors(property=unavailableTimestamp);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Identifies the entity to be associated with a location.
    */
    CPString _location @accessors(property=location);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        A collection of VSD id(s) which are identified by this controller.
    */
    CPArrayController _vsds @accessors(property=vsds);
    /*!
        Computed status of the entity.
    */
    CPString _status @accessors(property=status);
    /*!
        Current CPU usage percentage.
    */
    CPNumber _currentCPUUsage @accessors(property=currentCPUUsage);
    /*!
        Current memory usage percentage.
    */
    CPNumber _currentMemoryUsage @accessors(property=currentMemoryUsage);
    /*!
        Average CPU usage percentage.
    */
    CPNumber _averageCPUUsage @accessors(property=averageCPUUsage);
    /*!
        Average memory usage percentage.
    */
    CPNumber _averageMemoryUsage @accessors(property=averageMemoryUsage);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBGPPeersFetcher _childrenBGPPeers @accessors(property=childrenBGPPeers);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMonitoringPortsFetcher _childrenMonitoringPorts @accessors(property=childrenMonitoringPorts);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vsc";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managementIP"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"messages"];
        [self exposeLocalKeyPathToREST:@"disks"];
        [self exposeLocalKeyPathToREST:@"alreadyMarkedForUnavailable"];
        [self exposeLocalKeyPathToREST:@"unavailableTimestamp"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"location"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"vsds"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"currentCPUUsage"];
        [self exposeLocalKeyPathToREST:@"currentMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"averageCPUUsage"];
        [self exposeLocalKeyPathToREST:@"averageMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPPeers = [NUBGPPeersFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMonitoringPorts = [NUMonitoringPortsFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end