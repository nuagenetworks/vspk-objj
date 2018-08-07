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
@import "Fetchers/NUShuntLinksFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NURedundantPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUNSRedundantGatewayGroupEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSRedundantGatewayGroupEntityScope_GLOBAL = @"GLOBAL";
NUNSRedundantGatewayGroupPermittedAction_ALL = @"ALL";
NUNSRedundantGatewayGroupPermittedAction_DEPLOY = @"DEPLOY";
NUNSRedundantGatewayGroupPermittedAction_EXTEND = @"EXTEND";
NUNSRedundantGatewayGroupPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSRedundantGatewayGroupPermittedAction_READ = @"READ";
NUNSRedundantGatewayGroupPermittedAction_USE = @"USE";
NUNSRedundantGatewayGroupPersonality_DC7X50 = @"DC7X50";
NUNSRedundantGatewayGroupPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUNSRedundantGatewayGroupPersonality_NSG = @"NSG";
NUNSRedundantGatewayGroupPersonality_NSGBR = @"NSGBR";
NUNSRedundantGatewayGroupPersonality_NSGDUC = @"NSGDUC";
NUNSRedundantGatewayGroupPersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUNSRedundantGatewayGroupPersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUNSRedundantGatewayGroupPersonality_OTHER = @"OTHER";
NUNSRedundantGatewayGroupPersonality_VRSB = @"VRSB";
NUNSRedundantGatewayGroupPersonality_VRSG = @"VRSG";
NUNSRedundantGatewayGroupPersonality_VSA = @"VSA";
NUNSRedundantGatewayGroupPersonality_VSG = @"VSG";
NUNSRedundantGatewayGroupRedundantGatewayStatus_FAILED = @"FAILED";
NUNSRedundantGatewayGroupRedundantGatewayStatus_SUCCESS = @"SUCCESS";


/*!
    Represents Redundant Group formed by two VNS Gateways.
*/
@implementation NUNSRedundantGatewayGroup : NURESTObject
{
    /*!
        Name of the Redundancy Group 
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The Auto Discovered Gateway configuration owner in this Redundant Group. 
    */
    CPString _gatewayPeer1AutodiscoveredGatewayID @accessors(property=gatewayPeer1AutodiscoveredGatewayID);
    /*!
        Indicates status of the authoritative gateway of this Redundancy Group.
    */
    BOOL _gatewayPeer1Connected @accessors(property=gatewayPeer1Connected);
    /*!
        The gateway configuration owner in this Redundant Group. when Redundant Group is deleted this gateway will recieve vport associations 
    */
    CPString _gatewayPeer1ID @accessors(property=gatewayPeer1ID);
    /*!
        The name of the authoritative gateway owning the configuration for the Redundant Group
    */
    CPString _gatewayPeer1Name @accessors(property=gatewayPeer1Name);
    /*!
        The Auto Discovered Gateway configuration for the secondary gateway in this Redundant Group.
    */
    CPString _gatewayPeer2AutodiscoveredGatewayID @accessors(property=gatewayPeer2AutodiscoveredGatewayID);
    /*!
        Indicates status of the secondary gateway of this Redundancy Group.
    */
    BOOL _gatewayPeer2Connected @accessors(property=gatewayPeer2Connected);
    /*!
        The gateway peer in this Redundant Group. when Redundant Group is deleted this gateway will not recieve vport associations
    */
    CPString _gatewayPeer2ID @accessors(property=gatewayPeer2ID);
    /*!
        The secondary gateway peer name in this Redundant Group.
    */
    CPString _gatewayPeer2Name @accessors(property=gatewayPeer2Name);
    /*!
        Heartbeat interval in milliseconds to declare the neighbor as dead.
    */
    CPNumber _heartbeatInterval @accessors(property=heartbeatInterval);
    /*!
        Heartbeat VLAN used for BFD.
    */
    CPNumber _heartbeatVLANID @accessors(property=heartbeatVLANID);
    /*!
        Collections resilient port IDs associated with this redundant group.
    */
    CPArrayController _redundancyPortIDs @accessors(property=redundancyPortIDs);
    /*!
        The status of the Redundant Group.
    */
    CPString _redundantGatewayStatus @accessors(property=redundantGatewayStatus);
    /*!
        The permitted action to USE/EXTEND this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Derived personality of the Redundancy Group.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the Redundancy Group
    */
    CPString _description @accessors(property=description);
    /*!
        The enterprise associated with this Redundant Group. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Consecutive failure count.  Supported value is 3.
    */
    CPNumber _consecutiveFailuresCount @accessors(property=consecutiveFailuresCount);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUShuntLinksFetcher _childrenShuntLinks @accessors(property=childrenShuntLinks);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NURedundantPortsFetcher _childrenRedundantPorts @accessors(property=childrenRedundantPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsgredundancygroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1AutodiscoveredGatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1Connected"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1ID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1Name"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2AutodiscoveredGatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2Connected"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2ID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2Name"];
        [self exposeLocalKeyPathToREST:@"heartbeatInterval"];
        [self exposeLocalKeyPathToREST:@"heartbeatVLANID"];
        [self exposeLocalKeyPathToREST:@"redundancyPortIDs"];
        [self exposeLocalKeyPathToREST:@"redundantGatewayStatus"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"consecutiveFailuresCount"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenShuntLinks = [NUShuntLinksFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenRedundantPorts = [NURedundantPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end