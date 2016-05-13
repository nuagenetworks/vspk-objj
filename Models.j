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

@import "NUAddressRange.j"
@import "NUAggregateMetadata.j"
@import "NUAlarm.j"
@import "NUApp.j"
@import "NUApplicationService.j"
@import "NUAutoDiscoveredGateway.j"
@import "NUBGPPeer.j"
@import "NUBootstrap.j"
@import "NUBootstrapActivation.j"
@import "NUBridgeInterface.j"
@import "NUCertificate.j"
@import "NUCloudMgmtSystem.j"
@import "NUDHCPOption.j"
@import "NUDSCPForwardingClassMapping.j"
@import "NUDSCPForwardingClassTable.j"
@import "NUDiskStat.j"
@import "NUDomain.j"
@import "NUDomainTemplate.j"
@import "NUEgressACLEntryTemplate.j"
@import "NUEgressACLTemplate.j"
@import "NUEgressQOSPolicy.j"
@import "NUEndPoint.j"
@import "NUEnterprise.j"
@import "NUEnterpriseNetwork.j"
@import "NUEnterprisePermission.j"
@import "NUEnterpriseProfile.j"
@import "NUEventLog.j"
@import "NUExternalAppService.j"
@import "NUExternalService.j"
@import "NUFloatingIp.j"
@import "NUFlow.j"
@import "NUFlowForwardingPolicy.j"
@import "NUFlowSecurityPolicy.j"
@import "NUGateway.j"
@import "NUGatewayTemplate.j"
@import "NUGlobalMetadata.j"
@import "NUGroup.j"
@import "NUGroupKeyEncryptionProfile.j"
@import "NUHSC.j"
@import "NUHostInterface.j"
@import "NUIPReservation.j"
@import "NUInfrastructureConfig.j"
@import "NUInfrastructureGatewayProfile.j"
@import "NUInfrastructurePortProfile.j"
@import "NUInfrastructureVscProfile.j"
@import "NUIngressACLEntryTemplate.j"
@import "NUIngressACLTemplate.j"
@import "NUIngressAdvFwdEntryTemplate.j"
@import "NUIngressAdvFwdTemplate.j"
@import "NUIngressExternalServiceTemplate.j"
@import "NUIngressExternalServiceTemplateEntry.j"
@import "NUJob.j"
@import "NUKeyServerMonitor.j"
@import "NUKeyServerMonitorEncryptedSEK.j"
@import "NUKeyServerMonitorEncryptedSeed.j"
@import "NUKeyServerMonitorSEK.j"
@import "NUKeyServerMonitorSeed.j"
@import "NUL2Domain.j"
@import "NUL2DomainTemplate.j"
@import "NULDAPConfiguration.j"
@import "NULicense.j"
@import "NULocation.j"
@import "NUMe.j"
@import "NUMetadata.j"
@import "NUMetadataTag.j"
@import "NUMirrorDestination.j"
@import "NUMonitoringPort.j"
@import "NUMultiCastChannelMap.j"
@import "NUMultiCastList.j"
@import "NUMultiCastRange.j"
@import "NUMultiNICVPort.j"
@import "NUNATMapEntry.j"
@import "NUNSGateway.j"
@import "NUNSGatewayTemplate.j"
@import "NUNSPort.j"
@import "NUNSPortStaticConfiguration.j"
@import "NUNSPortTemplate.j"
@import "NUNSRedundantGatewayGroup.j"
@import "NUNetworkLayout.j"
@import "NUNetworkMacroGroup.j"
@import "NUPATNATPool.j"
@import "NUPermission.j"
@import "NUPolicyDecision.j"
@import "NUPolicyGroup.j"
@import "NUPolicyGroupTemplate.j"
@import "NUPort.j"
@import "NUPortTemplate.j"
@import "NUPublicNetworkMacro.j"
@import "NUQOS.j"
@import "NURateLimiter.j"
@import "NURedirectionTarget.j"
@import "NURedirectionTargetTemplate.j"
@import "NURedundancyGroup.j"
@import "NURedundantPort.j"
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
@import "NUVSC.j"
@import "NUVSD.j"
@import "NUVSDComponent.j"
@import "NUVSP.j"
@import "NUVirtualIP.j"
@import "NUVsgRedundantPort.j"
@import "NUWANService.j"
@import "NUZone.j"
@import "NUZoneTemplate.j"


