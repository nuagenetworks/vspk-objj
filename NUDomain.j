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

@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUExternalAppServicesFetcher.j"
@import "Fetchers/NUFloatingIpsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUIngressExternalServiceTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUZonesFetcher.j"

NUDomainApplicationDeploymentPolicy_NONE = @"NONE";
NUDomainApplicationDeploymentPolicy_ZONE = @"ZONE";
NUDomainDHCPBehavior_CONSUME = @"CONSUME";
NUDomainDHCPBehavior_FLOOD = @"FLOOD";
NUDomainDHCPBehavior_RELAY = @"RELAY";
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
    This object is used to manipulate domain state. A domain corresponds to a distributed Virtual Router and Switch (dVRS).
*/
@implementation NUDomain : NURESTObject
{
    /*!
        DHCPBehaviorType is an enum that indicates DHCP Behavior of VRS having VM's under this domain. Possible values are FLOOD, CONSUME ,RELAY Possible values are CONSUME, FLOOD, RELAY, .
    */
    CPString _DHCPBehavior @accessors(property=DHCPBehavior);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPString _DHCPServerAddress @accessors(property=DHCPServerAddress);
    /*!
        Domain specific Equal-cost multi-path routing count, ECMPCount = 1 means no ECMP
    */
    CPNumber _ECMPCount @accessors(property=ECMPCount);
    /*!
        Indicates whether PAT is enabled for the subnets in this domain - ENABLED/DISABLED Possible values are INHERITED, ENABLED, DISABLED, .
    */
    CPString _PATEnabled @accessors(property=PATEnabled);
    /*!
        Application deployment policy.
    */
    CPString _applicationDeploymentPolicy @accessors(property=applicationDeploymentPolicy);
    /*!
        The ID of the Multi Cast Channel Map  this domain is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        Route distinguisher associated with the BackHaul Service in dVRS. If not provided during creation, System generates this identifier automatically
    */
    CPString _backHaulRouteDistinguisher @accessors(property=backHaulRouteDistinguisher);
    /*!
        Route target associated with the BackHaul Service in dVRS. If not provided during creation, System generates this identifier automatically
    */
    CPString _backHaulRouteTarget @accessors(property=backHaulRouteTarget);
    /*!
        Current BackHaul Network's globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _backHaulVNID @accessors(property=backHaulVNID);
    /*!
        The customerID that is created in the VSC and identifies this dVRS. This is auto-generated by VSD
    */
    CPNumber _customerID @accessors(property=customerID);
    /*!
        A description string of the domain that is provided by the user
    */
    CPString _description @accessors(property=description);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPArrayController _dhcpServerAddresses @accessors(property=dhcpServerAddresses);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Route target associated with the dVRS. It is an optional parameterthat can be provided by the user or auto-managed by VSDSystem generates this identifier automatically, if not provided
    */
    CPString _exportRouteTarget @accessors(property=exportRouteTarget);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Indicates if this domain is a globally routable domain or not - boolean true/false
    */
    BOOL _globalRoutingEnabled @accessors(property=globalRoutingEnabled);
    /*!
        Route distinguisher associated with the dVRS. It is an optional parameter that can be provided by the user or auto-managed by VSD. System generates this identifier automatically, if not provided
    */
    CPString _importRouteTarget @accessors(property=importRouteTarget);
    /*!
        The label associated with the dVRS. This is a read only attribute
    */
    CPNumber _labelID @accessors(property=labelID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Indicates if this domain is a leakable domain or not - boolean true/false
    */
    BOOL _leakingEnabled @accessors(property=leakingEnabled);
    /*!
        maintenanceMode is an enum that indicates if the Domain is accepting VM activation requests. Possible values are DISABLED, ENABLED and ENABLED_INHERITED Possible values are .
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        multicast is enum that indicates multicast policy on domain. Possible values are ENABLED ,DISABLED  and INHERITED Possible values are INHERITED, ENABLED, DISABLED, .
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        The name of the domain. Valid characters are  alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        The permitted  action to USE/DEPLOY for the Domain Possible values are USE, READ, ALL, INSTANTIATE, EXTEND, DEPLOY, .
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        Route distinguisher associated with the dVRS. It is an optional parameter that can be provided by the user or auto-managed by VSD. System generates this identifier automatically, if not provided
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target associated with the dVRS. It is an optional parameterthat can be provided by the user or auto-managed by VSDSystem generates this identifier automatically, if not provided
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        when DHCPBehaviorType is RELAY, then DHCP Server IP Address needs to be set
    */
    CPString _secondaryDHCPServerAddress @accessors(property=secondaryDHCPServerAddress);
    /*!
        The serviceID of the Virtual Router created in VSC and is associated with this object. This is auto-generated by VSD
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        Indicates whether this domain is streched,if so remote VM resolutions will be allowed
    */
    BOOL _stretched @accessors(property=stretched);
    /*!
        The ID of the template that this domain was created from. This should be set when instantiating a domain
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Default Domain Tunnel Type
    */
    CPString _tunnelType @accessors(property=tunnelType);
    /*!
        Indicates whether UNDERLAY is enabled for the subnets in this domain
    */
    CPString _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Indicates the preferencial path selection for network traffic in this domain - Default is Primary 1 and Secondary 2. Possible values are PRIMARY_SECONDARY, SECONDARY_PRIMARY, PRIMARY, SECONDARY, SYMMETRIC, .
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUExternalAppServicesFetcher _childrenExternalAppServices @accessors(property=childrenExternalAppServices);
    NUFloatingIpsFetcher _childrenFloatingIps @accessors(property=childrenFloatingIps);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUIngressExternalServiceTemplatesFetcher _childrenIngressExternalServiceTemplates @accessors(property=childrenIngressExternalServiceTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUZonesFetcher _childrenZones @accessors(property=childrenZones);
    
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
        [self exposeLocalKeyPathToREST:@"DHCPBehavior"];
        [self exposeLocalKeyPathToREST:@"DHCPServerAddress"];
        [self exposeLocalKeyPathToREST:@"ECMPCount"];
        [self exposeLocalKeyPathToREST:@"PATEnabled"];
        [self exposeLocalKeyPathToREST:@"applicationDeploymentPolicy"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteDistinguisher"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteTarget"];
        [self exposeLocalKeyPathToREST:@"backHaulVNID"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"dhcpServerAddresses"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"exportRouteTarget"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"globalRoutingEnabled"];
        [self exposeLocalKeyPathToREST:@"importRouteTarget"];
        [self exposeLocalKeyPathToREST:@"labelID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"leakingEnabled"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"secondaryDHCPServerAddress"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"stretched"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"tunnelType"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenExternalAppServices = [NUExternalAppServicesFetcher fetcherWithParentObject:self];
        _childrenFloatingIps = [NUFloatingIpsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressExternalServiceTemplates = [NUIngressExternalServiceTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenZones = [NUZonesFetcher fetcherWithParentObject:self];
        
        _PATEnabled = @"INHERITED";
        _DHCPBehavior = @"CONSUME";
        _tunnelType = @"DC_DEFAULT";
        _applicationDeploymentPolicy = @"ZONE";
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end