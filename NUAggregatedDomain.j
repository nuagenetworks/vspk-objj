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
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetworkPerformanceBindingsFetcher.j"
@import "Fetchers/NUPGExpressionsFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUEgressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUDomainFIPAclTemplatesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NULinksFetcher.j"
@import "Fetchers/NUFirewallAclsFetcher.j"
@import "Fetchers/NUVirtualFirewallPoliciesFetcher.j"
@import "Fetchers/NUVirtualFirewallRulesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUFloatingIpsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVNFDomainMappingsFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUZonesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUForwardingPathListsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUSPATSourcesPoolsFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUApplicationsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementbindingsFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUNSGatewaySummariesFetcher.j"
@import "Fetchers/NUNSGRoutingPolicyBindingsFetcher.j"
@import "Fetchers/NUOSPFInstancesFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUAggregatedDomainAdvertiseCriteria_HUB_ROUTES = @"HUB_ROUTES";
NUAggregatedDomainDHCPBehavior_CONSUME = @"CONSUME";
NUAggregatedDomainDHCPBehavior_FLOOD = @"FLOOD";
NUAggregatedDomainDHCPBehavior_OVERLAY_RELAY = @"OVERLAY_RELAY";
NUAggregatedDomainDHCPBehavior_UNDERLAY_RELAY = @"UNDERLAY_RELAY";
NUAggregatedDomainDPI_DISABLED = @"DISABLED";
NUAggregatedDomainDPI_ENABLED = @"ENABLED";
NUAggregatedDomainEncryption_DISABLED = @"DISABLED";
NUAggregatedDomainEncryption_ENABLED = @"ENABLED";
NUAggregatedDomainEntityScope_ENTERPRISE = @"ENTERPRISE";
NUAggregatedDomainEntityScope_GLOBAL = @"GLOBAL";
NUAggregatedDomainFIPIgnoreDefaultRoute_DISABLED = @"DISABLED";
NUAggregatedDomainFIPIgnoreDefaultRoute_ENABLED = @"ENABLED";
NUAggregatedDomainFlowCollectionEnabled_DISABLED = @"DISABLED";
NUAggregatedDomainFlowCollectionEnabled_ENABLED = @"ENABLED";
NUAggregatedDomainFlowCollectionEnabled_INHERITED = @"INHERITED";
NUAggregatedDomainMaintenanceMode_DISABLED = @"DISABLED";
NUAggregatedDomainMaintenanceMode_ENABLED = @"ENABLED";
NUAggregatedDomainMulticast_DISABLED = @"DISABLED";
NUAggregatedDomainMulticast_ENABLED = @"ENABLED";
NUAggregatedDomainMulticast_INHERITED = @"INHERITED";
NUAggregatedDomainPATEnabled_DISABLED = @"DISABLED";
NUAggregatedDomainPATEnabled_ENABLED = @"ENABLED";
NUAggregatedDomainPATEnabled_INHERITED = @"INHERITED";
NUAggregatedDomainPermittedAction_ALL = @"ALL";
NUAggregatedDomainPermittedAction_DEPLOY = @"DEPLOY";
NUAggregatedDomainPermittedAction_EXTEND = @"EXTEND";
NUAggregatedDomainPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUAggregatedDomainPermittedAction_READ = @"READ";
NUAggregatedDomainPermittedAction_USE = @"USE";
NUAggregatedDomainPolicyChangeStatus_APPLIED = @"APPLIED";
NUAggregatedDomainPolicyChangeStatus_DISCARDED = @"DISCARDED";
NUAggregatedDomainPolicyChangeStatus_STARTED = @"STARTED";
NUAggregatedDomainTunnelType_DC_DEFAULT = @"DC_DEFAULT";
NUAggregatedDomainTunnelType_GRE = @"GRE";
NUAggregatedDomainTunnelType_VLAN = @"VLAN";
NUAggregatedDomainTunnelType_VXLAN = @"VXLAN";
NUAggregatedDomainUnderlayEnabled_DISABLED = @"DISABLED";
NUAggregatedDomainUnderlayEnabled_ENABLED = @"ENABLED";
NUAggregatedDomainUplinkPreference_PRIMARY = @"PRIMARY";
NUAggregatedDomainUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUAggregatedDomainUplinkPreference_SECONDARY = @"SECONDARY";
NUAggregatedDomainUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUAggregatedDomainUplinkPreference_SYMMETRIC = @"SYMMETRIC";


