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
@import <Bambou/NURESTAbstractRoot.j>

@import "Fetchers/NUL2DomainsFetcher.j"
@import "Fetchers/NUL4ServicesFetcher.j"
@import "Fetchers/NUVCenterEAMConfigsFetcher.j"
@import "Fetchers/NURateLimitersFetcher.j"
@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUGatewayTemplatesFetcher.j"
@import "Fetchers/NUPATMappersFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUVCentersFetcher.j"
@import "Fetchers/NUVCenterHypervisorsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NUPerformanceMonitorsFetcher.j"
@import "Fetchers/NUCertificatesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetworkLayoutsFetcher.j"
@import "Fetchers/NUKeyServerMembersFetcher.j"
@import "Fetchers/NUZFBAutoAssignmentsFetcher.j"
@import "Fetchers/NUZFBRequestsFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUBGPProfilesFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUDomainFIPAclTemplatesFetcher.j"
@import "Fetchers/NUFloatingIPACLTemplatesFetcher.j"
@import "Fetchers/NUEgressQOSPoliciesFetcher.j"
@import "Fetchers/NUSharedNetworkResourcesFetcher.j"
@import "Fetchers/NULicensesFetcher.j"
@import "Fetchers/NULicenseStatusFetcher.j"
@import "Fetchers/NUMirrorDestinationsFetcher.j"
@import "Fetchers/NUVirtualFirewallPoliciesFetcher.j"
@import "Fetchers/NUSiteInfosFetcher.j"
@import "Fetchers/NUFloatingIpsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUCloudMgmtSystemsFetcher.j"
@import "Fetchers/NUUnderlaysFetcher.j"
@import "Fetchers/NUVNFCatalogsFetcher.j"
@import "Fetchers/NUVNFMetadatasFetcher.j"
@import "Fetchers/NUInfrastructureAccessProfilesFetcher.j"
@import "Fetchers/NUInfrastructureGatewayProfilesFetcher.j"
@import "Fetchers/NUInfrastructureVscProfilesFetcher.j"
@import "Fetchers/NUVNFThresholdPoliciesFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressQOSPoliciesFetcher.j"
@import "Fetchers/NUEnterprisesFetcher.j"
@import "Fetchers/NUEnterpriseProfilesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUZonesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUQosPolicersFetcher.j"
@import "Fetchers/NUCOSRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUVCenterVRSConfigsFetcher.j"
@import "Fetchers/NUDSCPRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUUserContextsFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUNSGatewayTemplatesFetcher.j"
@import "Fetchers/NUNSGGroupsFetcher.j"
@import "Fetchers/NUNSGPatchProfilesFetcher.j"
@import "Fetchers/NUNSRedundantGatewayGroupsFetcher.j"
@import "Fetchers/NUNSGUpgradeProfilesFetcher.j"
@import "Fetchers/NUVSPsFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatsCollectorInfosFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUDUCGroupsFetcher.j"
@import "Fetchers/NUMultiCastChannelMapsFetcher.j"
@import "Fetchers/NUAutoDiscoveredGatewaysFetcher.j"
@import "Fetchers/NUSystemConfigsFetcher.j"

NUMeAvatarType_BASE64 = @"BASE64";
NUMeAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUMeAvatarType_URL = @"URL";
NUMeEntityScope_ENTERPRISE = @"ENTERPRISE";
NUMeEntityScope_GLOBAL = @"GLOBAL";


