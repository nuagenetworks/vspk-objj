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

@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUWANServicesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGatewayEntityScope_GLOBAL = @"GLOBAL";
NUGatewayPermittedAction_ALL = @"ALL";
NUGatewayPermittedAction_DEPLOY = @"DEPLOY";
NUGatewayPermittedAction_EXTEND = @"EXTEND";
NUGatewayPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUGatewayPermittedAction_READ = @"READ";
NUGatewayPermittedAction_USE = @"USE";
NUGatewayPersonality_DC7X50 = @"DC7X50";
NUGatewayPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUGatewayPersonality_NSG = @"NSG";
NUGatewayPersonality_OTHER = @"OTHER";
NUGatewayPersonality_VRSB = @"VRSB";
NUGatewayPersonality_VRSG = @"VRSG";
NUGatewayPersonality_VSA = @"VSA";
NUGatewayPersonality_VSG = @"VSG";


/*!
    Represents Gateway object.
*/
@implementation NUGateway : NURESTObject
{
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The Redundancy Gateway Group associated with this Gateway Instance. This is a read only attribute
    */
    CPString _redundancyGroupID @accessors(property=redundancyGroupID);
    /*!
        The System ID of the peer gateway associated with this Gateway instance when it is discovered by the network manager (VSD) as being redundant.
    */
    CPString _peer @accessors(property=peer);
    /*!
        The ID of the template that this Gateway was created from. This should be set when instantiating a Gateway
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Indicates that this gateway is pending state or state. When in pending state it cannot be modified from REST.
    */
    BOOL _pending @accessors(property=pending);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Personality of the Gateway, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        The enterprise associated with this Gateway. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        When set, VLAN-VNID mapping must be unique for all the vports of the gateway
    */
    BOOL _useGatewayVLANVNID @accessors(property=useGatewayVLANVNID);
    /*!
        Represent the system ID or the Virtual IP of a service used by a Gateway (VSG for now) to establish a tunnel with a remote VSG or hypervisor.  The format of this field is consistent with an IP address.
    */
    CPString _vtep @accessors(property=vtep);
    /*!
        The Auto Discovered Gateway associated with this Gateway Instance
    */
    CPString _autoDiscGatewayID @accessors(property=autoDiscGatewayID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Identifier of the Gateway, cannot be modified after creation
    */
    CPString _systemID @accessors(property=systemID);
    
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUWANServicesFetcher _childrenWANServices @accessors(property=childrenWANServices);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPortsFetcher _childrenPorts @accessors(property=childrenPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"gateway";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"redundancyGroupID"];
        [self exposeLocalKeyPathToREST:@"peer"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"pending"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"useGatewayVLANVNID"];
        [self exposeLocalKeyPathToREST:@"vtep"];
        [self exposeLocalKeyPathToREST:@"autoDiscGatewayID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenWANServices = [NUWANServicesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPorts = [NUPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _personality = @"VRSG";
        
    }

    return self;
}

@end