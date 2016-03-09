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

@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNSPortsFetcher.j"
@import "Fetchers/NUPortsFetcher.j"
@import "Fetchers/NUWANServicesFetcher.j"

NUAutoDiscoveredGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUAutoDiscoveredGatewayEntityScope_GLOBAL = @"GLOBAL";
NUAutoDiscoveredGatewayPersonality_DC7X50 = @"DC7X50";
NUAutoDiscoveredGatewayPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUAutoDiscoveredGatewayPersonality_NSG = @"NSG";
NUAutoDiscoveredGatewayPersonality_OTHER = @"OTHER";
NUAutoDiscoveredGatewayPersonality_VRSG = @"VRSG";
NUAutoDiscoveredGatewayPersonality_VSA = @"VSA";
NUAutoDiscoveredGatewayPersonality_VSG = @"VSG";


/*!
    Represents Auto discovered Gateway.
*/
@implementation NUAutoDiscoveredGateway : NURESTObject
{
    /*!
        Controllers to which this gateway instance is associated with.
    */
    CPArrayController _controllers @accessors(property=controllers);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The Gateway associated with this  Auto Discovered Gateway  . This is a read only attribute
    */
    CPString _gatewayID @accessors(property=gatewayID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        The System ID of the peer gateway associated with this Gateway instance when it is discovered by the network manager (VSD) as being redundant.
    */
    CPString _peer @accessors(property=peer);
    /*!
        Personality of the Gateway - VSG,VRSG,NONE,OTHER, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Identifier of the Gateway
    */
    CPString _systemID @accessors(property=systemID);
    /*!
        Represent the system ID or the Virtual IP of a service used by a Gateway (VSG for now) to establish a tunnel with a remote VSG or hypervisor.  The format of this field is consistent with an IP address.
    */
    CPString _vtep @accessors(property=vtep);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    NUPortsFetcher _childrenPorts @accessors(property=childrenPorts);
    NUWANServicesFetcher _childrenWANServices @accessors(property=childrenWANServices);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"autodiscoveredgateway";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"controllers"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"gatewayID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"peer"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        [self exposeLocalKeyPathToREST:@"vtep"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        _childrenPorts = [NUPortsFetcher fetcherWithParentObject:self];
        _childrenWANServices = [NUWANServicesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end