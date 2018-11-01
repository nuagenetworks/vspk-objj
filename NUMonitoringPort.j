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
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUMonitoringPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NUMonitoringPortEntityScope_GLOBAL = @"GLOBAL";
NUMonitoringPortResiliencyState_BACKUP = @"backup";
NUMonitoringPortResiliencyState_MASTER = @"master";
NUMonitoringPortResiliencyState_NONE = @"none";
NUMonitoringPortState_ADMIN_DOWN = @"ADMIN_DOWN";
NUMonitoringPortState_DOWN = @"DOWN";
NUMonitoringPortState_UP = @"UP";


/*!
    Encapsulates the port information for system monitoring entity.
*/
@implementation NUMonitoringPort : NURESTObject
{
    /*!
        Name for the port.
    */
    CPString _name @accessors(property=name);
    /*!
        Last port state change timestamp.
    */
    CPNumber _lastStateChange @accessors(property=lastStateChange);
    /*!
        Flag to indicate that it is a access port or network port.
    */
    BOOL _access @accessors(property=access);
    /*!
        Optional port description.
    */
    CPString _description @accessors(property=description);
    /*!
        None
    */
    CPString _resiliencyState @accessors(property=resiliencyState);
    /*!
        Flag to indicate if an ACCESS port is resilient or not.
    */
    BOOL _resilient @accessors(property=resilient);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Flag to indicate if an ACCESS port is DPDK Enabled or not.
    */
    BOOL _dpdkEnabled @accessors(property=dpdkEnabled);
    /*!
        Flag to indicate that is an uplink or downlink port.
    */
    BOOL _uplink @accessors(property=uplink);
    /*!
        The current state of the port.
    */
    CPString _state @accessors(property=state);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"monitoringport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"access"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"resiliencyState"];
        [self exposeLocalKeyPathToREST:@"resilient"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"dpdkEnabled"];
        [self exposeLocalKeyPathToREST:@"uplink"];
        [self exposeLocalKeyPathToREST:@"state"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end