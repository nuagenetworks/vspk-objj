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

@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUWANServicesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUPortsFetcher.j"
@import "Fetchers/NUVsgRedundantPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NURedundancyGroupEntityScope_ENTERPRISE = @"ENTERPRISE";
NURedundancyGroupEntityScope_GLOBAL = @"GLOBAL";
NURedundancyGroupPermittedAction_ALL = @"ALL";
NURedundancyGroupPermittedAction_DEPLOY = @"DEPLOY";
NURedundancyGroupPermittedAction_EXTEND = @"EXTEND";
NURedundancyGroupPermittedAction_INSTANTIATE = @"INSTANTIATE";
NURedundancyGroupPermittedAction_READ = @"READ";
NURedundancyGroupPermittedAction_USE = @"USE";
NURedundancyGroupPersonality_DC7X50 = @"DC7X50";
NURedundancyGroupPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NURedundancyGroupPersonality_NSG = @"NSG";
NURedundancyGroupPersonality_OTHER = @"OTHER";
NURedundancyGroupPersonality_VRSG = @"VRSG";
NURedundancyGroupPersonality_VSA = @"VSA";
NURedundancyGroupPersonality_VSG = @"VSG";
NURedundancyGroupRedundantGatewayStatus_FAILED = @"FAILED";
NURedundancyGroupRedundantGatewayStatus_SUCCESS = @"SUCCESS";


/*!
    Represents Redundant Group formed by two Gateways.
*/
@implementation NURedundancyGroup : NURESTObject
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
        The gateway configuration owner in this Redundant Group. when Redundant Group is deleted this gateway will recieve vport associations 
    */
    CPString _gatewayPeer1ID @accessors(property=gatewayPeer1ID);
    /*!
        The gateway   configuration owner name in this Redundant Group
    */
    CPString _gatewayPeer1Name @accessors(property=gatewayPeer1Name);
    /*!
        The Auto Discovered Gateway  peer in this Redundant Group
    */
    CPString _gatewayPeer2AutodiscoveredGatewayID @accessors(property=gatewayPeer2AutodiscoveredGatewayID);
    /*!
        The gateway peer in this Redundant Group. when Redundant Group is deleted this gateway will not recieve vport associations
    */
    CPString _gatewayPeer2ID @accessors(property=gatewayPeer2ID);
    /*!
        The gateway peer name in this Redundant Group
    */
    CPString _gatewayPeer2Name @accessors(property=gatewayPeer2Name);
    /*!
        The status of  Redundant Group, possible values are FAILED, SUCCESS Possible values are FAILED, SUCCESS, .
    */
    CPString _redundantGatewayStatus @accessors(property=redundantGatewayStatus);
    /*!
        The permitted  action to USE/EXTEND  this Gateway Possible values are USE, READ, ALL, INSTANTIATE, EXTEND, DEPLOY, .
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        derived personality of the Redundancy Group - VSG,VRSG,NSG,OTHER Possible values are VSG, VSA, VRSG, DC7X50, NSG, HARDWARE_VTEP, OTHER, .
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
        Represent the system ID or the Virtual IP of a service used by a Gateway (VSG for now) to establish a tunnel with a remote VSG or hypervisor.  The format of this field is consistent with an IP address.
    */
    CPString _vtep @accessors(property=vtep);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUWANServicesFetcher _childrenWANServices @accessors(property=childrenWANServices);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUPortsFetcher _childrenPorts @accessors(property=childrenPorts);
    NUVsgRedundantPortsFetcher _childrenVsgRedundantPorts @accessors(property=childrenVsgRedundantPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"redundancygroup";
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
        [self exposeLocalKeyPathToREST:@"gatewayPeer1ID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1Name"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2AutodiscoveredGatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2ID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2Name"];
        [self exposeLocalKeyPathToREST:@"redundantGatewayStatus"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"vtep"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenWANServices = [NUWANServicesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenPorts = [NUPortsFetcher fetcherWithParentObject:self];
        _childrenVsgRedundantPorts = [NUVsgRedundantPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end