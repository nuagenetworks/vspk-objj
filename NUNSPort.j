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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUVLANsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NULTEInformationsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUNSPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSPortEntityScope_GLOBAL = @"GLOBAL";
NUNSPortNATTraversal_FULL_NAT = @"FULL_NAT";
NUNSPortNATTraversal_NONE = @"NONE";
NUNSPortNATTraversal_ONE_TO_ONE_NAT = @"ONE_TO_ONE_NAT";
NUNSPortPermittedAction_ALL = @"ALL";
NUNSPortPermittedAction_DEPLOY = @"DEPLOY";
NUNSPortPermittedAction_EXTEND = @"EXTEND";
NUNSPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSPortPermittedAction_READ = @"READ";
NUNSPortPermittedAction_USE = @"USE";
NUNSPortPortType_ACCESS = @"ACCESS";
NUNSPortPortType_NETWORK = @"NETWORK";
NUNSPortSpeed_AUTONEGOTIATE = @"AUTONEGOTIATE";
NUNSPortSpeed_BASET10 = @"BASET10";
NUNSPortSpeed_BASET1000 = @"BASET1000";
NUNSPortSpeed_BASETX100 = @"BASETX100";
NUNSPortSpeed_BASEX10G = @"BASEX10G";
NUNSPortStatus_INITIALIZED = @"INITIALIZED";
NUNSPortStatus_MISMATCH = @"MISMATCH";
NUNSPortStatus_ORPHAN = @"ORPHAN";
NUNSPortStatus_READY = @"READY";


/*!
    Represents a Port of a particular NS Gateway object.
*/
@implementation NUNSPort : NURESTObject
{
    /*!
        Enum value that states the type of NAT Traversal the NSG instance will use to talk to other NSGs and the Internet. (This field is deprecated in 5.0)
    */
    CPString _NATTraversal @accessors(property=NATTraversal);
    /*!
        VLAN Range of the Port. Format must conform to a-b,c,d-f where a,b,c,d,f are integers between 0 and 4094.
    */
    CPString _VLANRange @accessors(property=VLANRange);
    /*!
        Name of the Port
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The ID of the template that this Port was created from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The permitted action to USE/EXTEND this NSG Port.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the Port
    */
    CPString _description @accessors(property=description);
    /*!
        Identifies a Port instance on which a VLAN is shunted.  Ports of type Network are the only one that supports being in Shunt mode. Shunted ports are only relevant when NSGs are in redundant mode.
    */
    BOOL _shuntPort @accessors(property=shuntPort);
    /*!
        Identifier of the Port
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        If enabled, probes will be sent to other NSGs and DTLS sessions for IPSEC and VXLAN will be set up to the VSCs. If disabled, no NAT probes are sent on that uplink and no DTLS sessions are set up to the VSCs.
    */
    BOOL _enableNATProbes @accessors(property=enableNATProbes);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Type of the Port.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Port Speed in Mb/s :  Supported Ethernet speeds are 10 (10Base-T), 100 (Fast-ethernet 100Base-TX), 1000 (Gigabit Ethernet 1000Base-T), 10 000 (10 Gigabit Ethernet 10GBase-X), and Auto-Negotiate.
    */
    CPString _speed @accessors(property=speed);
    /*!
        If enabled, cuts down the number of probes to just the number of provisioned DUCs.
    */
    BOOL _TrafficThroughUBROnly @accessors(property=TrafficThroughUBROnly);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Determines whether to use user mnemonic of the NSG Port
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        user mnemonic of the Port
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    /*!
        ID of the Egress QoS Policy associated with this NSG Port.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        ID of the redundant port to which the Port is associated to.
    */
    CPString _associatedRedundantPortID @accessors(property=associatedRedundantPortID);
    /*!
        Status of the port.
    */
    CPString _status @accessors(property=status);
    /*!
        Port MTU (Maximum Transmission Unit) :  The size in octets of the largest protocol data unit (PDU) that the layer can pass on.  The default value is normally 1500 octets for Ethernet v2 and can go up to 9198 for Jumbo Frames.
    */
    CPNumber _mtu @accessors(property=mtu);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NULTEInformationsFetcher _childrenLTEInformations @accessors(property=childrenLTEInformations);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"NATTraversal"];
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"shuntPort"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableNATProbes"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"speed"];
        [self exposeLocalKeyPathToREST:@"TrafficThroughUBROnly"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedRedundantPortID"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"mtu"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenLTEInformations = [NULTEInformationsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end