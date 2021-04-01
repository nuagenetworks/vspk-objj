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

@import "Fetchers/NUPATIPEntriesFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NUDefaultGatewaysFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUVMResyncsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUDHCPv6OptionsFetcher.j"
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUIKEGatewayConnectionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUContainerResyncsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUIPReservationsFetcher.j"
@import "Fetchers/NUProxyARPFiltersFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUSubnetDHCPRelayStatus_DISABLED = @"DISABLED";
NUSubnetDHCPRelayStatus_ENABLED = @"ENABLED";
NUSubnetDPI_DISABLED = @"DISABLED";
NUSubnetDPI_ENABLED = @"ENABLED";
NUSubnetDPI_INHERITED = @"INHERITED";
NUSubnetEncryption_DISABLED = @"DISABLED";
NUSubnetEncryption_ENABLED = @"ENABLED";
NUSubnetEncryption_INHERITED = @"INHERITED";
NUSubnetEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSubnetEntityScope_GLOBAL = @"GLOBAL";
NUSubnetEntityState_MARKED_FOR_DELETION = @"MARKED_FOR_DELETION";
NUSubnetEntityState_UNDER_CONSTRUCTION = @"UNDER_CONSTRUCTION";
NUSubnetIPType_DUALSTACK = @"DUALSTACK";
NUSubnetIPType_IPV4 = @"IPV4";
NUSubnetIPType_IPV6 = @"IPV6";
NUSubnetMaintenanceMode_DISABLED = @"DISABLED";
NUSubnetMaintenanceMode_ENABLED = @"ENABLED";
NUSubnetMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUSubnetMulticast_DISABLED = @"DISABLED";
NUSubnetMulticast_ENABLED = @"ENABLED";
NUSubnetMulticast_INHERITED = @"INHERITED";
NUSubnetPATEnabled_DISABLED = @"DISABLED";
NUSubnetPATEnabled_ENABLED = @"ENABLED";
NUSubnetPATEnabled_INHERITED = @"INHERITED";
NUSubnetResourceType_FLOATING = @"FLOATING";
NUSubnetResourceType_NSG_VNF = @"NSG_VNF";
NUSubnetResourceType_PUBLIC = @"PUBLIC";
NUSubnetResourceType_STANDARD = @"STANDARD";
NUSubnetUnderlayEnabled_DISABLED = @"DISABLED";
NUSubnetUnderlayEnabled_ENABLED = @"ENABLED";
NUSubnetUnderlayEnabled_INHERITED = @"INHERITED";
NUSubnetUseGlobalMAC_DISABLED = @"DISABLED";
NUSubnetUseGlobalMAC_ENABLED = @"ENABLED";
NUSubnetUseGlobalMAC_ENTERPRISE_DEFAULT = @"ENTERPRISE_DEFAULT";


