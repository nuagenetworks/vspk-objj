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
@import "NUApplicationServicesFetcher.j"
@import "NUAppsFetcher.j"
@import "NUAutoDiscoverClustersFetcher.j"
@import "NUAutoDiscoverHypervisorFromClustersFetcher.j"
@import "NUAutoDiscoverHypervisorFromDatacentersFetcher.j"
@import "NUAutoDiscoveredGatewaysFetcher.j"
@import "NUAutodiscovereddatacentersFetcher.j"
@import "NUBGPNeighborsFetcher.j"
@import "NUBGPPeersFetcher.j"
@import "NUBGPProfilesFetcher.j"
@import "NUBootstrapActivationsFetcher.j"
@import "NUBootstrapsFetcher.j"
@import "NUBridgeInterfacesFetcher.j"
@import "NUCertificatesFetcher.j"
@import "NUCloudMgmtSystemsFetcher.j"
@import "NUDHCPOptionsFetcher.j"
@import "NUDSCPForwardingClassMappingsFetcher.j"
@import "NUDSCPForwardingClassTablesFetcher.j"
@import "NUDiskStatsFetcher.j"
@import "NUDomainFIPAclTemplateEntriesFetcher.j"
@import "NUDomainFIPAclTemplatesFetcher.j"
@import "NUDomainTemplatesFetcher.j"
@import "NUDomainsFetcher.j"
@import "NUEgressACLEntryTemplatesFetcher.j"
@import "NUEgressACLTemplatesFetcher.j"
@import "NUEgressQOSPoliciesFetcher.j"
@import "NUEndPointsFetcher.j"
@import "NUEnterpriseNetworksFetcher.j"
@import "NUEnterprisePermissionsFetcher.j"
@import "NUEnterpriseProfilesFetcher.j"
@import "NUEnterpriseSecuredDatasFetcher.j"
@import "NUEnterpriseSecuritiesFetcher.j"
@import "NUEnterprisesFetcher.j"
@import "NUEventLogsFetcher.j"
@import "NUExternalAppServicesFetcher.j"
@import "NUExternalServicesFetcher.j"
@import "NUFloatingIPACLTemplateEntriesFetcher.j"
@import "NUFloatingIPACLTemplatesFetcher.j"
@import "NUFloatingIpsFetcher.j"
@import "NUFlowForwardingPoliciesFetcher.j"
@import "NUFlowSecurityPoliciesFetcher.j"
@import "NUFlowsFetcher.j"
@import "NUGatewaySecuredDatasFetcher.j"
@import "NUGatewaySecuritiesFetcher.j"
@import "NUGatewaySecurityProfilesFetcher.j"
@import "NUGatewayTemplatesFetcher.j"
@import "NUGatewaysFetcher.j"
@import "NUGlobalMetadatasFetcher.j"
@import "NUGroupKeyEncryptionProfilesFetcher.j"
@import "NUGroupsFetcher.j"
@import "NUHSCsFetcher.j"
@import "NUHostInterfacesFetcher.j"
@import "NUIKECertificatesFetcher.j"
@import "NUIKEEncryptionprofilesFetcher.j"
@import "NUIKEGatewayConnectionsFetcher.j"
@import "NUIKEGatewayProfilesFetcher.j"
@import "NUIKEGatewaysFetcher.j"
@import "NUIKEPSKsFetcher.j"
@import "NUIKESubnetsFetcher.j"
@import "NUIPReservationsFetcher.j"
@import "NUInfrastructureConfigsFetcher.j"
@import "NUInfrastructureGatewayProfilesFetcher.j"
@import "NUInfrastructurePortProfilesFetcher.j"
@import "NUInfrastructureVscProfilesFetcher.j"
@import "NUIngressACLEntryTemplatesFetcher.j"
@import "NUIngressACLTemplatesFetcher.j"
@import "NUIngressAdvFwdEntryTemplatesFetcher.j"
@import "NUIngressAdvFwdTemplatesFetcher.j"
@import "NUIngressExternalServiceTemplateEntriesFetcher.j"
@import "NUIngressExternalServiceTemplatesFetcher.j"
@import "NUJobsFetcher.j"
@import "NUKeyServerMonitorEncryptedSeedsFetcher.j"
@import "NUKeyServerMonitorSEKsFetcher.j"
@import "NUKeyServerMonitorSeedsFetcher.j"
@import "NUKeyServerMonitorsFetcher.j"
@import "NUKeyServerNotificationsFetcher.j"
@import "NUL2DomainTemplatesFetcher.j"
@import "NUL2DomainsFetcher.j"
@import "NULDAPConfigurationsFetcher.j"
@import "NULicensesFetcher.j"
@import "NULicensestatusFetcher.j"
@import "NULocationsFetcher.j"
@import "NUMesFetcher.j"
@import "NUMetadataTagsFetcher.j"
@import "NUMetadatasFetcher.j"
@import "NUMirrorDestinationsFetcher.j"
@import "NUMonitoringPortsFetcher.j"
@import "NUMultiCastChannelMapsFetcher.j"
@import "NUMultiCastListsFetcher.j"
@import "NUMultiCastRangesFetcher.j"
@import "NUMultiNICVPortsFetcher.j"
@import "NUNATMapEntriesFetcher.j"
@import "NUNSGatewayTemplatesFetcher.j"
@import "NUNSGatewaysFetcher.j"
@import "NUNSPortStaticConfigurationsFetcher.j"
@import "NUNSPortTemplatesFetcher.j"
@import "NUNSPortsFetcher.j"
@import "NUNSRedundantGatewayGroupsFetcher.j"
@import "NUNetworkLayoutsFetcher.j"
@import "NUNetworkMacroGroupsFetcher.j"
@import "NUPATNATPoolsFetcher.j"
@import "NUPermissionsFetcher.j"
@import "NUPolicyDecisionsFetcher.j"
@import "NUPolicyGroupTemplatesFetcher.j"
@import "NUPolicyGroupsFetcher.j"
@import "NUPortTemplatesFetcher.j"
@import "NUPortsFetcher.j"
@import "NUPublicNetworkMacrosFetcher.j"
@import "NUQOSsFetcher.j"
@import "NURateLimitersFetcher.j"
@import "NURedirectionTargetTemplatesFetcher.j"
@import "NURedirectionTargetsFetcher.j"
@import "NURedundancyGroupsFetcher.j"
@import "NURedundantPortsFetcher.j"
@import "NURoutingPoliciesFetcher.j"
@import "NUSharedNetworkResourcesFetcher.j"
@import "NUSiteInfosFetcher.j"
@import "NUStaticRoutesFetcher.j"
@import "NUStatisticsFetcher.j"
@import "NUStatisticsPoliciesFetcher.j"
@import "NUStatsCollectorInfosFetcher.j"
@import "NUSubnetTemplatesFetcher.j"
@import "NUSubnetsFetcher.j"
@import "NUSystemConfigsFetcher.j"
@import "NUTCAsFetcher.j"
@import "NUTiersFetcher.j"
@import "NUUplinkRDsFetcher.j"
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
@import "NUVPNConnectionsFetcher.j"
@import "NUVPortMirrorsFetcher.j"
@import "NUVPortsFetcher.j"
@import "NUVRSAddressRangesFetcher.j"
@import "NUVRSsFetcher.j"
@import "NUVSCsFetcher.j"
@import "NUVSDComponentsFetcher.j"
@import "NUVSDsFetcher.j"
@import "NUVSPsFetcher.j"
@import "NUVirtualIPsFetcher.j"
@import "NUVrsMetricsFetcher.j"
@import "NUVsgRedundantPortsFetcher.j"
@import "NUWANServicesFetcher.j"
@import "NUZoneTemplatesFetcher.j"
@import "NUZonesFetcher.j"