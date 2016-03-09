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

@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
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
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"

NUL2DomainEncryption_DISABLED = @"DISABLED";
NUL2DomainEncryption_ENABLED = @"ENABLED";
NUL2DomainEntityScope_ENTERPRISE = @"ENTERPRISE";
NUL2DomainEntityScope_GLOBAL = @"GLOBAL";
NUL2DomainIPType_IPV4 = @"IPV4";
NUL2DomainIPType_IPV6 = @"IPV6";
NUL2DomainMaintenanceMode_DISABLED = @"DISABLED";
NUL2DomainMaintenanceMode_ENABLED = @"ENABLED";
NUL2DomainMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUL2DomainMulticast_DISABLED = @"DISABLED";
NUL2DomainMulticast_ENABLED = @"ENABLED";
NUL2DomainMulticast_INHERITED = @"INHERITED";
NUL2DomainPolicyChangeStatus_APPLIED = @"APPLIED";
NUL2DomainPolicyChangeStatus_DISCARDED = @"DISCARDED";
NUL2DomainPolicyChangeStatus_STARTED = @"STARTED";
NUL2DomainUplinkPreference_PRIMARY = @"PRIMARY";
NUL2DomainUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUL2DomainUplinkPreference_SECONDARY = @"SECONDARY";
NUL2DomainUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUL2DomainUplinkPreference_SYMMETRIC = @"SYMMETRIC";


/*!
    This is the definition of a l2 domain associated with a Enterprise.
*/
@implementation NUL2Domain : NURESTObject
{
    /*!
        decides whether L2Domain / L2Domain template DHCP is managed by VSD
    */
    BOOL _DHCPManaged @accessors(property=DHCPManaged);
    /*!
        IPv4 or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        Network address of the L2Domain / L2Domain template defined. 
    */
    CPString _address @accessors(property=address);
    /*!
        The ID of the Multi Cast Channel Map this L2Domain / L2Domain template template is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of the L2 Domain  that this L2 Domain object is pointing to
    */
    CPString _associatedSharedNetworkResourceID @accessors(property=associatedSharedNetworkResourceID);
    /*!
        A description field provided by the user that identifies the L2Domain / L2Domain template.
    */
    CPString _description @accessors(property=description);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The IP address of the gateway of this l2 domain
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        The MAC address of the Gateway.
    */
    CPString _gatewayMACAddress @accessors(property=gatewayMACAddress);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        maintenanceMode is an enum that indicates if the L2Domain is accepting VM activation requests. Possible values are DISABLED, ENABLED and ENABLED_INHERITED Possible values are .
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        Indicates multicast policy on L2Domain.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Name of the L2Domain / L2Domain template,has to be unique within a Enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        Netmask of the L2Domain / L2Domain template defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        The Route Distinguisher value assigned by VSD for this subnet that is used by the BGP-EVPN protocol in VSC
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        The Route Target value assigned by VSD for this subnet that is used by the BGP-EVPN protocol in VSC
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        The service ID used by the VSCs to identify this subnet
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        Indicates whether this domain is streched,if so remote VM resolutions will be allowed
    */
    BOOL _stretched @accessors(property=stretched);
    /*!
        The ID of the L2 Domain template that this L2 Domain object was derived from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Indicates the preferencial path selection for network traffic in this domain - Default is Primary 1 and Secondary 2. Possible values are PRIMARY_SECONDARY, SECONDARY_PRIMARY, PRIMARY, SECONDARY, SYMMETRIC, .
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    /*!
        Current Network's  globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _vnId @accessors(property=vnId);
    
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
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
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    
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
        [self exposeLocalKeyPathToREST:@"DHCPManaged"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedNetworkResourceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayMACAddress"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"stretched"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
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
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end