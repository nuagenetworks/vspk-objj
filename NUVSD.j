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
@import "Fetchers/NUVSDComponentsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"

NUVSDEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVSDEntityScope_GLOBAL = @"GLOBAL";
NUVSDMode_CLUSTER = @"CLUSTER";
NUVSDMode_STANDALONE = @"STANDALONE";
NUVSDStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUVSDStatus_DOWN = @"DOWN";
NUVSDStatus_UP = @"UP";


/*!
    System Monitoring details for VSD.
*/
@implementation NUVSD : NURESTObject
{
    /*!
        An optional web url for management.
    */
    CPString _URL @accessors(property=URL);
    /*!
        An optional IP to access this component.
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
        An optional management IP to log into this component.
    */
    CPString _managementIP @accessors(property=managementIP);
    /*!
        An array of degraded messages.
    */
    CPArrayController _messages @accessors(property=messages);
    /*!
        Standalone or cluster mode.
    */
    CPString _mode @accessors(property=mode);
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
        A comma separated list of peer addresses, if it is in cluster mode.
    */
    CPString _peerAddresses @accessors(property=peerAddresses);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        Computed status of the entity.
    */
    CPString _status @accessors(property=status);
    /*!
        The duration the controller is unavailable (in millis).
    */
    CPNumber _unavailableTimestamp @accessors(property=unavailableTimestamp);
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUVSDComponentsFetcher _childrenVSDComponents @accessors(property=childrenVSDComponents);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vsd";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"URL"];
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
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"peerAddresses"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"unavailableTimestamp"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenVSDComponents = [NUVSDComponentsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end