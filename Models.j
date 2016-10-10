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

@import <Bambou/NURESTModelController.j>
@import "Fetchers/Fetchers.j"

@import "NUAddressMap.j"
@import "NUAddressRange.j"
@import "NUAggregateMetadata.j"
@import "NUAlarm.j"
@import "NUAllAlarm.j"
@import "NUApplication.j"
@import "NUApplicationBinding.j"
@import "NUApplicationService.j"
@import "NUApplicationperformancemanagement.j"
@import "NUApplicationperformancemanagementbinding.j"
@import "NUAutoDiscoverCluster.j"
@import "NUAutoDiscoverHypervisorFromCluster.j"
@import "NUAutoDiscoveredGateway.j"
@import "NUAutodiscovereddatacenter.j"
@import "NUAvatar.j"
@import "NUBGPNeighbor.j"
@import "NUBGPPeer.j"
@import "NUBGPProfile.j"
@import "NUBRConnection.j"
@import "NUBootstrap.j"
@import "NUBootstrapActivation.j"
@import "NUBridgeInterface.j"
@import "NUBulkStatistics.j"
@import "NUCertificate.j"
@import "NUCloudMgmtSystem.j"
@import "NUContainer.j"
@import "NUContainerInterface.j"
@import "NUContainerResync.j"
@import "NUDHCPOption.j"
@import "NUDSCPForwardingClassMapping.j"
@import "NUDSCPForwardingClassTable.j"
@import "NUDemarcationService.j"
@import "NUDiskStat.j"
@import "NUDomain.j"
@import "NUDomainFIPAclTemplate.j"
@import "NUDomainFIPAclTemplateEntry.j"
@import "NUDomainTemplate.j"
@import "NUEgressACLEntryTemplate.j"
@import "NUEgressACLTemplate.j"
@import "NUEgressQOSPolicy.j"
@import "NUEndPoint.j"
@import "NUEnterprise.j"
@import "NUEnterpriseNetwork.j"
@import "NUEnterprisePermission.j"
@import "NUEnterpriseProfile.j"
@import "NUEnterpriseSecuredData.j"
@import "NUEnterpriseSecurity.j"
@import "NUEventLog.j"
@import "NUExternalAppService.j"
@import "NUExternalService.j"
@import "NUFloatingIPACLTemplate.j"
@import "NUFloatingIPACLTemplateEntry.j"
@import "NUFloatingIp.j"
@import "NUFlow.j"
@import "NUFlowForwardingPolicy.j"
@import "NUFlowSecurityPolicy.j"
@import "NUGateway.j"
@import "NUGatewaySecuredData.j"
@import "NUGatewaySecurity.j"
@import "NUGatewayTemplate.j"
@import "NUGlobalMetadata.j"
@import "NUGroup.j"
@import "NUGroupKeyEncryptionProfile.j"
@import "NUHSC.j"
@import "NUHostInterface.j"
@import "NUIKECertificate.j"
@import "NUIKEEncryptionprofile.j"
@import "NUIKEGateway.j"
@import "NUIKEGatewayConfig.j"
@import "NUIKEGatewayConnection.j"
@import "NUIKEGatewayProfile.j"
@import "NUIKEPSK.j"
@import "NUIKESubnet.j"
@import "NUIPReservation.j"
@import "NUInfrastructureConfig.j"
@import "NUInfrastructureGatewayProfile.j"
@import "NUInfrastructureVscProfile.j"
@import "NUInfrastructureaccessprofile.j"
@import "NUIngressACLEntryTemplate.j"
@import "NUIngressACLTemplate.j"
@import "NUIngressAdvFwdEntryTemplate.j"
@import "NUIngressAdvFwdTemplate.j"
@import "NUIngressExternalServiceTemplate.j"
@import "NUIngressExternalServiceTemplateEntry.j"
@import "NUJob.j"
@import "NUKeyServerMember.j"
@import "NUKeyServerMonitor.j"
@import "NUKeyServerMonitorEncryptedSeed.j"
@import "NUKeyServerMonitorSEK.j"
@import "NUKeyServerMonitorSeed.j"
@import "NUKeyServerNotification.j"
@import "NUL2Domain.j"
@import "NUL2DomainTemplate.j"
@import "NUL7applicationsignature.j"
@import "NULDAPConfiguration.j"
@import "NULicense.j"
@import "NULicenseStatus.j"
@import "NULink.j"
@import "NULocation.j"
@import "NUMe.j"
@import "NUMetadata.j"
@import "NUMetadataTag.j"
@import "NUMirrorDestination.j"
@import "NUMonitoringPort.j"
@import "NUMonitorscope.j"
@import "NUMultiCastChannelMap.j"
@import "NUMultiCastList.j"
@import "NUMultiCastRange.j"
@import "NUMultiNICVPort.j"
@import "NUNATMapEntry.j"
@import "NUNSGInfo.j"
@import "NUNSGateway.j"
@import "NUNSGatewayTemplate.j"
@import "NUNSPort.j"
@import "NUNSPortTemplate.j"
@import "NUNSRedundantGatewayGroup.j"
@import "NUNetworkLayout.j"
@import "NUNetworkMacroGroup.j"
@import "NUNetworkPerformanceBinding.j"
@import "NUNetworkPerformanceMeasurement.j"
@import "NUNextHop.j"
@import "NUNextHopAddress.j"
@import "NUOverlayAddressPool.j"
@import "NUOverlayPATNATEntry.j"
@import "NUPATIPEntry.j"
@import "NUPATMapper.j"
@import "NUPATNATPool.j"
@import "NUPerformanceMonitor.j"
@import "NUPermission.j"
@import "NUPolicyDecision.j"
@import "NUPolicyGroup.j"
@import "NUPolicyGroupTemplate.j"
@import "NUPort.j"
@import "NUPortMapping.j"
@import "NUPortTemplate.j"
@import "NUPublicNetworkMacro.j"
@import "NUQOS.j"
@import "NURateLimiter.j"
@import "NURedirectionTarget.j"
@import "NURedirectionTargetTemplate.j"
@import "NURedundancyGroup.j"
@import "NURedundantPort.j"
@import "NURoutingPolicy.j"
@import "NUSharedNetworkResource.j"
@import "NUSiteInfo.j"
@import "NUStaticRoute.j"
@import "NUStatistics.j"
@import "NUStatisticsPolicy.j"
@import "NUStatsCollectorInfo.j"
@import "NUSubnet.j"
@import "NUSubnetTemplate.j"
@import "NUSystemConfig.j"
@import "NUTCA.j"
@import "NUTier.j"
@import "NUUplinkConnection.j"
@import "NUUplinkRD.j"
@import "NUUser.j"
@import "NUVCenter.j"
@import "NUVCenterCluster.j"
@import "NUVCenterDataCenter.j"
@import "NUVCenterEAMConfig.j"
@import "NUVCenterHypervisor.j"
@import "NUVCenterVRSConfig.j"
@import "NUVLAN.j"
@import "NUVLANTemplate.j"
@import "NUVM.j"
@import "NUVMInterface.j"
@import "NUVMResync.j"
@import "NUVPNConnection.j"
@import "NUVPort.j"
@import "NUVPortMirror.j"
@import "NUVRS.j"
@import "NUVRSAddressRange.j"
@import "NUVRSMetrics.j"
@import "NUVRSRedeploymentpolicy.j"
@import "NUVSC.j"
@import "NUVSD.j"
@import "NUVSDComponent.j"
@import "NUVSP.j"
@import "NUVia.j"
@import "NUVirtualIP.j"
@import "NUVsgRedundantPort.j"
@import "NUWANService.j"
@import "NUZFBAutoAssignment.j"
@import "NUZFBRequest.j"
@import "NUZone.j"
@import "NUZoneTemplate.j"