/*!
    Aggregated Domains represents a VPRN that aggregates regular L3 Domains, and then it does leaking from the VPRN to the GRT as an option.
*/
@implementation NUAggregatedDomain : NURESTObject
{
    /*!
        Indicates whether PAT is enabled for the subnets in this domain - ENABLED/DISABLED Possible values are ENABLED, DISABLED.
    */
    CPString _PATEnabled @accessors(property=PATEnabled);
    /*!
        Domain specific Equal-cost multi-path routing count, ECMPCount = 1 means no ECMP
    */
    CPNumber _ECMPCount @accessors(property=ECMPCount);
    /*!
        Read only flag to display if BGP is enabled for this domain
    */
    BOOL _BGPEnabled @accessors(property=BGPEnabled);
    /*!
        DHCPBehaviorType is an enum that indicates DHCP Behavior of VRS having VM's under this domain. Possible values are FLOOD, CONSUME, OVERLAY_RELAY, UNDERLAY_RELAY.
    */
    CPString _DHCPBehavior @accessors(property=DHCPBehavior);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPString _DHCPServerAddress @accessors(property=DHCPServerAddress);
    /*!
        Determines whether the default Overlay route will be ignored or not when a VM has FIP so that it takes Underlay route.
    */
    CPString _FIPIgnoreDefaultRoute @accessors(property=FIPIgnoreDefaultRoute);
    /*!
        Boolean flag to indicate whether this is a Floating IP to underlay domain or not
    */
    BOOL _FIPUnderlay @accessors(property=FIPUnderlay);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        Determines if GRT is enabled on this domain.
    */
    BOOL _GRTEnabled @accessors(property=GRTEnabled);
    /*!
        Determines wheather EVPN-RT5 are enabled on this domain.
    */
    BOOL _EVPNRT5Enabled @accessors(property=EVPNRT5Enabled);
    /*!
        Determines whether VXLAN-ECMP are enabled on this domain.
    */
    BOOL _VXLANECMPEnabled @accessors(property=VXLANECMPEnabled);
    /*!
        The label associated with the dVRS. This is a read only attribute
    */
    CPNumber _labelID @accessors(property=labelID);
    /*!
        Route distinguisher associated with the backhaul service in dVRS. If not provided, system generates this identifier automatically. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _backHaulRouteDistinguisher @accessors(property=backHaulRouteDistinguisher);
    /*!
        Route target associated with the backhaul service in dVRS. If not provided, system generates this identifier automatically. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _backHaulRouteTarget @accessors(property=backHaulRouteTarget);
    /*!
        The backhaul serviceID of the Virtual Router created in VSC and is associated with this object. This is auto-generated by VSD
    */
    CPNumber _backHaulServiceID @accessors(property=backHaulServiceID);
    /*!
        Current backhaul network's globally unique VXLAN network identifier
    */
    CPNumber _backHaulVNID @accessors(property=backHaulVNID);
    /*!
        Enum that indicates if the Domain is accepting VM activation requests. Possible values are DISABLED, ENABLED.
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        The name of the domain. Valid characters are  alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Set this attribute to allow the spoke domain routes to be leaked into the hub domain.
    */
    CPString _advertiseCriteria @accessors(property=advertiseCriteria);
    /*!
        Indicates if this domain is a leakable domain or not - boolean true/false
    */
    BOOL _leakingEnabled @accessors(property=leakingEnabled);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPString _secondaryDHCPServerAddress @accessors(property=secondaryDHCPServerAddress);
    /*!
        The ID of the template that this domain was created from. This should be set when instantiating a domain
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The permitted  action to USE/DEPLOY for the Domain Possible values are USE, READ, ALL, INSTANTIATE, EXTEND, DEPLOY, .
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        The serviceID of the Virtual Router created in VSC and is associated with this object. This is auto-generated by VSD
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        A description string of the domain that is provided by the user
    */
    CPString _description @accessors(property=description);
    /*!
        Flag to enable aggregate flows on this domain.
    */
    BOOL _aggregateFlowsEnabled @accessors(property=aggregateFlowsEnabled);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPArrayController _dhcpServerAddresses @accessors(property=dhcpServerAddresses);
    /*!
        Indicates if this domain is a globally routable domain or not - boolean true/false
    */
    BOOL _globalRoutingEnabled @accessors(property=globalRoutingEnabled);
    /*!
        Determines whether or not flow collection is enabled.
    */
    CPString _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Route distinguisher associated with the dVRS. It is an optional parameter that can be provided by the user or auto-managed by VSD. System generates this identifier automatically, if not provided
    */
    CPString _importRouteTarget @accessors(property=importRouteTarget);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED.
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Indicates whether UNDERLAY is enabled for the subnets in this domain
    */
    CPString _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Enterprise ID
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Local autonomous system for the domain
    */
    CPNumber _localAS @accessors(property=localAS);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        Indicates if this Domain Aggregation is enabled on this Domain.
    */
    BOOL _domainAggregationEnabled @accessors(property=domainAggregationEnabled);
    /*!
        A unique 20-bitID editable however could be auto-generated by VSD.
    */
    CPNumber _domainID @accessors(property=domainID);
    /*!
        None
    */
    CPNumber _domainVLANID @accessors(property=domainVLANID);
    /*!
        Route distinguisher associated with the dVRS. If not provided, system generates this identifier automatically. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target associated with the dVRS. If not provided, system generates this identifier automatically. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Indicates the preferencial path selection for network traffic in this domain - Default is Primary 1 and Secondary 2. Possible values are PRIMARY_SECONDARY, SECONDARY_PRIMARY, PRIMARY, SECONDARY, SYMMETRIC, .
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    /*!
        Specifies if IPV6 traffic aggregation is enabled.
    */
    BOOL _ipv6AggregationEnabled @accessors(property=ipv6AggregationEnabled);
    /*!
        Determines if BackHaul Subnet should be created or not.
    */
    BOOL _createBackHaulSubnet @accessors(property=createBackHaulSubnet);
    /*!
        None
    */
    CPString _associatedBGPProfileID @accessors(property=associatedBGPProfileID);
    /*!
        The ID of the Multi Cast Channel Map  this domain is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of the PatMapper entity to which this l3-domain is associated to.
    */
    CPString _associatedPATMapperID @accessors(property=associatedPATMapperID);
    /*!
        The ID of the PatMapper entity to which this SharedNetworkResource is associated to.
    */
    CPString _associatedSharedPATMapperID @accessors(property=associatedSharedPATMapperID);
    /*!
        The ID of the Underlay entity to which this L3 Domain is associated.
    */
    CPString _associatedUnderlayID @accessors(property=associatedUnderlayID);
    /*!
        Indicates whether this domain is streched,if so remote VM resolutions will be allowed
    */
    BOOL _stretched @accessors(property=stretched);
    /*!
        multicast is enum that indicates multicast policy on domain. Possible values are ENABLED ,DISABLED  and INHERITED Possible values are INHERITED, ENABLED, DISABLED, .
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Default Domain Tunnel Type
    */
    CPString _tunnelType @accessors(property=tunnelType);
    /*!
        The customerID that is created in the VSC and identifies this dVRS. This is auto-generated by VSD
    */
    CPNumber _customerID @accessors(property=customerID);
    /*!
        Route target associated with the dVRS. It is an optional parameterthat can be provided by the user or auto-managed by VSDSystem generates this identifier automatically, if not provided
    */
    CPString _exportRouteTarget @accessors(property=exportRouteTarget);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        External label given to Domain
    */
    CPString _externalLabel @accessors(property=externalLabel);
    
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetworkPerformanceBindingsFetcher _childrenNetworkPerformanceBindings @accessors(property=childrenNetworkPerformanceBindings);
    NUPGExpressionsFetcher _childrenPGExpressions @accessors(property=childrenPGExpressions);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUEgressAdvFwdTemplatesFetcher _childrenEgressAdvFwdTemplates @accessors(property=childrenEgressAdvFwdTemplates);
    NUDomainFIPAclTemplatesFetcher _childrenDomainFIPAclTemplates @accessors(property=childrenDomainFIPAclTemplates);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NULinksFetcher _childrenLinks @accessors(property=childrenLinks);
    NUFirewallAclsFetcher _childrenFirewallAcls @accessors(property=childrenFirewallAcls);
    NUVirtualFirewallPoliciesFetcher _childrenVirtualFirewallPolicies @accessors(property=childrenVirtualFirewallPolicies);
    NUVirtualFirewallRulesFetcher _childrenVirtualFirewallRules @accessors(property=childrenVirtualFirewallRules);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUFloatingIpsFetcher _childrenFloatingIps @accessors(property=childrenFloatingIps);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVNFDomainMappingsFetcher _childrenVNFDomainMappings @accessors(property=childrenVNFDomainMappings);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUZonesFetcher _childrenZones @accessors(property=childrenZones);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUForwardingPathListsFetcher _childrenForwardingPathLists @accessors(property=childrenForwardingPathLists);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUSPATSourcesPoolsFetcher _childrenSPATSourcesPools @accessors(property=childrenSPATSourcesPools);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUApplicationsFetcher _childrenApplications @accessors(property=childrenApplications);
    NUApplicationperformancemanagementbindingsFetcher _childrenApplicationperformancemanagementbindings @accessors(property=childrenApplicationperformancemanagementbindings);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUNSGatewaySummariesFetcher _childrenNSGatewaySummaries @accessors(property=childrenNSGatewaySummaries);
    NUNSGRoutingPolicyBindingsFetcher _childrenNSGRoutingPolicyBindings @accessors(property=childrenNSGRoutingPolicyBindings);
    NUOSPFInstancesFetcher _childrenOSPFInstances @accessors(property=childrenOSPFInstances);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"aggregateddomain";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"PATEnabled"];
        [self exposeLocalKeyPathToREST:@"ECMPCount"];
        [self exposeLocalKeyPathToREST:@"BGPEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPBehavior"];
        [self exposeLocalKeyPathToREST:@"DHCPServerAddress"];
        [self exposeLocalKeyPathToREST:@"FIPIgnoreDefaultRoute"];
        [self exposeLocalKeyPathToREST:@"FIPUnderlay"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"GRTEnabled"];
        [self exposeLocalKeyPathToREST:@"EVPNRT5Enabled"];
        [self exposeLocalKeyPathToREST:@"VXLANECMPEnabled"];
        [self exposeLocalKeyPathToREST:@"labelID"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteDistinguisher"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteTarget"];
        [self exposeLocalKeyPathToREST:@"backHaulServiceID"];
        [self exposeLocalKeyPathToREST:@"backHaulVNID"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"advertiseCriteria"];
        [self exposeLocalKeyPathToREST:@"leakingEnabled"];
        [self exposeLocalKeyPathToREST:@"secondaryDHCPServerAddress"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"aggregateFlowsEnabled"];
        [self exposeLocalKeyPathToREST:@"dhcpServerAddresses"];
        [self exposeLocalKeyPathToREST:@"globalRoutingEnabled"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"importRouteTarget"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"localAS"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"domainAggregationEnabled"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"domainVLANID"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"ipv6AggregationEnabled"];
        [self exposeLocalKeyPathToREST:@"createBackHaulSubnet"];
        [self exposeLocalKeyPathToREST:@"associatedBGPProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedPATMapperID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedPATMapperID"];
        [self exposeLocalKeyPathToREST:@"associatedUnderlayID"];
        [self exposeLocalKeyPathToREST:@"stretched"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"tunnelType"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"exportRouteTarget"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"externalLabel"];
        
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetworkPerformanceBindings = [NUNetworkPerformanceBindingsFetcher fetcherWithParentObject:self];
        _childrenPGExpressions = [NUPGExpressionsFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressAdvFwdTemplates = [NUEgressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomainFIPAclTemplates = [NUDomainFIPAclTemplatesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenLinks = [NULinksFetcher fetcherWithParentObject:self];
        _childrenFirewallAcls = [NUFirewallAclsFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallPolicies = [NUVirtualFirewallPoliciesFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallRules = [NUVirtualFirewallRulesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenFloatingIps = [NUFloatingIpsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVNFDomainMappings = [NUVNFDomainMappingsFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenZones = [NUZonesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenForwardingPathLists = [NUForwardingPathListsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenSPATSourcesPools = [NUSPATSourcesPoolsFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenApplications = [NUApplicationsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagementbindings = [NUApplicationperformancemanagementbindingsFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenNSGatewaySummaries = [NUNSGatewaySummariesFetcher fetcherWithParentObject:self];
        _childrenNSGRoutingPolicyBindings = [NUNSGRoutingPolicyBindingsFetcher fetcherWithParentObject:self];
        _childrenOSPFInstances = [NUOSPFInstancesFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end