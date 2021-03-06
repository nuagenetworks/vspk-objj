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
@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetworkPerformanceBindingsFetcher.j"
@import "Fetchers/NUPGExpressionsFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUEgressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUEgressAuditACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressAuditACLTemplatesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUDHCPv6OptionsFetcher.j"
@import "Fetchers/NUMirrorDestinationGroupsFetcher.j"
@import "Fetchers/NUVirtualFirewallPoliciesFetcher.j"
@import "Fetchers/NUVirtualFirewallRulesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVMIPReservationsFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUIngressAuditACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressAuditACLTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUApplicationsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementbindingsFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUProxyARPFiltersFetcher.j"
@import "Fetchers/NUNSGatewaySummariesFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUOverlayMirrorDestinationsFetcher.j"

NUL2DomainDPI_DISABLED = @"DISABLED";
NUL2DomainDPI_ENABLED = @"ENABLED";
NUL2DomainEncryption_DISABLED = @"DISABLED";
NUL2DomainEncryption_ENABLED = @"ENABLED";
NUL2DomainEntityScope_ENTERPRISE = @"ENTERPRISE";
NUL2DomainEntityScope_GLOBAL = @"GLOBAL";
NUL2DomainEntityState_MARKED_FOR_DELETION = @"MARKED_FOR_DELETION";
NUL2DomainEntityState_UNDER_CONSTRUCTION = @"UNDER_CONSTRUCTION";
NUL2DomainFlowCollectionEnabled_DISABLED = @"DISABLED";
NUL2DomainFlowCollectionEnabled_ENABLED = @"ENABLED";
NUL2DomainFlowCollectionEnabled_INHERITED = @"INHERITED";
NUL2DomainFlowLimitEnabled_DISABLED = @"DISABLED";
NUL2DomainFlowLimitEnabled_ENABLED = @"ENABLED";
NUL2DomainIPType_DUALSTACK = @"DUALSTACK";
NUL2DomainIPType_IPV4 = @"IPV4";
NUL2DomainIPType_IPV6 = @"IPV6";
NUL2DomainL2EncapType_MPLS = @"MPLS";
NUL2DomainL2EncapType_MPLSOUDP = @"MPLSoUDP";
NUL2DomainL2EncapType_VXLAN = @"VXLAN";
NUL2DomainMaintenanceMode_DISABLED = @"DISABLED";
NUL2DomainMaintenanceMode_ENABLED = @"ENABLED";
NUL2DomainMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUL2DomainMulticast_DISABLED = @"DISABLED";
NUL2DomainMulticast_ENABLED = @"ENABLED";
NUL2DomainMulticast_INHERITED = @"INHERITED";
NUL2DomainPolicyChangeStatus_APPLIED = @"APPLIED";
NUL2DomainPolicyChangeStatus_DISCARDED = @"DISCARDED";
NUL2DomainPolicyChangeStatus_STARTED = @"STARTED";
NUL2DomainThreatIntelligenceEnabled_DISABLED = @"DISABLED";
NUL2DomainThreatIntelligenceEnabled_ENABLED = @"ENABLED";
NUL2DomainThreatIntelligenceEnabled_INHERITED = @"INHERITED";
NUL2DomainUplinkPreference_PRIMARY = @"PRIMARY";
NUL2DomainUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUL2DomainUplinkPreference_SECONDARY = @"SECONDARY";
NUL2DomainUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUL2DomainUplinkPreference_SYMMETRIC = @"SYMMETRIC";
NUL2DomainUseGlobalMAC_DISABLED = @"DISABLED";
NUL2DomainUseGlobalMAC_ENABLED = @"ENABLED";


