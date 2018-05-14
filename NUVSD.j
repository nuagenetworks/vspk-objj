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
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUVSDComponentsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVSDEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVSDEntityScope_GLOBAL = @"GLOBAL";
NUVSDMode_CLUSTER = @"CLUSTER";
NUVSDMode_STANDALONE = @"STANDALONE";
NUVSDStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUVSDStatus_DOWN = @"DOWN";
NUVSDStatus_UP = @"UP";


/*!
    System Monitoring details for VSD. This is deprecated and no longer provided through the Nuage API. This information can now be gathered through the Monit API.
*/
@implementation NUVSD : NURESTObject
{
    /*!
        An optional web url for management.
    */
    CPString _URL @accessors(property=URL);
    /*!
        Identifies the entity with a name.
    */
    CPString _name @accessors(property=name);
    /*!
        An optional management IP to log into this component.
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
        An optional IP to access this component.
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
        A comma separated list of peer addresses, if it is in cluster mode.
    */
    CPString _peerAddresses @accessors(property=peerAddresses);
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
        Standalone or cluster mode.
    */
    CPString _mode @accessors(property=mode);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
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
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUVSDComponentsFetcher _childrenVSDComponents @accessors(property=childrenVSDComponents);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
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
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managementIP"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"peerAddresses"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"messages"];
        [self exposeLocalKeyPathToREST:@"disks"];
        [self exposeLocalKeyPathToREST:@"alreadyMarkedForUnavailable"];
        [self exposeLocalKeyPathToREST:@"unavailableTimestamp"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"location"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"currentCPUUsage"];
        [self exposeLocalKeyPathToREST:@"currentMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"averageCPUUsage"];
        [self exposeLocalKeyPathToREST:@"averageMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenVSDComponents = [NUVSDComponentsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end