[[NURESTModelController defaultController] registerModelClass:NUAddressMap];
[[NURESTModelController defaultController] registerModelClass:NUAddressRange];
[[NURESTModelController defaultController] registerModelClass:NUAggregateMetadata];
[[NURESTModelController defaultController] registerModelClass:NUAlarm];
[[NURESTModelController defaultController] registerModelClass:NUAllAlarm];
[[NURESTModelController defaultController] registerModelClass:NUApplication];
[[NURESTModelController defaultController] registerModelClass:NUApplicationBinding];
[[NURESTModelController defaultController] registerModelClass:NUApplicationService];
[[NURESTModelController defaultController] registerModelClass:NUApplicationperformancemanagement];
[[NURESTModelController defaultController] registerModelClass:NUApplicationperformancemanagementbinding];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoverCluster];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoverHypervisorFromCluster];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoveredGateway];
[[NURESTModelController defaultController] registerModelClass:NUAutodiscovereddatacenter];
[[NURESTModelController defaultController] registerModelClass:NUAvatar];
[[NURESTModelController defaultController] registerModelClass:NUBGPNeighbor];
[[NURESTModelController defaultController] registerModelClass:NUBGPPeer];
[[NURESTModelController defaultController] registerModelClass:NUBGPProfile];
[[NURESTModelController defaultController] registerModelClass:NUBRConnection];
[[NURESTModelController defaultController] registerModelClass:NUBootstrap];
[[NURESTModelController defaultController] registerModelClass:NUBootstrapActivation];
[[NURESTModelController defaultController] registerModelClass:NUBridgeInterface];
[[NURESTModelController defaultController] registerModelClass:NUBulkStatistics];
[[NURESTModelController defaultController] registerModelClass:NUCertificate];
[[NURESTModelController defaultController] registerModelClass:NUCloudMgmtSystem];
[[NURESTModelController defaultController] registerModelClass:NUContainer];
[[NURESTModelController defaultController] registerModelClass:NUContainerInterface];
[[NURESTModelController defaultController] registerModelClass:NUContainerResync];
[[NURESTModelController defaultController] registerModelClass:NUDHCPOption];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassMapping];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassTable];
[[NURESTModelController defaultController] registerModelClass:NUDemarcationService];
[[NURESTModelController defaultController] registerModelClass:NUDiskStat];
[[NURESTModelController defaultController] registerModelClass:NUDomain];
[[NURESTModelController defaultController] registerModelClass:NUDomainFIPAclTemplate];
[[NURESTModelController defaultController] registerModelClass:NUDomainFIPAclTemplateEntry];
[[NURESTModelController defaultController] registerModelClass:NUDomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressQOSPolicy];
[[NURESTModelController defaultController] registerModelClass:NUEndPoint];
[[NURESTModelController defaultController] registerModelClass:NUEnterprise];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseNetwork];
[[NURESTModelController defaultController] registerModelClass:NUEnterprisePermission];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseProfile];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseSecuredData];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseSecurity];
[[NURESTModelController defaultController] registerModelClass:NUEventLog];
[[NURESTModelController defaultController] registerModelClass:NUExternalAppService];
[[NURESTModelController defaultController] registerModelClass:NUExternalService];
[[NURESTModelController defaultController] registerModelClass:NUFloatingIPACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUFloatingIPACLTemplateEntry];
[[NURESTModelController defaultController] registerModelClass:NUFloatingIp];
[[NURESTModelController defaultController] registerModelClass:NUFlow];
[[NURESTModelController defaultController] registerModelClass:NUFlowForwardingPolicy];
[[NURESTModelController defaultController] registerModelClass:NUFlowSecurityPolicy];
[[NURESTModelController defaultController] registerModelClass:NUGateway];
[[NURESTModelController defaultController] registerModelClass:NUGatewaySecuredData];
[[NURESTModelController defaultController] registerModelClass:NUGatewaySecurity];
[[NURESTModelController defaultController] registerModelClass:NUGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUGlobalMetadata];
[[NURESTModelController defaultController] registerModelClass:NUGroup];
[[NURESTModelController defaultController] registerModelClass:NUGroupKeyEncryptionProfile];
[[NURESTModelController defaultController] registerModelClass:NUHSC];
[[NURESTModelController defaultController] registerModelClass:NUHostInterface];
[[NURESTModelController defaultController] registerModelClass:NUIKECertificate];
[[NURESTModelController defaultController] registerModelClass:NUIKEEncryptionprofile];
[[NURESTModelController defaultController] registerModelClass:NUIKEGateway];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayConfig];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayConnection];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayProfile];
[[NURESTModelController defaultController] registerModelClass:NUIKEPSK];
[[NURESTModelController defaultController] registerModelClass:NUIKESubnet];
[[NURESTModelController defaultController] registerModelClass:NUIPReservation];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureConfig];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureGatewayProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureVscProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureaccessprofile];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressExternalServiceTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressExternalServiceTemplateEntry];
[[NURESTModelController defaultController] registerModelClass:NUJob];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMember];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitor];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorEncryptedSeed];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSEK];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSeed];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerNotification];
[[NURESTModelController defaultController] registerModelClass:NUL2Domain];
[[NURESTModelController defaultController] registerModelClass:NUL2DomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NUL7applicationsignature];
[[NURESTModelController defaultController] registerModelClass:NULDAPConfiguration];
[[NURESTModelController defaultController] registerModelClass:NULicense];
[[NURESTModelController defaultController] registerModelClass:NULicenseStatus];
[[NURESTModelController defaultController] registerModelClass:NULink];
[[NURESTModelController defaultController] registerModelClass:NULocation];
[[NURESTModelController defaultController] registerModelClass:NUMe];
[[NURESTModelController defaultController] registerModelClass:NUMetadata];
[[NURESTModelController defaultController] registerModelClass:NUMetadataTag];
[[NURESTModelController defaultController] registerModelClass:NUMirrorDestination];
[[NURESTModelController defaultController] registerModelClass:NUMonitoringPort];
[[NURESTModelController defaultController] registerModelClass:NUMonitorscope];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastChannelMap];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastList];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastRange];
[[NURESTModelController defaultController] registerModelClass:NUMultiNICVPort];
[[NURESTModelController defaultController] registerModelClass:NUNATMapEntry];
[[NURESTModelController defaultController] registerModelClass:NUNSGInfo];
[[NURESTModelController defaultController] registerModelClass:NUNSGateway];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSPort];
[[NURESTModelController defaultController] registerModelClass:NUNSPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSRedundantGatewayGroup];
[[NURESTModelController defaultController] registerModelClass:NUNetworkLayout];
[[NURESTModelController defaultController] registerModelClass:NUNetworkMacroGroup];
[[NURESTModelController defaultController] registerModelClass:NUNetworkPerformanceBinding];
[[NURESTModelController defaultController] registerModelClass:NUNetworkPerformanceMeasurement];
[[NURESTModelController defaultController] registerModelClass:NUNextHop];
[[NURESTModelController defaultController] registerModelClass:NUNextHopAddress];
[[NURESTModelController defaultController] registerModelClass:NUOverlayAddressPool];
[[NURESTModelController defaultController] registerModelClass:NUOverlayPATNATEntry];
[[NURESTModelController defaultController] registerModelClass:NUPATIPEntry];
[[NURESTModelController defaultController] registerModelClass:NUPATMapper];
[[NURESTModelController defaultController] registerModelClass:NUPATNATPool];
[[NURESTModelController defaultController] registerModelClass:NUPerformanceMonitor];
[[NURESTModelController defaultController] registerModelClass:NUPermission];
[[NURESTModelController defaultController] registerModelClass:NUPolicyDecision];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroup];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroupTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPort];
[[NURESTModelController defaultController] registerModelClass:NUPortMapping];
[[NURESTModelController defaultController] registerModelClass:NUPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPublicNetworkMacro];
[[NURESTModelController defaultController] registerModelClass:NUQOS];
[[NURESTModelController defaultController] registerModelClass:NURateLimiter];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTarget];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTargetTemplate];
[[NURESTModelController defaultController] registerModelClass:NURedundancyGroup];
[[NURESTModelController defaultController] registerModelClass:NURedundantPort];
[[NURESTModelController defaultController] registerModelClass:NURoutingPolicy];
[[NURESTModelController defaultController] registerModelClass:NUSharedNetworkResource];
[[NURESTModelController defaultController] registerModelClass:NUSiteInfo];
[[NURESTModelController defaultController] registerModelClass:NUStaticRoute];
[[NURESTModelController defaultController] registerModelClass:NUStatistics];
[[NURESTModelController defaultController] registerModelClass:NUStatisticsPolicy];
[[NURESTModelController defaultController] registerModelClass:NUStatsCollectorInfo];
[[NURESTModelController defaultController] registerModelClass:NUSubnet];
[[NURESTModelController defaultController] registerModelClass:NUSubnetTemplate];
[[NURESTModelController defaultController] registerModelClass:NUSystemConfig];
[[NURESTModelController defaultController] registerModelClass:NUTCA];
[[NURESTModelController defaultController] registerModelClass:NUTier];
[[NURESTModelController defaultController] registerModelClass:NUUplinkConnection];
[[NURESTModelController defaultController] registerModelClass:NUUplinkRD];
[[NURESTModelController defaultController] registerModelClass:NUUser];
[[NURESTModelController defaultController] registerModelClass:NUVCenter];
[[NURESTModelController defaultController] registerModelClass:NUVCenterCluster];
[[NURESTModelController defaultController] registerModelClass:NUVCenterDataCenter];
[[NURESTModelController defaultController] registerModelClass:NUVCenterEAMConfig];
[[NURESTModelController defaultController] registerModelClass:NUVCenterHypervisor];
[[NURESTModelController defaultController] registerModelClass:NUVCenterVRSConfig];
[[NURESTModelController defaultController] registerModelClass:NUVLAN];
[[NURESTModelController defaultController] registerModelClass:NUVLANTemplate];
[[NURESTModelController defaultController] registerModelClass:NUVM];
[[NURESTModelController defaultController] registerModelClass:NUVMInterface];
[[NURESTModelController defaultController] registerModelClass:NUVMResync];
[[NURESTModelController defaultController] registerModelClass:NUVPNConnection];
[[NURESTModelController defaultController] registerModelClass:NUVPort];
[[NURESTModelController defaultController] registerModelClass:NUVPortMirror];
[[NURESTModelController defaultController] registerModelClass:NUVRS];
[[NURESTModelController defaultController] registerModelClass:NUVRSAddressRange];
[[NURESTModelController defaultController] registerModelClass:NUVRSMetrics];
[[NURESTModelController defaultController] registerModelClass:NUVRSRedeploymentpolicy];
[[NURESTModelController defaultController] registerModelClass:NUVSC];
[[NURESTModelController defaultController] registerModelClass:NUVSD];
[[NURESTModelController defaultController] registerModelClass:NUVSDComponent];
[[NURESTModelController defaultController] registerModelClass:NUVSP];
[[NURESTModelController defaultController] registerModelClass:NUVia];
[[NURESTModelController defaultController] registerModelClass:NUVirtualIP];
[[NURESTModelController defaultController] registerModelClass:NUVsgRedundantPort];
[[NURESTModelController defaultController] registerModelClass:NUWANService];
[[NURESTModelController defaultController] registerModelClass:NUZFBAutoAssignment];
[[NURESTModelController defaultController] registerModelClass:NUZFBRequest];
[[NURESTModelController defaultController] registerModelClass:NUZone];
[[NURESTModelController defaultController] registerModelClass:NUZoneTemplate];
