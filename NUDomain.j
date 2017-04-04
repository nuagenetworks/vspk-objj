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
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetworkPerformanceBindingsFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUDomainFIPAclTemplatesFetcher.j"
@import "Fetchers/NUFloatingIPACLTemplatesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NULinksFetcher.j"
@import "Fetchers/NUFirewallAclsFetcher.j"
@import "Fetchers/NUFloatingIpsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUIngressExternalServiceTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUZonesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementbindingsFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUExternalAppServicesFetcher.j"

NUDomainApplicationDeploymentPolicy_NONE = @"NONE";
NUDomainApplicationDeploymentPolicy_ZONE = @"ZONE";
NUDomainDHCPBehavior_CONSUME = @"CONSUME";
NUDomainDHCPBehavior_FLOOD = @"FLOOD";
NUDomainDHCPBehavior_OVERLAY_RELAY = @"OVERLAY_RELAY";
NUDomainDHCPBehavior_UNDERLAY_RELAY = @"UNDERLAY_RELAY";
NUDomainDPI_DISABLED = @"DISABLED";
NUDomainDPI_ENABLED = @"ENABLED";
NUDomainEncryption_DISABLED = @"DISABLED";
NUDomainEncryption_ENABLED = @"ENABLED";
NUDomainEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDomainEntityScope_GLOBAL = @"GLOBAL";
NUDomainMaintenanceMode_DISABLED = @"DISABLED";
NUDomainMaintenanceMode_ENABLED = @"ENABLED";
NUDomainMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUDomainMulticast_DISABLED = @"DISABLED";
NUDomainMulticast_ENABLED = @"ENABLED";
NUDomainMulticast_INHERITED = @"INHERITED";
NUDomainPATEnabled_DISABLED = @"DISABLED";
NUDomainPATEnabled_ENABLED = @"ENABLED";
NUDomainPATEnabled_INHERITED = @"INHERITED";
NUDomainPermittedAction_ALL = @"ALL";
NUDomainPermittedAction_DEPLOY = @"DEPLOY";
NUDomainPermittedAction_EXTEND = @"EXTEND";
NUDomainPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUDomainPermittedAction_READ = @"READ";
NUDomainPermittedAction_USE = @"USE";
NUDomainPolicyChangeStatus_APPLIED = @"APPLIED";
NUDomainPolicyChangeStatus_DISCARDED = @"DISCARDED";
NUDomainPolicyChangeStatus_STARTED = @"STARTED";
NUDomainTunnelType_DC_DEFAULT = @"DC_DEFAULT";
NUDomainTunnelType_GRE = @"GRE";
NUDomainTunnelType_VXLAN = @"VXLAN";
NUDomainUnderlayEnabled_DISABLED = @"DISABLED";
NUDomainUnderlayEnabled_ENABLED = @"ENABLED";
NUDomainUnderlayEnabled_INHERITED = @"INHERITED";
NUDomainUplinkPreference_PRIMARY = @"PRIMARY";
NUDomainUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUDomainUplinkPreference_SECONDARY = @"SECONDARY";
NUDomainUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUDomainUplinkPreference_SYMMETRIC = @"SYMMETRIC";