/*!
    Object that identifies the user functions
*/
@implementation NUMe : NURESTAbstractRoot
{
    /*!
        AAR flow stats frequency
    */
    CPNumber _AARFlowStatsInterval @accessors(property=AARFlowStatsInterval);
    /*!
        AAR Probe stats frequency
    */
    CPNumber _AARProbeStatsInterval @accessors(property=AARProbeStatsInterval);
    /*!
        VSS flow stats frequency
    */
    CPNumber _VSSStatsInterval @accessors(property=VSSStatsInterval);
    /*!
        Last name of the user
    */
    CPString _lastName @accessors(property=lastName);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        First name of the user
    */
    CPString _firstName @accessors(property=firstName);
    /*!
        Status of the user account; true=disabled, false=not disabled; default value = false
    */
    BOOL _disabled @accessors(property=disabled);
    /*!
        elastic search address
    */
    CPString _elasticSearchAddress @accessors(property=elasticSearchAddress);
    /*!
        Enables flow statistics collection. It is needed for the VSS feature, and requires a valid VSS license. This option requires 'statisticsEnabled'.
    */
    BOOL _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Email address of the user
    */
    CPString _email @accessors(property=email);
    /*!
        Identifier of the enterprise.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Name of the enterprise.
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Mobile Number of the user
    */
    CPString _mobileNumber @accessors(property=mobileNumber);
    /*!
        This flag is used to indicate if statistics is enabled in the system. CSProot is expected to activate this through the enable statistics script.
    */
    BOOL _statisticsEnabled @accessors(property=statisticsEnabled);
    /*!
        URL to the avatar data associated with the enterprise. If the avatarType is URL then value of avatarData should an URL of the image. If the avatarType BASE64 then avatarData should be BASE64 encoded value of the image
    */
    CPString _avatarData @accessors(property=avatarData);
    /*!
        Avatar type.
    */
    CPString _avatarType @accessors(property=avatarType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUL4ServicesFetcher _childrenL4Services @accessors(property=childrenL4Services);
    NUVCenterEAMConfigsFetcher _childrenVCenterEAMConfigs @accessors(property=childrenVCenterEAMConfigs);
    NURateLimitersFetcher _childrenRateLimiters @accessors(property=childrenRateLimiters);
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUGatewayTemplatesFetcher _childrenGatewayTemplates @accessors(property=childrenGatewayTemplates);
    NUPATMappersFetcher _childrenPATMappers @accessors(property=childrenPATMappers);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUVCentersFetcher _childrenVCenters @accessors(property=childrenVCenters);
    NUVCenterHypervisorsFetcher _childrenVCenterHypervisors @accessors(property=childrenVCenterHypervisors);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NUPerformanceMonitorsFetcher _childrenPerformanceMonitors @accessors(property=childrenPerformanceMonitors);
    NUCertificatesFetcher _childrenCertificates @accessors(property=childrenCertificates);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetworkLayoutsFetcher _childrenNetworkLayouts @accessors(property=childrenNetworkLayouts);
    NUKeyServerMembersFetcher _childrenKeyServerMembers @accessors(property=childrenKeyServerMembers);
    NUZFBAutoAssignmentsFetcher _childrenZFBAutoAssignments @accessors(property=childrenZFBAutoAssignments);
    NUZFBRequestsFetcher _childrenZFBRequests @accessors(property=childrenZFBRequests);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUBGPProfilesFetcher _childrenBGPProfiles @accessors(property=childrenBGPProfiles);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUDomainFIPAclTemplatesFetcher _childrenDomainFIPAclTemplates @accessors(property=childrenDomainFIPAclTemplates);
    NUFloatingIPACLTemplatesFetcher _childrenFloatingIPACLTemplates @accessors(property=childrenFloatingIPACLTemplates);
    NUEgressQOSPoliciesFetcher _childrenEgressQOSPolicies @accessors(property=childrenEgressQOSPolicies);
    NUSharedNetworkResourcesFetcher _childrenSharedNetworkResources @accessors(property=childrenSharedNetworkResources);
    NULicensesFetcher _childrenLicenses @accessors(property=childrenLicenses);
    NULicenseStatusFetcher _childrenLicenseStatus @accessors(property=childrenLicenseStatus);
    NUMirrorDestinationsFetcher _childrenMirrorDestinations @accessors(property=childrenMirrorDestinations);
    NUVirtualFirewallPoliciesFetcher _childrenVirtualFirewallPolicies @accessors(property=childrenVirtualFirewallPolicies);
    NUSiteInfosFetcher _childrenSiteInfos @accessors(property=childrenSiteInfos);
    NUFloatingIpsFetcher _childrenFloatingIps @accessors(property=childrenFloatingIps);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUCloudMgmtSystemsFetcher _childrenCloudMgmtSystems @accessors(property=childrenCloudMgmtSystems);
    NUUnderlaysFetcher _childrenUnderlays @accessors(property=childrenUnderlays);
    NUVNFCatalogsFetcher _childrenVNFCatalogs @accessors(property=childrenVNFCatalogs);
    NUVNFMetadatasFetcher _childrenVNFMetadatas @accessors(property=childrenVNFMetadatas);
    NUInfrastructureAccessProfilesFetcher _childrenInfrastructureAccessProfiles @accessors(property=childrenInfrastructureAccessProfiles);
    NUInfrastructureGatewayProfilesFetcher _childrenInfrastructureGatewayProfiles @accessors(property=childrenInfrastructureGatewayProfiles);
    NUInfrastructureVscProfilesFetcher _childrenInfrastructureVscProfiles @accessors(property=childrenInfrastructureVscProfiles);
    NUVNFThresholdPoliciesFetcher _childrenVNFThresholdPolicies @accessors(property=childrenVNFThresholdPolicies);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdEntryTemplatesFetcher _childrenIngressAdvFwdEntryTemplates @accessors(property=childrenIngressAdvFwdEntryTemplates);
    NUIngressQOSPoliciesFetcher _childrenIngressQOSPolicies @accessors(property=childrenIngressQOSPolicies);
    NUEnterprisesFetcher _childrenEnterprises @accessors(property=childrenEnterprises);
    NUEnterpriseProfilesFetcher _childrenEnterpriseProfiles @accessors(property=childrenEnterpriseProfiles);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUZonesFetcher _childrenZones @accessors(property=childrenZones);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUQosPolicersFetcher _childrenQosPolicers @accessors(property=childrenQosPolicers);
    NUCOSRemarkingPolicyTablesFetcher _childrenCOSRemarkingPolicyTables @accessors(property=childrenCOSRemarkingPolicyTables);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUVCenterVRSConfigsFetcher _childrenVCenterVRSConfigs @accessors(property=childrenVCenterVRSConfigs);
    NUDSCPRemarkingPolicyTablesFetcher _childrenDSCPRemarkingPolicyTables @accessors(property=childrenDSCPRemarkingPolicyTables);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUUserContextsFetcher _childrenUserContexts @accessors(property=childrenUserContexts);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUNSGatewayTemplatesFetcher _childrenNSGatewayTemplates @accessors(property=childrenNSGatewayTemplates);
    NUNSGGroupsFetcher _childrenNSGGroups @accessors(property=childrenNSGGroups);
    NUNSGPatchProfilesFetcher _childrenNSGPatchProfiles @accessors(property=childrenNSGPatchProfiles);
    NUNSRedundantGatewayGroupsFetcher _childrenNSRedundantGatewayGroups @accessors(property=childrenNSRedundantGatewayGroups);
    NUNSGUpgradeProfilesFetcher _childrenNSGUpgradeProfiles @accessors(property=childrenNSGUpgradeProfiles);
    NUVSPsFetcher _childrenVSPs @accessors(property=childrenVSPs);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatsCollectorInfosFetcher _childrenStatsCollectorInfos @accessors(property=childrenStatsCollectorInfos);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUDUCGroupsFetcher _childrenDUCGroups @accessors(property=childrenDUCGroups);
    NUMultiCastChannelMapsFetcher _childrenMultiCastChannelMaps @accessors(property=childrenMultiCastChannelMaps);
    NUAutoDiscoveredGatewaysFetcher _childrenAutoDiscoveredGateways @accessors(property=childrenAutoDiscoveredGateways);
    NUSystemConfigsFetcher _childrenSystemConfigs @accessors(property=childrenSystemConfigs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"me";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"AARFlowStatsInterval"];
        [self exposeLocalKeyPathToREST:@"AARProbeStatsInterval"];
        [self exposeLocalKeyPathToREST:@"VSSStatsInterval"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"lastName"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"firstName"];
        [self exposeLocalKeyPathToREST:@"disabled"];
        [self exposeLocalKeyPathToREST:@"elasticSearchAddress"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"email"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"mobileNumber"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"userName"];
        [self exposeLocalKeyPathToREST:@"statisticsEnabled"];
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenL4Services = [NUL4ServicesFetcher fetcherWithParentObject:self];
        _childrenVCenterEAMConfigs = [NUVCenterEAMConfigsFetcher fetcherWithParentObject:self];
        _childrenRateLimiters = [NURateLimitersFetcher fetcherWithParentObject:self];
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenGatewayTemplates = [NUGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenPATMappers = [NUPATMappersFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenVCenters = [NUVCentersFetcher fetcherWithParentObject:self];
        _childrenVCenterHypervisors = [NUVCenterHypervisorsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenPerformanceMonitors = [NUPerformanceMonitorsFetcher fetcherWithParentObject:self];
        _childrenCertificates = [NUCertificatesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetworkLayouts = [NUNetworkLayoutsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMembers = [NUKeyServerMembersFetcher fetcherWithParentObject:self];
        _childrenZFBAutoAssignments = [NUZFBAutoAssignmentsFetcher fetcherWithParentObject:self];
        _childrenZFBRequests = [NUZFBRequestsFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenBGPProfiles = [NUBGPProfilesFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomainFIPAclTemplates = [NUDomainFIPAclTemplatesFetcher fetcherWithParentObject:self];
        _childrenFloatingIPACLTemplates = [NUFloatingIPACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressQOSPolicies = [NUEgressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenSharedNetworkResources = [NUSharedNetworkResourcesFetcher fetcherWithParentObject:self];
        _childrenLicenses = [NULicensesFetcher fetcherWithParentObject:self];
        _childrenLicenseStatus = [NULicenseStatusFetcher fetcherWithParentObject:self];
        _childrenMirrorDestinations = [NUMirrorDestinationsFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallPolicies = [NUVirtualFirewallPoliciesFetcher fetcherWithParentObject:self];
        _childrenSiteInfos = [NUSiteInfosFetcher fetcherWithParentObject:self];
        _childrenFloatingIps = [NUFloatingIpsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenCloudMgmtSystems = [NUCloudMgmtSystemsFetcher fetcherWithParentObject:self];
        _childrenUnderlays = [NUUnderlaysFetcher fetcherWithParentObject:self];
        _childrenVNFCatalogs = [NUVNFCatalogsFetcher fetcherWithParentObject:self];
        _childrenVNFMetadatas = [NUVNFMetadatasFetcher fetcherWithParentObject:self];
        _childrenInfrastructureAccessProfiles = [NUInfrastructureAccessProfilesFetcher fetcherWithParentObject:self];
        _childrenInfrastructureGatewayProfiles = [NUInfrastructureGatewayProfilesFetcher fetcherWithParentObject:self];
        _childrenInfrastructureVscProfiles = [NUInfrastructureVscProfilesFetcher fetcherWithParentObject:self];
        _childrenVNFThresholdPolicies = [NUVNFThresholdPoliciesFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdEntryTemplates = [NUIngressAdvFwdEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressQOSPolicies = [NUIngressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenEnterprises = [NUEnterprisesFetcher fetcherWithParentObject:self];
        _childrenEnterpriseProfiles = [NUEnterpriseProfilesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenZones = [NUZonesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenQosPolicers = [NUQosPolicersFetcher fetcherWithParentObject:self];
        _childrenCOSRemarkingPolicyTables = [NUCOSRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenVCenterVRSConfigs = [NUVCenterVRSConfigsFetcher fetcherWithParentObject:self];
        _childrenDSCPRemarkingPolicyTables = [NUDSCPRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenUserContexts = [NUUserContextsFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenNSGatewayTemplates = [NUNSGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenNSGGroups = [NUNSGGroupsFetcher fetcherWithParentObject:self];
        _childrenNSGPatchProfiles = [NUNSGPatchProfilesFetcher fetcherWithParentObject:self];
        _childrenNSRedundantGatewayGroups = [NUNSRedundantGatewayGroupsFetcher fetcherWithParentObject:self];
        _childrenNSGUpgradeProfiles = [NUNSGUpgradeProfilesFetcher fetcherWithParentObject:self];
        _childrenVSPs = [NUVSPsFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatsCollectorInfos = [NUStatsCollectorInfosFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenDUCGroups = [NUDUCGroupsFetcher fetcherWithParentObject:self];
        _childrenMultiCastChannelMaps = [NUMultiCastChannelMapsFetcher fetcherWithParentObject:self];
        _childrenAutoDiscoveredGateways = [NUAutoDiscoveredGatewaysFetcher fetcherWithParentObject:self];
        _childrenSystemConfigs = [NUSystemConfigsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end