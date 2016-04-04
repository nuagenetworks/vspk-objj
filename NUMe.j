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

@import "Fetchers/NUApplicationServicesFetcher.j"
@import "Fetchers/NUAutoDiscoveredGatewaysFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUBGPProfilesFetcher.j"
@import "Fetchers/NUCertificatesFetcher.j"
@import "Fetchers/NUCloudMgmtSystemsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUVCenterEAMConfigsFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUDomainFIPAclTemplatesFetcher.j"
@import "Fetchers/NUFloatingIPACLTemplatesFetcher.j"
@import "Fetchers/NUEgressQOSPoliciesFetcher.j"
@import "Fetchers/NUEnterprisesFetcher.j"
@import "Fetchers/NUEnterpriseProfilesFetcher.j"
@import "Fetchers/NUExternalAppServicesFetcher.j"
@import "Fetchers/NUExternalServicesFetcher.j"
@import "Fetchers/NUFloatingIpsFetcher.j"
@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUGatewayTemplatesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NUInfrastructureGatewayProfilesFetcher.j"
@import "Fetchers/NUInfrastructurePortProfilesFetcher.j"
@import "Fetchers/NUInfrastructureVscProfilesFetcher.j"
@import "Fetchers/NUIngressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdEntryTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUL2DomainsFetcher.j"
@import "Fetchers/NULicensesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUMetadataTagsFetcher.j"
@import "Fetchers/NUMirrorDestinationsFetcher.j"
@import "Fetchers/NUMultiCastChannelMapsFetcher.j"
@import "Fetchers/NUNetworkLayoutsFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUNSGatewayTemplatesFetcher.j"
@import "Fetchers/NUNSRedundantGatewayGroupsFetcher.j"
@import "Fetchers/NUNSPortStaticConfigurationsFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NURateLimitersFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUSharedNetworkResourcesFetcher.j"
@import "Fetchers/NUSiteInfosFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatsCollectorInfosFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUSystemConfigsFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUUplinkRDsFetcher.j"
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUVCentersFetcher.j"
@import "Fetchers/NUVCenterHypervisorsFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVCenterVRSConfigsFetcher.j"
@import "Fetchers/NUVSPsFetcher.j"
@import "Fetchers/NUZonesFetcher.j"

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
        URL to the avatar data associated with the enterprise. If the avatarType is URL then value of avatarData should an URL of the image. If the avatarType BASE64 then avatarData should be BASE64 encoded value of the image
    */
    CPString _avatarData @accessors(property=avatarData);
    /*!
        Avatar type.
    */
    CPString _avatarType @accessors(property=avatarType);
    /*!
        Status of the user account; true=disabled, false=not disabled; default value = false
    */
    BOOL _disabled @accessors(property=disabled);
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
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        First name of the user
    */
    CPString _firstName @accessors(property=firstName);
    /*!
        Last name of the user
    */
    CPString _lastName @accessors(property=lastName);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Mobile Number of the user
    */
    CPString _mobileNumber @accessors(property=mobileNumber);
    
    NUApplicationServicesFetcher _childrenApplicationServices @accessors(property=childrenApplicationServices);
    NUAutoDiscoveredGatewaysFetcher _childrenAutoDiscoveredGateways @accessors(property=childrenAutoDiscoveredGateways);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUBGPProfilesFetcher _childrenBGPProfiles @accessors(property=childrenBGPProfiles);
    NUCertificatesFetcher _childrenCertificates @accessors(property=childrenCertificates);
    NUCloudMgmtSystemsFetcher _childrenCloudMgmtSystems @accessors(property=childrenCloudMgmtSystems);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUVCenterEAMConfigsFetcher _childrenVCenterEAMConfigs @accessors(property=childrenVCenterEAMConfigs);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUDomainFIPAclTemplatesFetcher _childrenDomainFIPAclTemplates @accessors(property=childrenDomainFIPAclTemplates);
    NUFloatingIPACLTemplatesFetcher _childrenFloatingIPACLTemplates @accessors(property=childrenFloatingIPACLTemplates);
    NUEgressQOSPoliciesFetcher _childrenEgressQOSPolicies @accessors(property=childrenEgressQOSPolicies);
    NUEnterprisesFetcher _childrenEnterprises @accessors(property=childrenEnterprises);
    NUEnterpriseProfilesFetcher _childrenEnterpriseProfiles @accessors(property=childrenEnterpriseProfiles);
    NUExternalAppServicesFetcher _childrenExternalAppServices @accessors(property=childrenExternalAppServices);
    NUExternalServicesFetcher _childrenExternalServices @accessors(property=childrenExternalServices);
    NUFloatingIpsFetcher _childrenFloatingIps @accessors(property=childrenFloatingIps);
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUGatewayTemplatesFetcher _childrenGatewayTemplates @accessors(property=childrenGatewayTemplates);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NUInfrastructureGatewayProfilesFetcher _childrenInfrastructureGatewayProfiles @accessors(property=childrenInfrastructureGatewayProfiles);
    NUInfrastructurePortProfilesFetcher _childrenInfrastructurePortProfiles @accessors(property=childrenInfrastructurePortProfiles);
    NUInfrastructureVscProfilesFetcher _childrenInfrastructureVscProfiles @accessors(property=childrenInfrastructureVscProfiles);
    NUIngressACLEntryTemplatesFetcher _childrenIngressACLEntryTemplates @accessors(property=childrenIngressACLEntryTemplates);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdEntryTemplatesFetcher _childrenIngressAdvFwdEntryTemplates @accessors(property=childrenIngressAdvFwdEntryTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NULicensesFetcher _childrenLicenses @accessors(property=childrenLicenses);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUMetadataTagsFetcher _childrenMetadataTags @accessors(property=childrenMetadataTags);
    NUMirrorDestinationsFetcher _childrenMirrorDestinations @accessors(property=childrenMirrorDestinations);
    NUMultiCastChannelMapsFetcher _childrenMultiCastChannelMaps @accessors(property=childrenMultiCastChannelMaps);
    NUNetworkLayoutsFetcher _childrenNetworkLayouts @accessors(property=childrenNetworkLayouts);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUNSGatewayTemplatesFetcher _childrenNSGatewayTemplates @accessors(property=childrenNSGatewayTemplates);
    NUNSRedundantGatewayGroupsFetcher _childrenNSRedundantGatewayGroups @accessors(property=childrenNSRedundantGatewayGroups);
    NUNSPortStaticConfigurationsFetcher _childrenNSPortStaticConfigurations @accessors(property=childrenNSPortStaticConfigurations);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NURateLimitersFetcher _childrenRateLimiters @accessors(property=childrenRateLimiters);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUSharedNetworkResourcesFetcher _childrenSharedNetworkResources @accessors(property=childrenSharedNetworkResources);
    NUSiteInfosFetcher _childrenSiteInfos @accessors(property=childrenSiteInfos);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatsCollectorInfosFetcher _childrenStatsCollectorInfos @accessors(property=childrenStatsCollectorInfos);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUSystemConfigsFetcher _childrenSystemConfigs @accessors(property=childrenSystemConfigs);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUUplinkRDsFetcher _childrenUplinkRDs @accessors(property=childrenUplinkRDs);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUVCentersFetcher _childrenVCenters @accessors(property=childrenVCenters);
    NUVCenterHypervisorsFetcher _childrenVCenterHypervisors @accessors(property=childrenVCenterHypervisors);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVCenterVRSConfigsFetcher _childrenVCenterVRSConfigs @accessors(property=childrenVCenterVRSConfigs);
    NUVSPsFetcher _childrenVSPs @accessors(property=childrenVSPs);
    NUZonesFetcher _childrenZones @accessors(property=childrenZones);
    
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
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"disabled"];
        [self exposeLocalKeyPathToREST:@"email"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"firstName"];
        [self exposeLocalKeyPathToREST:@"lastName"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"mobileNumber"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"userName"];
        
        _childrenApplicationServices = [NUApplicationServicesFetcher fetcherWithParentObject:self];
        _childrenAutoDiscoveredGateways = [NUAutoDiscoveredGatewaysFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenBGPProfiles = [NUBGPProfilesFetcher fetcherWithParentObject:self];
        _childrenCertificates = [NUCertificatesFetcher fetcherWithParentObject:self];
        _childrenCloudMgmtSystems = [NUCloudMgmtSystemsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenVCenterEAMConfigs = [NUVCenterEAMConfigsFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomainFIPAclTemplates = [NUDomainFIPAclTemplatesFetcher fetcherWithParentObject:self];
        _childrenFloatingIPACLTemplates = [NUFloatingIPACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressQOSPolicies = [NUEgressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenEnterprises = [NUEnterprisesFetcher fetcherWithParentObject:self];
        _childrenEnterpriseProfiles = [NUEnterpriseProfilesFetcher fetcherWithParentObject:self];
        _childrenExternalAppServices = [NUExternalAppServicesFetcher fetcherWithParentObject:self];
        _childrenExternalServices = [NUExternalServicesFetcher fetcherWithParentObject:self];
        _childrenFloatingIps = [NUFloatingIpsFetcher fetcherWithParentObject:self];
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenGatewayTemplates = [NUGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenInfrastructureGatewayProfiles = [NUInfrastructureGatewayProfilesFetcher fetcherWithParentObject:self];
        _childrenInfrastructurePortProfiles = [NUInfrastructurePortProfilesFetcher fetcherWithParentObject:self];
        _childrenInfrastructureVscProfiles = [NUInfrastructureVscProfilesFetcher fetcherWithParentObject:self];
        _childrenIngressACLEntryTemplates = [NUIngressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdEntryTemplates = [NUIngressAdvFwdEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenLicenses = [NULicensesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadataTags = [NUMetadataTagsFetcher fetcherWithParentObject:self];
        _childrenMirrorDestinations = [NUMirrorDestinationsFetcher fetcherWithParentObject:self];
        _childrenMultiCastChannelMaps = [NUMultiCastChannelMapsFetcher fetcherWithParentObject:self];
        _childrenNetworkLayouts = [NUNetworkLayoutsFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenNSGatewayTemplates = [NUNSGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenNSRedundantGatewayGroups = [NUNSRedundantGatewayGroupsFetcher fetcherWithParentObject:self];
        _childrenNSPortStaticConfigurations = [NUNSPortStaticConfigurationsFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenRateLimiters = [NURateLimitersFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenSharedNetworkResources = [NUSharedNetworkResourcesFetcher fetcherWithParentObject:self];
        _childrenSiteInfos = [NUSiteInfosFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatsCollectorInfos = [NUStatsCollectorInfosFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenSystemConfigs = [NUSystemConfigsFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenUplinkRDs = [NUUplinkRDsFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenVCenters = [NUVCentersFetcher fetcherWithParentObject:self];
        _childrenVCenterHypervisors = [NUVCenterHypervisorsFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVCenterVRSConfigs = [NUVCenterVRSConfigsFetcher fetcherWithParentObject:self];
        _childrenVSPs = [NUVSPsFetcher fetcherWithParentObject:self];
        _childrenZones = [NUZonesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end