/*!
    This object is used to manipulate domain state. A domain corresponds to a distributed Virtual Router and Switch.
*/
@implementation NUDomain : NURESTObject
{
    /*!
        Indicates whether PAT is enabled for the subnets in this domain - ENABLED/DISABLED Possible values are INHERITED, ENABLED, DISABLED, .
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
        DHCPBehaviorType is an enum that indicates DHCP Behavior of VRS having VM's under this domain. Possible values are FLOOD, CONSUME ,RELAY Possible values are CONSUME, FLOOD, RELAY, .
    */
    CPString _DHCPBehavior @accessors(property=DHCPBehavior);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPString _DHCPServerAddress @accessors(property=DHCPServerAddress);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        The label associated with the dVRS. This is a read only attribute
    */
    CPNumber _labelID @accessors(property=labelID);
    /*!
        Route distinguisher associated with the BackHaul Service in dVRS. If not provided during creation, System generates this identifier automatically
    */
    CPString _backHaulRouteDistinguisher @accessors(property=backHaulRouteDistinguisher);
    /*!
        Route target associated with the BackHaul Service in dVRS. If not provided during creation, System generates this identifier automatically
    */
    CPString _backHaulRouteTarget @accessors(property=backHaulRouteTarget);
    /*!
        IP Address of the backhaul subnet 
    */
    CPString _backHaulSubnetIPAddress @accessors(property=backHaulSubnetIPAddress);
    /*!
        Network mask of the backhaul subnet
    */
    CPString _backHaulSubnetMask @accessors(property=backHaulSubnetMask);
    /*!
        Current BackHaul Network's globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _backHaulVNID @accessors(property=backHaulVNID);
    /*!
        maintenanceMode is an enum that indicates if the Domain is accepting VM activation requests. Possible values are DISABLED, ENABLED and ENABLED_INHERITED Possible values are .
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
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPArrayController _dhcpServerAddresses @accessors(property=dhcpServerAddresses);
    /*!
        Indicates if this domain is a globally routable domain or not - boolean true/false
    */
    BOOL _globalRoutingEnabled @accessors(property=globalRoutingEnabled);
    /*!
        Route distinguisher associated with the dVRS. It is an optional parameter that can be provided by the user or auto-managed by VSD. System generates this identifier automatically, if not provided
    */
    CPString _importRouteTarget @accessors(property=importRouteTarget);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Indicates whether UNDERLAY is enabled for the subnets in this domain
    */
    CPString _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        A unique 20-bitID editable however could be auto-generated by VSD.
    */
    CPNumber _domainID @accessors(property=domainID);
    /*!
        None
    */
    CPNumber _domainVLANID @accessors(property=domainVLANID);
    /*!
        Route distinguisher associated with the dVRS. It is an optional parameter that can be provided by the user or auto-managed by VSD. System generates this identifier automatically, if not provided
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target associated with the dVRS. It is an optional parameterthat can be provided by the user or auto-managed by VSDSystem generates this identifier automatically, if not provided
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Indicates the preferencial path selection for network traffic in this domain - Default is Primary 1 and Secondary 2. Possible values are PRIMARY_SECONDARY, SECONDARY_PRIMARY, PRIMARY, SECONDARY, SYMMETRIC, .
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    /*!
        Application deployment policy.
    */
    CPString _applicationDeploymentPolicy @accessors(property=applicationDeploymentPolicy);
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
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetworkPerformanceBindingsFetcher _childrenNetworkPerformanceBindings @accessors(property=childrenNetworkPerformanceBindings);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUDomainFIPAclTemplatesFetcher _childrenDomainFIPAclTemplates @accessors(property=childrenDomainFIPAclTemplates);
    NUFloatingIPACLTemplatesFetcher _childrenFloatingIPACLTemplates @accessors(property=childrenFloatingIPACLTemplates);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NULinksFetcher _childrenLinks @accessors(property=childrenLinks);
    NUFirewallAclsFetcher _childrenFirewallAcls @accessors(property=childrenFirewallAcls);
    NUFloatingIpsFetcher _childrenFloatingIps @accessors(property=childrenFloatingIps);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUIngressExternalServiceTemplatesFetcher _childrenIngressExternalServiceTemplates @accessors(property=childrenIngressExternalServiceTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUZonesFetcher _childrenZones @accessors(property=childrenZones);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUApplicationperformancemanagementbindingsFetcher _childrenApplicationperformancemanagementbindings @accessors(property=childrenApplicationperformancemanagementbindings);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUExternalAppServicesFetcher _childrenExternalAppServices @accessors(property=childrenExternalAppServices);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"domain";
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
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"labelID"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteDistinguisher"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteTarget"];
        [self exposeLocalKeyPathToREST:@"backHaulSubnetIPAddress"];
        [self exposeLocalKeyPathToREST:@"backHaulSubnetMask"];
        [self exposeLocalKeyPathToREST:@"backHaulVNID"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"leakingEnabled"];
        [self exposeLocalKeyPathToREST:@"secondaryDHCPServerAddress"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"dhcpServerAddresses"];
        [self exposeLocalKeyPathToREST:@"globalRoutingEnabled"];
        [self exposeLocalKeyPathToREST:@"importRouteTarget"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"domainVLANID"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"applicationDeploymentPolicy"];
        [self exposeLocalKeyPathToREST:@"associatedBGPProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedPATMapperID"];
        [self exposeLocalKeyPathToREST:@"stretched"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"tunnelType"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"exportRouteTarget"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetworkPerformanceBindings = [NUNetworkPerformanceBindingsFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomainFIPAclTemplates = [NUDomainFIPAclTemplatesFetcher fetcherWithParentObject:self];
        _childrenFloatingIPACLTemplates = [NUFloatingIPACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenLinks = [NULinksFetcher fetcherWithParentObject:self];
        _childrenFirewallAcls = [NUFirewallAclsFetcher fetcherWithParentObject:self];
        _childrenFloatingIps = [NUFloatingIpsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressExternalServiceTemplates = [NUIngressExternalServiceTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenZones = [NUZonesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagementbindings = [NUApplicationperformancemanagementbindingsFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenExternalAppServices = [NUExternalAppServicesFetcher fetcherWithParentObject:self];
        
        _PATEnabled = @"INHERITED";
        _DHCPBehavior = @"CONSUME";
        _tunnelType = @"DC_DEFAULT";
        _applicationDeploymentPolicy = @"ZONE";
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end