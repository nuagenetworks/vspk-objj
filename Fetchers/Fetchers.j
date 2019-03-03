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

@import "NUAddressMapsFetcher.j"
@import "NUAddressRangesFetcher.j"
@import "NUAggregateMetadatasFetcher.j"
@import "NUAlarmsFetcher.j"
@import "NUAllAlarmsFetcher.j"
@import "NUAllGatewaysFetcher.j"
@import "NUAllRedundancyGroupsFetcher.j"
@import "NUApplicationBindingsFetcher.j"
@import "NUApplicationperformancemanagementbindingsFetcher.j"
@import "NUApplicationperformancemanagementsFetcher.j"
@import "NUApplicationsFetcher.j"
@import "NUAutoDiscoverClustersFetcher.j"
@import "NUAutoDiscoverHypervisorFromClustersFetcher.j"
@import "NUAutoDiscoveredGatewaysFetcher.j"
@import "NUAutodiscovereddatacentersFetcher.j"
@import "NUAvatarsFetcher.j"
@import "NUBFDSessionsFetcher.j"
@import "NUBGPNeighborsFetcher.j"
@import "NUBGPPeersFetcher.j"
@import "NUBGPProfilesFetcher.j"
@import "NUBRConnectionsFetcher.j"
@import "NUBootstrapActivationsFetcher.j"
@import "NUBootstrapsFetcher.j"
@import "NUBridgeInterfacesFetcher.j"
@import "NUBulkStatisticsFetcher.j"
@import "NUCOSRemarkingPoliciesFetcher.j"
@import "NUCOSRemarkingPolicyTablesFetcher.j"
@import "NUCSNATPoolsFetcher.j"
@import "NUCTranslationMapsFetcher.j"
@import "NUCaptivePortalProfilesFetcher.j"
@import "NUCertificatesFetcher.j"
@import "NUCloudMgmtSystemsFetcher.j"
@import "NUCommandsFetcher.j"
@import "NUConnectionendpointsFetcher.j"
@import "NUContainerInterfacesFetcher.j"
@import "NUContainerResyncsFetcher.j"
@import "NUContainersFetcher.j"
@import "NUCustomPropertiesFetcher.j"
@import "NUDHCPOptionsFetcher.j"
@import "NUDSCPForwardingClassMappingsFetcher.j"
@import "NUDSCPForwardingClassTablesFetcher.j"
@import "NUDSCPRemarkingPoliciesFetcher.j"
@import "NUDSCPRemarkingPolicyTablesFetcher.j"
@import "NUDUCGroupBindingsFetcher.j"
@import "NUDUCGroupsFetcher.j"
@import "NUDefaultGatewaysFetcher.j"
@import "NUDemarcationServicesFetcher.j"
@import "NUDeploymentFailuresFetcher.j"
@import "NUDestinationurlsFetcher.j"
@import "NUDiskStatsFetcher.j"
@import "NUDomainFIPAclTemplateEntriesFetcher.j"
@import "NUDomainFIPAclTemplatesFetcher.j"
@import "NUDomainTemplatesFetcher.j"
@import "NUDomainsFetcher.j"
@import "NUDownloadProgressFetcher.j"
@import "NUEgressACLEntryTemplatesFetcher.j"
@import "NUEgressACLTemplatesFetcher.j"
@import "NUEgressAdvFwdEntryTemplatesFetcher.j"
@import "NUEgressAdvFwdTemplatesFetcher.j"
@import "NUEgressProfilesFetcher.j"
@import "NUEgressQOSPoliciesFetcher.j"
@import "NUEnterpriseNetworksFetcher.j"
@import "NUEnterprisePermissionsFetcher.j"
@import "NUEnterpriseProfilesFetcher.j"
@import "NUEnterpriseSecuredDatasFetcher.j"
@import "NUEnterpriseSecuritiesFetcher.j"
@import "NUEnterprisesFetcher.j"
@import "NUEventLogsFetcher.j"
@import "NUFirewallAclsFetcher.j"
@import "NUFirewallRulesFetcher.j"
@import "NUFloatingIpsFetcher.j"
@import "NUForwardingPathListEntriesFetcher.j"
@import "NUForwardingPathListsFetcher.j"
@import "NUGatewayRedundantPortsFetcher.j"
@import "NUGatewaySecuredDatasFetcher.j"
@import "NUGatewaySecuritiesFetcher.j"
@import "NUGatewayTemplatesFetcher.j"
@import "NUGatewaysFetcher.j"
@import "NUGatewaysLocationsFetcher.j"
@import "NUGlobalMetadatasFetcher.j"
@import "NUGroupKeyEncryptionProfilesFetcher.j"
@import "NUGroupsFetcher.j"
@import "NUHSCsFetcher.j"
@import "NUHostInterfacesFetcher.j"
@import "NUIKECertificatesFetcher.j"
@import "NUIKEEncryptionprofilesFetcher.j"
@import "NUIKEGatewayConfigsFetcher.j"
@import "NUIKEGatewayConnectionsFetcher.j"
@import "NUIKEGatewayProfilesFetcher.j"
@import "NUIKEGatewaysFetcher.j"
@import "NUIKEPSKsFetcher.j"
@import "NUIKESubnetsFetcher.j"
@import "NUIPFilterProfilesFetcher.j"
@import "NUIPReservationsFetcher.j"
@import "NUIPv6FilterProfilesFetcher.j"
@import "NUInfrastructureAccessProfilesFetcher.j"
@import "NUInfrastructureConfigsFetcher.j"
@import "NUInfrastructureEVDFProfilesFetcher.j"
@import "NUInfrastructureGatewayProfilesFetcher.j"
@import "NUInfrastructureVscProfilesFetcher.j"
@import "NUIngressACLEntryTemplatesFetcher.j"
@import "NUIngressACLTemplatesFetcher.j"
@import "NUIngressAdvFwdEntryTemplatesFetcher.j"
@import "NUIngressAdvFwdTemplatesFetcher.j"
@import "NUIngressProfilesFetcher.j"
@import "NUIngressQOSPoliciesFetcher.j"
@import "NUJobsFetcher.j"
@import "NUKeyServerMembersFetcher.j"
@import "NUKeyServerMonitorEncryptedSeedsFetcher.j"
@import "NUKeyServerMonitorSEKsFetcher.j"
@import "NUKeyServerMonitorSeedsFetcher.j"
@import "NUKeyServerMonitorsFetcher.j"
@import "NUL2DomainTemplatesFetcher.j"
@import "NUL2DomainsFetcher.j"
@import "NUL4ServiceGroupsFetcher.j"
@import "NUL4ServicesFetcher.j"
@import "NUL7applicationsignaturesFetcher.j"
@import "NULDAPConfigurationsFetcher.j"
@import "NULTEInformationsFetcher.j"
@import "NULicenseStatusFetcher.j"
@import "NULicensesFetcher.j"
@import "NULinksFetcher.j"
@import "NULocationsFetcher.j"
@import "NULtestatisticsFetcher.j"
@import "NUMACFilterProfilesFetcher.j"
@import "NUMesFetcher.j"
@import "NUMetadatasFetcher.j"
@import "NUMirrorDestinationsFetcher.j"
@import "NUMonitoringPortsFetcher.j"
@import "NUMonitorscopesFetcher.j"
@import "NUMultiCastChannelMapsFetcher.j"
@import "NUMultiCastListsFetcher.j"
@import "NUMultiCastRangesFetcher.j"
@import "NUMultiNICVPortsFetcher.j"
@import "NUNATMapEntriesFetcher.j"
@import "NUNSGGroupsFetcher.j"
@import "NUNSGInfosFetcher.j"
@import "NUNSGPatchProfilesFetcher.j"
@import "NUNSGRoutingPolicyBindingsFetcher.j"
@import "NUNSGUpgradeProfilesFetcher.j"
@import "NUNSGatewayMonitorsFetcher.j"
@import "NUNSGatewaySummariesFetcher.j"
@import "NUNSGatewayTemplatesFetcher.j"
@import "NUNSGatewaysCountsFetcher.j"
@import "NUNSGatewaysFetcher.j"
@import "NUNSPortInfosFetcher.j"
@import "NUNSPortTemplatesFetcher.j"
@import "NUNSPortsFetcher.j"
@import "NUNSRedundantGatewayGroupsFetcher.j"
@import "NUNetconfManagersFetcher.j"
@import "NUNetconfProfilesFetcher.j"
@import "NUNetconfSessionsFetcher.j"
@import "NUNetworkLayoutsFetcher.j"
@import "NUNetworkMacroGroupsFetcher.j"
@import "NUNetworkPerformanceBindingsFetcher.j"
@import "NUNetworkPerformanceMeasurementsFetcher.j"
@import "NUNextHopsFetcher.j"
@import "NUOSPFAreasFetcher.j"
@import "NUOSPFInstancesFetcher.j"
@import "NUOSPFInterfacesFetcher.j"
@import "NUOverlayAddressPoolsFetcher.j"
@import "NUOverlayManagementProfilesFetcher.j"
@import "NUOverlayManagementSubnetProfilesFetcher.j"
@import "NUOverlayMirrorDestinationTemplatesFetcher.j"
@import "NUOverlayMirrorDestinationsFetcher.j"
@import "NUOverlayPATNATEntriesFetcher.j"
@import "NUPATIPEntriesFetcher.j"
@import "NUPATMappersFetcher.j"
@import "NUPATNATPoolsFetcher.j"
@import "NUPGExpressionTemplatesFetcher.j"
@import "NUPGExpressionsFetcher.j"
@import "NUPSNATPoolsFetcher.j"
@import "NUPSPATMapsFetcher.j"
@import "NUPTranslationMapsFetcher.j"
@import "NUPatchsFetcher.j"
@import "NUPerformanceMonitorsFetcher.j"
@import "NUPermissionsFetcher.j"
@import "NUPolicyDecisionsFetcher.j"
@import "NUPolicyEntriesFetcher.j"
@import "NUPolicyGroupCategoriesFetcher.j"
@import "NUPolicyGroupTemplatesFetcher.j"
@import "NUPolicyGroupsFetcher.j"
@import "NUPolicyObjectGroupsFetcher.j"
@import "NUPolicyStatementsFetcher.j"
@import "NUPortMappingsFetcher.j"
@import "NUPortTemplatesFetcher.j"
@import "NUPortsFetcher.j"
@import "NUProxyARPFiltersFetcher.j"
@import "NUPublicNetworkMacrosFetcher.j"
@import "NUQOSsFetcher.j"
@import "NUQosPolicersFetcher.j"
@import "NURateLimitersFetcher.j"
@import "NURedirectionTargetTemplatesFetcher.j"
@import "NURedirectionTargetsFetcher.j"
@import "NURedundancyGroupsFetcher.j"
@import "NURedundantPortsFetcher.j"
@import "NURoutingPoliciesFetcher.j"
@import "NUSAPEgressQoSProfilesFetcher.j"
@import "NUSAPIngressQoSProfilesFetcher.j"
@import "NUSPATSourcesPoolsFetcher.j"
@import "NUSSHKeysFetcher.j"
@import "NUSSIDConnectionsFetcher.j"
@import "NUSaaSApplicationGroupsFetcher.j"
@import "NUSaaSApplicationTypesFetcher.j"
@import "NUSharedNetworkResourcesFetcher.j"
@import "NUShuntLinksFetcher.j"
@import "NUSiteInfosFetcher.j"
@import "NUStaticRoutesFetcher.j"
@import "NUStatisticsFetcher.j"
@import "NUStatisticsPoliciesFetcher.j"
@import "NUStatsCollectorInfosFetcher.j"
@import "NUSubnetTemplatesFetcher.j"
@import "NUSubnetsFetcher.j"
@import "NUSyslogDestinationsFetcher.j"
@import "NUSystemConfigsFetcher.j"
@import "NUTCAsFetcher.j"
@import "NUTiersFetcher.j"
@import "NUTrunksFetcher.j"
@import "NUUnderlaysFetcher.j"
@import "NUUplinkConnectionsFetcher.j"
@import "NUUplinkRDsFetcher.j"
@import "NUUserContextsFetcher.j"
@import "NUUsersFetcher.j"
@import "NUVCenterClustersFetcher.j"
@import "NUVCenterDataCentersFetcher.j"
@import "NUVCenterEAMConfigsFetcher.j"
@import "NUVCenterHypervisorsFetcher.j"
@import "NUVCenterVRSConfigsFetcher.j"
@import "NUVCentersFetcher.j"
@import "NUVLANTemplatesFetcher.j"
@import "NUVLANsFetcher.j"
@import "NUVMInterfacesFetcher.j"
@import "NUVMResyncsFetcher.j"
@import "NUVMsFetcher.j"
@import "NUVNFCatalogsFetcher.j"
@import "NUVNFDescriptorsFetcher.j"
@import "NUVNFDomainMappingsFetcher.j"
@import "NUVNFInterfaceDescriptorsFetcher.j"
@import "NUVNFInterfacesFetcher.j"
@import "NUVNFMetadatasFetcher.j"
@import "NUVNFThresholdPoliciesFetcher.j"
@import "NUVNFsFetcher.j"
@import "NUVPNConnectionsFetcher.j"
@import "NUVPortMirrorsFetcher.j"
@import "NUVPortsFetcher.j"
@import "NUVRSAddressRangesFetcher.j"
@import "NUVRSMetricsFetcher.j"
@import "NUVRSRedeploymentpoliciesFetcher.j"
@import "NUVRSsFetcher.j"
@import "NUVSCsFetcher.j"
@import "NUVSDComponentsFetcher.j"
@import "NUVSDsFetcher.j"
@import "NUVSPsFetcher.j"
@import "NUVirtualFirewallPoliciesFetcher.j"
@import "NUVirtualFirewallRulesFetcher.j"
@import "NUVirtualIPsFetcher.j"
@import "NUVsgRedundantPortsFetcher.j"
@import "NUWANServicesFetcher.j"
@import "NUWebCategoriesFetcher.j"
@import "NUWebDomainNamesFetcher.j"
@import "NUWirelessPortsFetcher.j"
@import "NUZFBAutoAssignmentsFetcher.j"
@import "NUZFBRequestsFetcher.j"
@import "NUZoneTemplatesFetcher.j"
@import "NUZonesFetcher.j"