/*!
    This is the definition of a subnet associated with a Zone.
*/
@implementation NUSubnet : NURESTObject
{
    /*!
        Indicates whether PAT is enabled for the subnets in this domain - ENABLED/DISABLED. Possible values are ENABLED, DISABLED. OR INHERITED
    */
    CPString _PATEnabled @accessors(property=PATEnabled);
    /*!
        None
    */
    CPString _DHCPRelayStatus @accessors(property=DHCPRelayStatus);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4, DUALSTACK or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        The IPv6 address of the gateway of this subnet
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        Indicates if EVPN capabilities are enabled for this subnet.
    */
    BOOL _EVPNEnabled @accessors(property=EVPNEnabled);
    /*!
        maintenanceMode is an enum that indicates if the SubNetwork is accepting VM activation requests.
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        Name of the current entity(Zone or zone template or subnet etc..) Valid characters are alphabets, numbers, space and hyphen( - ).
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
        The IP address of the gateway of this subnet
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        None
    */
    CPString _gatewayMACAddress @accessors(property=gatewayMACAddress);
    /*!
        This attribute specifies whether subnet is enabled with access restrictions. Note: Applicable to shared infrastructure enterprise subnets.
    */
    BOOL _accessRestrictionEnabled @accessors(property=accessRestrictionEnabled);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        Subnet will be advertised in Overlay and WAN BGP
    */
    BOOL _advertise @accessors(property=advertise);
    /*!
        The ID of the subnet template that this subnet object was derived from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The service ID used by the VSCs to identify this subnet
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        A description field provided by the user that identifies the subnet
    */
    CPString _description @accessors(property=description);
    /*!
        Defines the type of the subnet, PUBLIC,FLOATING,STANDARD OR NSG_VNF
    */
    CPString _resourceType @accessors(property=resourceType);
    /*!
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        IPv6 unicast address. Valid range is fe80::/64.
    */
    CPString _linkLocalAddress @accessors(property=linkLocalAddress);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Current Network's  globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _vnId @accessors(property=vnId);
    /*!
        Turn on or off DHCP for of IPV4 Addresses
    */
    BOOL _enableDHCPv4 @accessors(property=enableDHCPv4);
    /*!
        Turn on or off DHCP for IPv6 Addresses
    */
    BOOL _enableDHCPv6 @accessors(property=enableDHCPv6);
    /*!
        Determines whether or not IPSEC is enabled.
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Read Only Boolean flag to indicate whether underlay is enabled directly or indirectly
    */
    BOOL _underlay @accessors(property=underlay);
    /*!
        Indicates whether UNDERLAY is enabled for the subnets in this domain
    */
    CPString _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Enables ingress replication for the VNI.
    */
    BOOL _ingressReplicationEnabled @accessors(property=ingressReplicationEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Intermediate State of L2 Domain.
    */
    CPString _entityState @accessors(property=entityState);
    /*!
        PG ID for the subnet. This is unique per domain and will be in the range 1-4095
    */
    CPNumber _policyGroupID @accessors(property=policyGroupID);
    /*!
        The color encoded with a traffic engineering constraint such as minimum latency, hops, maximum bandwidth, etc. This is used for NFIX(Network Function Interconnect). Color is applicable only when the associated Domain's Tunnel Type is MPLSoUDP. Valid range is 1 - 4294967295. If 0 is provided, color will be derived from the associated Domain.
    */
    CPNumber _color @accessors(property=color);
    /*!
        Service ID or external label given to Domain
    */
    CPString _domainServiceLabel @accessors(property=domainServiceLabel);
    /*!
        Route distinguisher for this subnet that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target for this subnet that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Block subnet routes
    */
    BOOL _splitSubnet @accessors(property=splitSubnet);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
         When set, VRS will act as  ARP Proxy
    */
    BOOL _proxyARP @accessors(property=proxyARP);
    /*!
        7x50 VRRP IPv6 Backup Address. Valid range is fe80::/64.
    */
    CPString _vrrpIPv6BackupAddress @accessors(property=vrrpIPv6BackupAddress);
    /*!
        if this flag is enabled, the system configured globalMACAddress will be used as the gateway mac address
    */
    CPString _useGlobalMAC @accessors(property=useGlobalMAC);
    /*!
        The ID of the Multi Cast Channel Map  this Subnet/Subnet Template is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of public subnet that is associated with this subnet
    */
    CPString _associatedSharedNetworkResourceID @accessors(property=associatedSharedNetworkResourceID);
    /*!
        This value indicates whether dynamic address allocation is enabled or not. This will be applicable when subnet is in dual stack mode.
    */
    BOOL _dualStackDynamicIPAllocation @accessors(property=dualStackDynamicIPAllocation);
    /*!
        when set to true means public subnet under a public zone
    */
    BOOL _public @accessors(property=public);
    /*!
        Determines the VLANID for this associated Subnet.
    */
    CPNumber _subnetVLANID @accessors(property=subnetVLANID);
    /*!
        Boolean flag to indicate whether this is a Multi-homed subnet or not.
    */
    BOOL _multiHomeEnabled @accessors(property=multiHomeEnabled);
    /*!
        multicast is enum that indicates multicast policy on Subnet/Subnet Template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        CustomerID that is used by NETCONF MANAGER to identify this enterprise. This can be configured by root user.
    */
    CPNumber _customerID @accessors(property=customerID);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPATIPEntriesFetcher _childrenPATIPEntries @accessors(property=childrenPATIPEntries);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUDefaultGatewaysFetcher _childrenDefaultGateways @accessors(property=childrenDefaultGateways);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUVMResyncsFetcher _childrenVMResyncs @accessors(property=childrenVMResyncs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUDHCPv6OptionsFetcher _childrenDHCPv6Options @accessors(property=childrenDHCPv6Options);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUIKEGatewayConnectionsFetcher _childrenIKEGatewayConnections @accessors(property=childrenIKEGatewayConnections);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUContainerResyncsFetcher _childrenContainerResyncs @accessors(property=childrenContainerResyncs);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUIPReservationsFetcher _childrenIPReservations @accessors(property=childrenIPReservations);
    NUProxyARPFiltersFetcher _childrenProxyARPFilters @accessors(property=childrenProxyARPFilters);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"subnet";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"PATEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPRelayStatus"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"EVPNEnabled"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayMACAddress"];
        [self exposeLocalKeyPathToREST:@"accessRestrictionEnabled"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"advertise"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"resourceType"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"linkLocalAddress"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv4"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv6"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"underlay"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"ingressReplicationEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityState"];
        [self exposeLocalKeyPathToREST:@"policyGroupID"];
        [self exposeLocalKeyPathToREST:@"color"];
        [self exposeLocalKeyPathToREST:@"domainServiceLabel"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"splitSubnet"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"proxyARP"];
        [self exposeLocalKeyPathToREST:@"vrrpIPv6BackupAddress"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedNetworkResourceID"];
        [self exposeLocalKeyPathToREST:@"dualStackDynamicIPAllocation"];
        [self exposeLocalKeyPathToREST:@"public"];
        [self exposeLocalKeyPathToREST:@"subnetVLANID"];
        [self exposeLocalKeyPathToREST:@"multiHomeEnabled"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPATIPEntries = [NUPATIPEntriesFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenDefaultGateways = [NUDefaultGatewaysFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenVMResyncs = [NUVMResyncsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenDHCPv6Options = [NUDHCPv6OptionsFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayConnections = [NUIKEGatewayConnectionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainerResyncs = [NUContainerResyncsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenIPReservations = [NUIPReservationsFetcher fetcherWithParentObject:self];
        _childrenProxyARPFilters = [NUProxyARPFiltersFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _PATEnabled = @"INHERITED";
        _multicast = @"INHERITED";
        _IPType = @"IPV4";
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end