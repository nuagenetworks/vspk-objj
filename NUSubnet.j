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

@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NUVMResyncsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUIKEGatewayConnectionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUContainerResyncsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUIPReservationsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUSubnetDHCPRelayStatus_DISABLED = @"DISABLED";
NUSubnetDHCPRelayStatus_ENABLED = @"ENABLED";
NUSubnetDPI_DISABLED = @"DISABLED";
NUSubnetDPI_ENABLED = @"ENABLED";
NUSubnetDPI_INHERITED = @"INHERITED";
NUSubnetDefaultAction_DROP_TRAFFIC = @"DROP_TRAFFIC";
NUSubnetDefaultAction_USE_UNDERLAY = @"USE_UNDERLAY";
NUSubnetEncryption_DISABLED = @"DISABLED";
NUSubnetEncryption_ENABLED = @"ENABLED";
NUSubnetEncryption_INHERITED = @"INHERITED";
NUSubnetEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSubnetEntityScope_GLOBAL = @"GLOBAL";
NUSubnetEntityState_MARKED_FOR_DELETION = @"MARKED_FOR_DELETION";
NUSubnetEntityState_UNDER_CONSTRUCTION = @"UNDER_CONSTRUCTION";
NUSubnetIPType_DUALSTACK = @"DUALSTACK";
NUSubnetIPType_IPV4 = @"IPV4";
NUSubnetMaintenanceMode_DISABLED = @"DISABLED";
NUSubnetMaintenanceMode_ENABLED = @"ENABLED";
NUSubnetMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUSubnetMulticast_DISABLED = @"DISABLED";
NUSubnetMulticast_ENABLED = @"ENABLED";
NUSubnetMulticast_INHERITED = @"INHERITED";
NUSubnetPATEnabled_DISABLED = @"DISABLED";
NUSubnetPATEnabled_ENABLED = @"ENABLED";
NUSubnetPATEnabled_INHERITED = @"INHERITED";
NUSubnetUnderlayEnabled_DISABLED = @"DISABLED";
NUSubnetUnderlayEnabled_ENABLED = @"ENABLED";
NUSubnetUnderlayEnabled_INHERITED = @"INHERITED";
NUSubnetUseGlobalMAC_DISABLED = @"DISABLED";
NUSubnetUseGlobalMAC_ENABLED = @"ENABLED";


/*!
    This is the definition of a subnet associated with a Zone.
*/
@implementation NUSubnet : NURESTObject
{
    /*!
        None
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
        IPv4 or DUALSTACK
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
        The IP address of the gateway of this subnet
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        None
    */
    CPString _gatewayMACAddress @accessors(property=gatewayMACAddress);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        If PAT is disabled then this flag indicates what to do if routes don't exist in overlay, will default to drop | possible values USE_UNDERLAY, DROP_TRAFFIC Possible values are USE_UNDERLAY, DROP_TRAFFIC, .
    */
    CPString _defaultAction @accessors(property=defaultAction);
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
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Current Network's  globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _vnId @accessors(property=vnId);
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
        The Route Distinguisher value assigned by VSD for this subnet that is used by the BGP-EVPN protocol in VSC
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        The Route Target value assigned by VSD for this subnet that is used by the BGP-EVPN protocol in VSC
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Need to add correct description
    */
    BOOL _splitSubnet @accessors(property=splitSubnet);
    /*!
         when set VRS will act as  ARP Proxy
    */
    BOOL _proxyARP @accessors(property=proxyARP);
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
        when set to true means public subnet under a public zone
    */
    BOOL _public @accessors(property=public);
    /*!
        multicast is enum that indicates multicast policy on Subnet/Subnet Template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Turn on or off dynamic allocation of IPV6 address
    */
    BOOL _dynamicIpv6Address @accessors(property=dynamicIpv6Address);
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUVMResyncsFetcher _childrenVMResyncs @accessors(property=childrenVMResyncs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUIKEGatewayConnectionsFetcher _childrenIKEGatewayConnections @accessors(property=childrenIKEGatewayConnections);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUContainerResyncsFetcher _childrenContainerResyncs @accessors(property=childrenContainerResyncs);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUIPReservationsFetcher _childrenIPReservations @accessors(property=childrenIPReservations);
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
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayMACAddress"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"defaultAction"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"underlay"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityState"];
        [self exposeLocalKeyPathToREST:@"policyGroupID"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"splitSubnet"];
        [self exposeLocalKeyPathToREST:@"proxyARP"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedNetworkResourceID"];
        [self exposeLocalKeyPathToREST:@"public"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"dynamicIpv6Address"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenVMResyncs = [NUVMResyncsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayConnections = [NUIKEGatewayConnectionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainerResyncs = [NUContainerResyncsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenIPReservations = [NUIPReservationsFetcher fetcherWithParentObject:self];
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