/*!
    This is the definition of a l2 domain associated with a Enterprise.
*/
@implementation NUL2Domain : NURESTObject
{
    /*!
        Default Domain Tunnel Type
    */
    CPString _l2EncapType @accessors(property=l2EncapType);
    /*!
        decides whether L2Domain / L2Domain template DHCP is managed by VSD
    */
    BOOL _DHCPManaged @accessors(property=DHCPManaged);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4, DUALSTACK or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPV6 address of the route - Optional
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        The IPv6 address of the gateway of this subnet
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        Determines whether VXLAN-ECMP are enabled on this domain.
    */
    BOOL _VXLANECMPEnabled @accessors(property=VXLANECMPEnabled);
    /*!
        maintenanceMode is an enum that indicates if the L2Domain is accepting VM activation requests. Possible values are DISABLED, ENABLED and ENABLED_INHERITED Possible values are .
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        Name of the L2Domain / L2Domain template,has to be unique within a Enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
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
        The IP address of the gateway of this l2 domain
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        The MAC address of the Gateway.
    */
    CPString _gatewayMACAddress @accessors(property=gatewayMACAddress);
    /*!
        Network address of the L2Domain / L2Domain template defined. 
    */
    CPString _address @accessors(property=address);
    /*!
        The ID of the L2 Domain template that this L2 Domain object was derived from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The service ID used by the VSCs to identify this subnet
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        A description field provided by the user that identifies the L2Domain / L2Domain template.
    */
    CPString _description @accessors(property=description);
    /*!
        Netmask of the L2Domain / L2Domain template defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Determines whether or not threat intelligence is enabled
    */
    CPString _threatIntelligenceEnabled @accessors(property=threatIntelligenceEnabled);
    /*!
        Determines whether or not flow collection is enabled.
    */
    CPString _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Maximum number of data flows allowed for a VPort.
    */
    CPNumber _flowCount @accessors(property=flowCount);
    /*!
        Indicates if flow limit is enabled on this Domain. Possible values are ENABLED or DISABLED.
    */
    CPString _flowLimitEnabled @accessors(property=flowLimitEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Current network's globally unique VXLAN network identifier
    */
    CPNumber _vnId @accessors(property=vnId);
    /*!
        This read-only value indicates whether IPv4 DHCP is enabled or not. This is applicable in case the L2 Domain is DUALSTACK or IPv4
    */
    BOOL _enableDHCPv4 @accessors(property=enableDHCPv4);
    /*!
        This read-only value indicates whether IPv6 DHCP is enabled or not. This is applicable in case the L2 Domain is DUALSTACK or IPv6
    */
    BOOL _enableDHCPv6 @accessors(property=enableDHCPv6);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Enables ingress replication for the VNI.
    */
    BOOL _ingressReplicationEnabled @accessors(property=ingressReplicationEnabled);
    /*!
        SRLinux Interface ID for L2Domain configuration
    */
    CPNumber _interfaceID @accessors(property=interfaceID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Intermediate State of L2 Domain.
    */
    CPString _entityState @accessors(property=entityState);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        The color encoded with a traffic engineering constraint such as minimum latency, hops, maximum bandwidth, etc. This is used for NFIX(Network Function Interconnect). Color is applicable only when the selected l2EncapType is MPLSoUDP. Valid range is 1 - 4294967295. 0 for other Tunnel Types.
    */
    CPNumber _color @accessors(property=color);
    /*!
        Route distinguisher that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Determines whether routed VPLS services are enabled on this domain.
    */
    BOOL _routedVPLSEnabled @accessors(property=routedVPLSEnabled);
    /*!
        Indicates the preferencial path selection for network traffic in this domain - Default is Primary 1 and Secondary 2. Possible values are PRIMARY_SECONDARY, SECONDARY_PRIMARY, PRIMARY, SECONDARY, SYMMETRIC, .
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Enable this flag to use system configured globalMACAddress as the gateway mac address for managed l2 domains
    */
    CPString _useGlobalMAC @accessors(property=useGlobalMAC);
    /*!
        The ID of the Multi Cast Channel Map this L2Domain / L2Domain template template is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of the L2 Domain  that this L2 Domain object is pointing to
    */
    CPString _associatedSharedNetworkResourceID @accessors(property=associatedSharedNetworkResourceID);
    /*!
        The ID of the Underlay entity to which this L2 Domain is associated.
    */
    CPString _associatedUnderlayID @accessors(property=associatedUnderlayID);
    /*!
        Indicates whether this domain is streched,if so remote VM resolutions will be allowed
    */
    BOOL _stretched @accessors(property=stretched);
    /*!
        This read-only value indicates whether dynamic address allocation is enabled or not at template. This will be applicable when L2 Domain is managed and in dual stack mode
    */
    BOOL _dualStackDynamicIPAllocation @accessors(property=dualStackDynamicIPAllocation);
    /*!
        Indicates multicast policy on L2Domain.
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
    
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetworkPerformanceBindingsFetcher _childrenNetworkPerformanceBindings @accessors(property=childrenNetworkPerformanceBindings);
    NUPGExpressionsFetcher _childrenPGExpressions @accessors(property=childrenPGExpressions);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUEgressAdvFwdTemplatesFetcher _childrenEgressAdvFwdTemplates @accessors(property=childrenEgressAdvFwdTemplates);
    NUEgressAuditACLEntryTemplatesFetcher _childrenEgressAuditACLEntryTemplates @accessors(property=childrenEgressAuditACLEntryTemplates);
    NUEgressAuditACLTemplatesFetcher _childrenEgressAuditACLTemplates @accessors(property=childrenEgressAuditACLTemplates);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUDHCPv6OptionsFetcher _childrenDHCPv6Options @accessors(property=childrenDHCPv6Options);
    NUMirrorDestinationGroupsFetcher _childrenMirrorDestinationGroups @accessors(property=childrenMirrorDestinationGroups);
    NUVirtualFirewallPoliciesFetcher _childrenVirtualFirewallPolicies @accessors(property=childrenVirtualFirewallPolicies);
    NUVirtualFirewallRulesFetcher _childrenVirtualFirewallRules @accessors(property=childrenVirtualFirewallRules);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVMIPReservationsFetcher _childrenVMIPReservations @accessors(property=childrenVMIPReservations);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUIngressAuditACLEntryTemplatesFetcher _childrenIngressAuditACLEntryTemplates @accessors(property=childrenIngressAuditACLEntryTemplates);
    NUIngressAuditACLTemplatesFetcher _childrenIngressAuditACLTemplates @accessors(property=childrenIngressAuditACLTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUApplicationsFetcher _childrenApplications @accessors(property=childrenApplications);
    NUApplicationperformancemanagementbindingsFetcher _childrenApplicationperformancemanagementbindings @accessors(property=childrenApplicationperformancemanagementbindings);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUProxyARPFiltersFetcher _childrenProxyARPFilters @accessors(property=childrenProxyARPFilters);
    NUNSGatewaySummariesFetcher _childrenNSGatewaySummaries @accessors(property=childrenNSGatewaySummaries);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUOverlayMirrorDestinationsFetcher _childrenOverlayMirrorDestinations @accessors(property=childrenOverlayMirrorDestinations);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"l2domain";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"l2EncapType"];
        [self exposeLocalKeyPathToREST:@"DHCPManaged"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"VXLANECMPEnabled"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayMACAddress"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"threatIntelligenceEnabled"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"flowCount"];
        [self exposeLocalKeyPathToREST:@"flowLimitEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv4"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv6"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"ingressReplicationEnabled"];
        [self exposeLocalKeyPathToREST:@"interfaceID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityState"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"color"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"routedVPLSEnabled"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedNetworkResourceID"];
        [self exposeLocalKeyPathToREST:@"associatedUnderlayID"];
        [self exposeLocalKeyPathToREST:@"stretched"];
        [self exposeLocalKeyPathToREST:@"dualStackDynamicIPAllocation"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetworkPerformanceBindings = [NUNetworkPerformanceBindingsFetcher fetcherWithParentObject:self];
        _childrenPGExpressions = [NUPGExpressionsFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressAdvFwdTemplates = [NUEgressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressAuditACLEntryTemplates = [NUEgressAuditACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressAuditACLTemplates = [NUEgressAuditACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenDHCPv6Options = [NUDHCPv6OptionsFetcher fetcherWithParentObject:self];
        _childrenMirrorDestinationGroups = [NUMirrorDestinationGroupsFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallPolicies = [NUVirtualFirewallPoliciesFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallRules = [NUVirtualFirewallRulesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVMIPReservations = [NUVMIPReservationsFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAuditACLEntryTemplates = [NUIngressAuditACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAuditACLTemplates = [NUIngressAuditACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenApplications = [NUApplicationsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagementbindings = [NUApplicationperformancemanagementbindingsFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenProxyARPFilters = [NUProxyARPFiltersFetcher fetcherWithParentObject:self];
        _childrenNSGatewaySummaries = [NUNSGatewaySummariesFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenOverlayMirrorDestinations = [NUOverlayMirrorDestinationsFetcher fetcherWithParentObject:self];
        
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end