[[NURESTModelController defaultController] registerModelClass:NUAddressRange];
[[NURESTModelController defaultController] registerModelClass:NUAggregateMetadata];
[[NURESTModelController defaultController] registerModelClass:NUAlarm];
[[NURESTModelController defaultController] registerModelClass:NUApp];
[[NURESTModelController defaultController] registerModelClass:NUApplicationService];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoveredGateway];
[[NURESTModelController defaultController] registerModelClass:NUBGPPeer];
[[NURESTModelController defaultController] registerModelClass:NUBootstrap];
[[NURESTModelController defaultController] registerModelClass:NUBootstrapActivation];
[[NURESTModelController defaultController] registerModelClass:NUBridgeInterface];
[[NURESTModelController defaultController] registerModelClass:NUCertificate];
[[NURESTModelController defaultController] registerModelClass:NUCloudMgmtSystem];
[[NURESTModelController defaultController] registerModelClass:NUDHCPOption];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassMapping];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassTable];
[[NURESTModelController defaultController] registerModelClass:NUDiskStat];
[[NURESTModelController defaultController] registerModelClass:NUDomain];
[[NURESTModelController defaultController] registerModelClass:NUDomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressQOSPolicy];
[[NURESTModelController defaultController] registerModelClass:NUEndPoint];
[[NURESTModelController defaultController] registerModelClass:NUEnterprise];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseNetwork];
[[NURESTModelController defaultController] registerModelClass:NUEnterprisePermission];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseProfile];
[[NURESTModelController defaultController] registerModelClass:NUEventLog];
[[NURESTModelController defaultController] registerModelClass:NUExternalAppService];
[[NURESTModelController defaultController] registerModelClass:NUExternalService];
[[NURESTModelController defaultController] registerModelClass:NUFloatingIp];
[[NURESTModelController defaultController] registerModelClass:NUFlow];
[[NURESTModelController defaultController] registerModelClass:NUFlowForwardingPolicy];
[[NURESTModelController defaultController] registerModelClass:NUFlowSecurityPolicy];
[[NURESTModelController defaultController] registerModelClass:NUGateway];
[[NURESTModelController defaultController] registerModelClass:NUGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUGlobalMetadata];
[[NURESTModelController defaultController] registerModelClass:NUGroup];
[[NURESTModelController defaultController] registerModelClass:NUGroupKeyEncryptionProfile];
[[NURESTModelController defaultController] registerModelClass:NUHSC];
[[NURESTModelController defaultController] registerModelClass:NUHostInterface];
[[NURESTModelController defaultController] registerModelClass:NUIPReservation];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureConfig];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureGatewayProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructurePortProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureVscProfile];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressExternalServiceTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressExternalServiceTemplateEntry];
[[NURESTModelController defaultController] registerModelClass:NUJob];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitor];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorEncryptedSEK];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorEncryptedSeed];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSEK];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSeed];
[[NURESTModelController defaultController] registerModelClass:NUL2Domain];
[[NURESTModelController defaultController] registerModelClass:NUL2DomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NULDAPConfiguration];
[[NURESTModelController defaultController] registerModelClass:NULicense];
[[NURESTModelController defaultController] registerModelClass:NULocation];
[[NURESTModelController defaultController] registerModelClass:NUMe];
[[NURESTModelController defaultController] registerModelClass:NUMetadata];
[[NURESTModelController defaultController] registerModelClass:NUMetadataTag];
[[NURESTModelController defaultController] registerModelClass:NUMirrorDestination];
[[NURESTModelController defaultController] registerModelClass:NUMonitoringPort];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastChannelMap];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastList];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastRange];
[[NURESTModelController defaultController] registerModelClass:NUMultiNICVPort];
[[NURESTModelController defaultController] registerModelClass:NUNATMapEntry];
[[NURESTModelController defaultController] registerModelClass:NUNSGateway];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSPort];
[[NURESTModelController defaultController] registerModelClass:NUNSPortStaticConfiguration];
[[NURESTModelController defaultController] registerModelClass:NUNSPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSRedundantGatewayGroup];
[[NURESTModelController defaultController] registerModelClass:NUNetworkLayout];
[[NURESTModelController defaultController] registerModelClass:NUNetworkMacroGroup];
[[NURESTModelController defaultController] registerModelClass:NUPATNATPool];
[[NURESTModelController defaultController] registerModelClass:NUPermission];
[[NURESTModelController defaultController] registerModelClass:NUPolicyDecision];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroup];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroupTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPort];
[[NURESTModelController defaultController] registerModelClass:NUPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPublicNetworkMacro];
[[NURESTModelController defaultController] registerModelClass:NUQOS];
[[NURESTModelController defaultController] registerModelClass:NURateLimiter];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTarget];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTargetTemplate];
[[NURESTModelController defaultController] registerModelClass:NURedundancyGroup];
[[NURESTModelController defaultController] registerModelClass:NURedundantPort];
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
[[NURESTModelController defaultController] registerModelClass:NUVSC];
[[NURESTModelController defaultController] registerModelClass:NUVSD];
[[NURESTModelController defaultController] registerModelClass:NUVSDComponent];
[[NURESTModelController defaultController] registerModelClass:NUVSP];
[[NURESTModelController defaultController] registerModelClass:NUVirtualIP];
[[NURESTModelController defaultController] registerModelClass:NUVsgRedundantPort];
[[NURESTModelController defaultController] registerModelClass:NUWANService];
[[NURESTModelController defaultController] registerModelClass:NUZone];
[[NURESTModelController defaultController] registerModelClass:NUZoneTemplate];
