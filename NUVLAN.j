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
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUIKEGatewayConnectionsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUUplinkConnectionsFetcher.j"
@import "Fetchers/NUBRConnectionsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NULtestatisticsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVLANAssociatedConnectionType_BR_CONNECTION = @"BR_CONNECTION";
NUVLANAssociatedConnectionType_UPLINK_CONNECTION = @"UPLINK_CONNECTION";
NUVLANEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVLANEntityScope_GLOBAL = @"GLOBAL";
NUVLANPermittedAction_ALL = @"ALL";
NUVLANPermittedAction_DEPLOY = @"DEPLOY";
NUVLANPermittedAction_EXTEND = @"EXTEND";
NUVLANPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUVLANPermittedAction_READ = @"READ";
NUVLANPermittedAction_USE = @"USE";
NUVLANStatus_INITIALIZED = @"INITIALIZED";
NUVLANStatus_MISMATCH = @"MISMATCH";
NUVLANStatus_ORPHAN = @"ORPHAN";
NUVLANStatus_READY = @"READY";
NUVLANType_ACCESS = @"ACCESS";
NUVLANType_BR = @"BR";
NUVLANType_DUC = @"DUC";
NUVLANType_UPLINK = @"UPLINK";


/*!
    VLANs are Virtual Local Area Networks. They allow to differentiate several traffic flows inside a single Port. A VLAN with a value set to 0 can be used to tell the system to not use any tagging.
*/
@implementation NUVLAN : NURESTObject
{
    /*!
        value of VLAN
    */
    CPNumber _value @accessors(property=value);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The Gateway associated with this  VLAN. This is a read only attribute
    */
    CPString _gatewayID @accessors(property=gatewayID);
    /*!
        Determines whether this entity is read only.  Read only objects cannot be modified or deleted.
    */
    BOOL _readonly @accessors(property=readonly);
    /*!
        The ID of the template that this Port was created from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the VLAN instance.
    */
    CPString _description @accessors(property=description);
    /*!
        Determines whether this entity can be used in associations with other properties.
    */
    BOOL _restricted @accessors(property=restricted);
    /*!
        A flag to mark this instance of a VLAN as a candidate to be a termination point of a Shunt Link.  Only VLANs residing on a Network Port can have this attribute set to true.
    */
    BOOL _shuntVLAN @accessors(property=shuntVLAN);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The Vport associated with this VLAN. This is a read only attribute
    */
    CPString _vportID @accessors(property=vportID);
    /*!
        Indicates if the VLAN is used as an uplink.
    */
    BOOL _isUplink @accessors(property=isUplink);
    /*!
        Determines whether to use the defined mnemonic for this VLAN instance.
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        User mnemonic of the VLAN instance.
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    /*!
        The ID of the associated BGP profile
    */
    CPString _associatedBGPProfileID @accessors(property=associatedBGPProfileID);
    /*!
        Specifies the type of Connection (uplink, BR) associated to this VLAN instance.
    */
    CPString _associatedConnectionType @accessors(property=associatedConnectionType);
    /*!
        ID of the Egress QOS Policy associated with this VLAN.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        ID of the Ingress Overlay QoS Policer associated with this VLAN.
    */
    CPString _associatedIngressOverlayQoSPolicerID @accessors(property=associatedIngressOverlayQoSPolicerID);
    /*!
        ID of the Ingress QoS Policy / Tunnel Shaper associated with this VLAN.
    */
    CPString _associatedIngressQOSPolicyID @accessors(property=associatedIngressQOSPolicyID);
    /*!
        ID of the Ingress Underlay QoS Policer associated with this VLAN.
    */
    CPString _associatedIngressUnderlayQoSPolicerID @accessors(property=associatedIngressUnderlayQoSPolicerID);
    /*!
        Associated uplink connection ID
    */
    CPString _associatedUplinkConnectionID @accessors(property=associatedUplinkConnectionID);
    /*!
        The associated VSC profile for the uplink VLANS. This should be only be valid for the uplinks
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    /*!
        Status of the VLAN.
    */
    CPString _status @accessors(property=status);
    /*!
        When set to true, this specifies that this VLAN instance serves as an underlay connection endpoint on an NSG-UBR gateway.
    */
    BOOL _ducVlan @accessors(property=ducVlan);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        This type marks a VLAN for its utility.
    */
    CPString _type @accessors(property=type);
    
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUIKEGatewayConnectionsFetcher _childrenIKEGatewayConnections @accessors(property=childrenIKEGatewayConnections);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUUplinkConnectionsFetcher _childrenUplinkConnections @accessors(property=childrenUplinkConnections);
    NUBRConnectionsFetcher _childrenBRConnections @accessors(property=childrenBRConnections);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NULtestatisticsFetcher _childrenLtestatistics @accessors(property=childrenLtestatistics);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vlan";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"value"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayID"];
        [self exposeLocalKeyPathToREST:@"readonly"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"restricted"];
        [self exposeLocalKeyPathToREST:@"shuntVLAN"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"vportID"];
        [self exposeLocalKeyPathToREST:@"isUplink"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedBGPProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedConnectionType"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressOverlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressUnderlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedUplinkConnectionID"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"ducVlan"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayConnections = [NUIKEGatewayConnectionsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenUplinkConnections = [NUUplinkConnectionsFetcher fetcherWithParentObject:self];
        _childrenBRConnections = [NUBRConnectionsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenLtestatistics = [NULtestatisticsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end