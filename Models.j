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
@import "NUAggregatedDomain.j"
@import "NUAlarm.j"
@import "NUAllAlarm.j"
@import "NUAllGateway.j"
@import "NUAllRedundancyGroup.j"
@import "NUAllocationPool.j"
@import "NUApplication.j"
@import "NUApplicationBinding.j"
@import "NUApplicationperformancemanagement.j"
@import "NUApplicationperformancemanagementbinding.j"
@import "NUAutoDiscoverCluster.j"
@import "NUAutoDiscoverHypervisorFromCluster.j"
@import "NUAutoDiscoveredGateway.j"
@import "NUAutodiscovereddatacenter.j"
@import "NUAvatar.j"
@import "NUAzureCloud.j"
@import "NUBFDSession.j"
@import "NUBGPNeighbor.j"
@import "NUBGPPeer.j"
@import "NUBGPProfile.j"
@import "NUBRConnection.j"
@import "NUBandwidthTestResult.j"
@import "NUBootstrap.j"
@import "NUBootstrapActivation.j"
@import "NUBridgeInterface.j"
@import "NUBulkStatistics.j"
@import "NUCOSRemarkingPolicy.j"
@import "NUCOSRemarkingPolicyTable.j"
@import "NUCSNATPool.j"
@import "NUCTranslationMap.j"
@import "NUCaptivePortalProfile.j"
@import "NUCertificate.j"
@import "NUCertificateMetadata.j"
@import "NUCloudMgmtSystem.j"
@import "NUCommand.j"
@import "NUConnectionendpoint.j"
@import "NUContainer.j"
@import "NUContainerInterface.j"
@import "NUContainerResync.j"
@import "NUControllerVRSLink.j"
@import "NUCustomProperty.j"
@import "NUDHCPOption.j"
@import "NUDHCPv6Option.j"
@import "NUDSCPForwardingClassMapping.j"
@import "NUDSCPForwardingClassTable.j"
@import "NUDSCPRemarkingPolicy.j"
@import "NUDSCPRemarkingPolicyTable.j"
@import "NUDUCGroup.j"
@import "NUDUCGroupBinding.j"
@import "NUDefaultGateway.j"
@import "NUDemarcationService.j"
@import "NUDeploymentFailure.j"
@import "NUDestinationurl.j"
@import "NUDiskStat.j"
@import "NUDomain.j"
@import "NUDomainFIPAclTemplate.j"
@import "NUDomainFIPAclTemplateEntry.j"
@import "NUDomainKindSummary.j"
@import "NUDomainTemplate.j"
@import "NUDownloadProgress.j"
@import "NUEgressACLEntryTemplate.j"
@import "NUEgressACLTemplate.j"
@import "NUEgressAdvFwdEntryTemplate.j"
@import "NUEgressAdvFwdTemplate.j"
@import "NUEgressAuditACLEntryTemplate.j"
@import "NUEgressAuditACLTemplate.j"
@import "NUEgressProfile.j"
@import "NUEgressQOSPolicy.j"
@import "NUEnterprise.j"
@import "NUEnterpriseNetwork.j"
@import "NUEnterprisePermission.j"
@import "NUEnterpriseProfile.j"
@import "NUEnterpriseSecuredData.j"
@import "NUEnterpriseSecurity.j"
@import "NUEsIlmPolicy.j"
@import "NUEsIndexConfig.j"
@import "NUEthernetSegmentGWGroup.j"
@import "NUEthernetSegmentGroup.j"
@import "NUEventLog.j"
@import "NUFirewallAcl.j"
@import "NUFirewallRule.j"
@import "NUFloatingIp.j"
@import "NUForwardingClass.j"
@import "NUForwardingPathList.j"
@import "NUForwardingPathListEntry.j"
@import "NUGNMIProfile.j"
@import "NUGNMISession.j"
@import "NUGateway.j"
@import "NUGatewayRedundantPort.j"
@import "NUGatewaySecuredData.j"
@import "NUGatewaySecurity.j"
@import "NUGatewayTemplate.j"
@import "NUGatewaysLocation.j"
@import "NUGlobalMetadata.j"
@import "NUGroup.j"
@import "NUGroupKeyEncryptionProfile.j"
@import "NUHSC.j"
@import "NUHostInterface.j"
@import "NUIDPProfile.j"
@import "NUIDPProfileAction.j"
@import "NUIDPSignature.j"
@import "NUIKECertificate.j"
@import "NUIKEEncryptionprofile.j"
@import "NUIKEGateway.j"
@import "NUIKEGatewayConfig.j"
@import "NUIKEGatewayConnection.j"
@import "NUIKEGatewayProfile.j"
@import "NUIKEPSK.j"
@import "NUIKESubnet.j"
@import "NUIPFilterProfile.j"
@import "NUIPReservation.j"
@import "NUIPv6FilterProfile.j"
@import "NUInfrastructureAccessProfile.j"
@import "NUInfrastructureConfig.j"
@import "NUInfrastructureEVDFProfile.j"
@import "NUInfrastructureGatewayProfile.j"
@import "NUInfrastructureVscProfile.j"
@import "NUIngressACLEntryTemplate.j"
@import "NUIngressACLTemplate.j"
@import "NUIngressAdvFwdEntryTemplate.j"
@import "NUIngressAdvFwdTemplate.j"
@import "NUIngressAuditACLEntryTemplate.j"
@import "NUIngressAuditACLTemplate.j"
@import "NUIngressProfile.j"
@import "NUIngressQOSPolicy.j"
@import "NUJob.j"
@import "NUKeyServerMember.j"
@import "NUKeyServerMonitor.j"
@import "NUKeyServerMonitorEncryptedSeed.j"
@import "NUKeyServerMonitorSEK.j"
@import "NUKeyServerMonitorSeed.j"
@import "NUL2Domain.j"
@import "NUL2DomainTemplate.j"
@import "NUL4Service.j"
@import "NUL4ServiceGroup.j"
@import "NUL7applicationsignature.j"
@import "NULDAPConfiguration.j"
@import "NULTEInformation.j"
@import "NULicense.j"
@import "NULicenseStatus.j"
@import "NULink.j"
@import "NULocation.j"
@import "NULtestatistics.j"
@import "NUMACFilterProfile.j"
@import "NUMTUDiscoveryTestResult.j"
@import "NUMe.j"
@import "NUMetadata.j"
@import "NUMirrorDestination.j"
@import "NUMirrorDestinationGroup.j"
@import "NUMonitoringPort.j"
@import "NUMonitorscope.j"
@import "NUMultiCastChannelMap.j"
@import "NUMultiCastList.j"
@import "NUMultiCastRange.j"
@import "NUMultiNICVPort.j"
@import "NUNATMapEntry.j"
@import "NUNSGGroup.j"
@import "NUNSGInfo.j"
@import "NUNSGPatchProfile.j"
@import "NUNSGRoutingPolicyBinding.j"
@import "NUNSGUpgradeProfile.j"
@import "NUNSGateway.j"
@import "NUNSGatewayMonitor.j"
@import "NUNSGatewaySummary.j"
@import "NUNSGatewayTemplate.j"
@import "NUNSGatewaysCount.j"
@import "NUNSPort.j"
@import "NUNSPortInfo.j"
@import "NUNSPortTemplate.j"
@import "NUNSRedundantGatewayGroup.j"
@import "NUNetconfGateway.j"
@import "NUNetconfManager.j"
@import "NUNetconfProfile.j"
@import "NUNetconfSession.j"
@import "NUNetworkLayout.j"
@import "NUNetworkMacroGroup.j"
@import "NUNetworkPerformanceBinding.j"
@import "NUNetworkPerformanceMeasurement.j"
@import "NUNextHop.j"
@import "NUOSPFArea.j"
@import "NUOSPFInstance.j"
@import "NUOSPFInterface.j"
@import "NUOverlayAddressPool.j"
@import "NUOverlayManagementProfile.j"
@import "NUOverlayManagementSubnetProfile.j"
@import "NUOverlayMirrorDestination.j"
@import "NUOverlayMirrorDestinationTemplate.j"
@import "NUOverlayPATNATEntry.j"
@import "NUPATIPEntry.j"
@import "NUPATMapper.j"
@import "NUPATNATPool.j"
@import "NUPGExpression.j"
@import "NUPGExpressionTemplate.j"
@import "NUPSNATPool.j"
@import "NUPSPATMap.j"
@import "NUPTranslationMap.j"
@import "NUPatch.j"
@import "NUPerformanceMonitor.j"
@import "NUPermission.j"
@import "NUPolicyDecision.j"
@import "NUPolicyEntry.j"
@import "NUPolicyGroup.j"
@import "NUPolicyGroupCategory.j"
@import "NUPolicyGroupTemplate.j"
@import "NUPolicyObjectGroup.j"
@import "NUPolicyStatement.j"
@import "NUPort.j"
@import "NUPortMapping.j"
@import "NUPortTemplate.j"
@import "NUProxyARPFilter.j"
@import "NUPublicNetworkMacro.j"
@import "NUQOS.j"
@import "NUQosPolicer.j"
@import "NURateLimiter.j"
@import "NURedirectionTarget.j"
@import "NURedirectionTargetTemplate.j"
@import "NURedundancyGroup.j"
@import "NURedundantPort.j"
@import "NURemoteVrsInfo.j"
@import "NURole.j"
@import "NURoleentry.j"
@import "NURoutingPolicy.j"
@import "NURoutingPolicyBinding.j"
@import "NUSAPEgressQoSProfile.j"
@import "NUSAPIngressQoSProfile.j"
@import "NUSPATSourcesPool.j"
@import "NUSSHKey.j"
@import "NUSSIDConnection.j"
@import "NUSaaSApplicationGroup.j"
@import "NUSaaSApplicationType.j"
@import "NUSharedNetworkResource.j"
@import "NUShuntLink.j"
@import "NUSiteInfo.j"
@import "NUStaticRoute.j"
@import "NUStatistics.j"
@import "NUStatisticsPolicy.j"
@import "NUStatsCollectorInfo.j"
@import "NUSubnet.j"
@import "NUSubnetTemplate.j"
@import "NUSupplementalInfraConfig.j"
@import "NUSyslogDestination.j"
@import "NUSysmonUplinkConnection.j"
@import "NUSystemConfig.j"
@import "NUTCA.j"
@import "NUTCPConnectTestResult.j"
@import "NUTest.j"
@import "NUTestDefinition.j"
@import "NUTestRun.j"
@import "NUTestSuite.j"
@import "NUTestSuiteRun.j"
@import "NUThreatPreventionInfo.j"
@import "NUThreatPreventionNodeInfo.j"
@import "NUThreatPreventionServerConnection.j"
@import "NUTier.j"
@import "NUTrunk.j"
@import "NUUDPProbeTestResult.j"
@import "NUUnderlay.j"
@import "NUUnderlayTest.j"
@import "NUUplinkConnection.j"
@import "NUUplinkRD.j"
@import "NUUser.j"
@import "NUUserContext.j"
@import "NUVCenter.j"
@import "NUVCenterCluster.j"
@import "NUVCenterDataCenter.j"
@import "NUVCenterEAMConfig.j"
@import "NUVCenterHypervisor.j"
@import "NUVCenterVRSConfig.j"
@import "NUVLAN.j"
@import "NUVLANTemplate.j"
@import "NUVM.j"
@import "NUVMIPReservation.j"
@import "NUVMInterface.j"
@import "NUVMResync.j"
@import "NUVNF.j"
@import "NUVNFCatalog.j"
@import "NUVNFDescriptor.j"
@import "NUVNFDomainMapping.j"
@import "NUVNFInterface.j"
@import "NUVNFInterfaceDescriptor.j"
@import "NUVNFMetadata.j"
@import "NUVNFThresholdPolicy.j"
@import "NUVPNConnection.j"
@import "NUVPort.j"
@import "NUVPortInfo.j"
@import "NUVPortMirror.j"
@import "NUVRS.j"
@import "NUVRSAddressRange.j"
@import "NUVRSMetrics.j"
@import "NUVRSRedeploymentpolicy.j"
@import "NUVSC.j"
@import "NUVSD.j"
@import "NUVSDComponent.j"
@import "NUVSDConfig.j"
@import "NUVSP.j"
@import "NUVirtualFirewallPolicy.j"
@import "NUVirtualFirewallRule.j"
@import "NUVirtualIP.j"
@import "NUVirtualUplink.j"
@import "NUVsgRedundantPort.j"
@import "NUWANService.j"
@import "NUWebCategory.j"
@import "NUWebDomainName.j"
@import "NUWirelessPort.j"
@import "NUZFBAutoAssignment.j"
@import "NUZFBRequest.j"
@import "NUZone.j"
@import "NUZoneTemplate.j"
@import "NUvrsInfo.j"


[[NURESTModelController defaultController] registerModelClass:NUAddressMap];
[[NURESTModelController defaultController] registerModelClass:NUAddressRange];
[[NURESTModelController defaultController] registerModelClass:NUAggregateMetadata];
[[NURESTModelController defaultController] registerModelClass:NUAggregatedDomain];
[[NURESTModelController defaultController] registerModelClass:NUAlarm];
[[NURESTModelController defaultController] registerModelClass:NUAllAlarm];
[[NURESTModelController defaultController] registerModelClass:NUAllGateway];
[[NURESTModelController defaultController] registerModelClass:NUAllRedundancyGroup];
[[NURESTModelController defaultController] registerModelClass:NUAllocationPool];
[[NURESTModelController defaultController] registerModelClass:NUApplication];
[[NURESTModelController defaultController] registerModelClass:NUApplicationBinding];
[[NURESTModelController defaultController] registerModelClass:NUApplicationperformancemanagement];
[[NURESTModelController defaultController] registerModelClass:NUApplicationperformancemanagementbinding];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoverCluster];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoverHypervisorFromCluster];
[[NURESTModelController defaultController] registerModelClass:NUAutoDiscoveredGateway];
[[NURESTModelController defaultController] registerModelClass:NUAutodiscovereddatacenter];
[[NURESTModelController defaultController] registerModelClass:NUAvatar];
[[NURESTModelController defaultController] registerModelClass:NUAzureCloud];
[[NURESTModelController defaultController] registerModelClass:NUBFDSession];
[[NURESTModelController defaultController] registerModelClass:NUBGPNeighbor];
[[NURESTModelController defaultController] registerModelClass:NUBGPPeer];
[[NURESTModelController defaultController] registerModelClass:NUBGPProfile];
[[NURESTModelController defaultController] registerModelClass:NUBRConnection];
[[NURESTModelController defaultController] registerModelClass:NUBandwidthTestResult];
[[NURESTModelController defaultController] registerModelClass:NUBootstrap];
[[NURESTModelController defaultController] registerModelClass:NUBootstrapActivation];
[[NURESTModelController defaultController] registerModelClass:NUBridgeInterface];
[[NURESTModelController defaultController] registerModelClass:NUBulkStatistics];
[[NURESTModelController defaultController] registerModelClass:NUCOSRemarkingPolicy];
[[NURESTModelController defaultController] registerModelClass:NUCOSRemarkingPolicyTable];
[[NURESTModelController defaultController] registerModelClass:NUCSNATPool];
[[NURESTModelController defaultController] registerModelClass:NUCTranslationMap];
[[NURESTModelController defaultController] registerModelClass:NUCaptivePortalProfile];
[[NURESTModelController defaultController] registerModelClass:NUCertificate];
[[NURESTModelController defaultController] registerModelClass:NUCertificateMetadata];
[[NURESTModelController defaultController] registerModelClass:NUCloudMgmtSystem];
[[NURESTModelController defaultController] registerModelClass:NUCommand];
[[NURESTModelController defaultController] registerModelClass:NUConnectionendpoint];
[[NURESTModelController defaultController] registerModelClass:NUContainer];
[[NURESTModelController defaultController] registerModelClass:NUContainerInterface];
[[NURESTModelController defaultController] registerModelClass:NUContainerResync];
[[NURESTModelController defaultController] registerModelClass:NUControllerVRSLink];
[[NURESTModelController defaultController] registerModelClass:NUCustomProperty];
[[NURESTModelController defaultController] registerModelClass:NUDHCPOption];
[[NURESTModelController defaultController] registerModelClass:NUDHCPv6Option];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassMapping];
[[NURESTModelController defaultController] registerModelClass:NUDSCPForwardingClassTable];
[[NURESTModelController defaultController] registerModelClass:NUDSCPRemarkingPolicy];
[[NURESTModelController defaultController] registerModelClass:NUDSCPRemarkingPolicyTable];
[[NURESTModelController defaultController] registerModelClass:NUDUCGroup];
[[NURESTModelController defaultController] registerModelClass:NUDUCGroupBinding];
[[NURESTModelController defaultController] registerModelClass:NUDefaultGateway];
[[NURESTModelController defaultController] registerModelClass:NUDemarcationService];
[[NURESTModelController defaultController] registerModelClass:NUDeploymentFailure];
[[NURESTModelController defaultController] registerModelClass:NUDestinationurl];
[[NURESTModelController defaultController] registerModelClass:NUDiskStat];
[[NURESTModelController defaultController] registerModelClass:NUDomain];
[[NURESTModelController defaultController] registerModelClass:NUDomainFIPAclTemplate];
[[NURESTModelController defaultController] registerModelClass:NUDomainFIPAclTemplateEntry];
[[NURESTModelController defaultController] registerModelClass:NUDomainKindSummary];
[[NURESTModelController defaultController] registerModelClass:NUDomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NUDownloadProgress];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressAdvFwdEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressAdvFwdTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressAuditACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressAuditACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUEgressProfile];
[[NURESTModelController defaultController] registerModelClass:NUEgressQOSPolicy];
[[NURESTModelController defaultController] registerModelClass:NUEnterprise];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseNetwork];
[[NURESTModelController defaultController] registerModelClass:NUEnterprisePermission];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseProfile];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseSecuredData];
[[NURESTModelController defaultController] registerModelClass:NUEnterpriseSecurity];
[[NURESTModelController defaultController] registerModelClass:NUEsIlmPolicy];
[[NURESTModelController defaultController] registerModelClass:NUEsIndexConfig];
[[NURESTModelController defaultController] registerModelClass:NUEthernetSegmentGWGroup];
[[NURESTModelController defaultController] registerModelClass:NUEthernetSegmentGroup];
[[NURESTModelController defaultController] registerModelClass:NUEventLog];
[[NURESTModelController defaultController] registerModelClass:NUFirewallAcl];
[[NURESTModelController defaultController] registerModelClass:NUFirewallRule];
[[NURESTModelController defaultController] registerModelClass:NUFloatingIp];
[[NURESTModelController defaultController] registerModelClass:NUForwardingClass];
[[NURESTModelController defaultController] registerModelClass:NUForwardingPathList];
[[NURESTModelController defaultController] registerModelClass:NUForwardingPathListEntry];
[[NURESTModelController defaultController] registerModelClass:NUGNMIProfile];
[[NURESTModelController defaultController] registerModelClass:NUGNMISession];
[[NURESTModelController defaultController] registerModelClass:NUGateway];
[[NURESTModelController defaultController] registerModelClass:NUGatewayRedundantPort];
[[NURESTModelController defaultController] registerModelClass:NUGatewaySecuredData];
[[NURESTModelController defaultController] registerModelClass:NUGatewaySecurity];
[[NURESTModelController defaultController] registerModelClass:NUGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUGatewaysLocation];
[[NURESTModelController defaultController] registerModelClass:NUGlobalMetadata];
[[NURESTModelController defaultController] registerModelClass:NUGroup];
[[NURESTModelController defaultController] registerModelClass:NUGroupKeyEncryptionProfile];
[[NURESTModelController defaultController] registerModelClass:NUHSC];
[[NURESTModelController defaultController] registerModelClass:NUHostInterface];
[[NURESTModelController defaultController] registerModelClass:NUIDPProfile];
[[NURESTModelController defaultController] registerModelClass:NUIDPProfileAction];
[[NURESTModelController defaultController] registerModelClass:NUIDPSignature];
[[NURESTModelController defaultController] registerModelClass:NUIKECertificate];
[[NURESTModelController defaultController] registerModelClass:NUIKEEncryptionprofile];
[[NURESTModelController defaultController] registerModelClass:NUIKEGateway];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayConfig];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayConnection];
[[NURESTModelController defaultController] registerModelClass:NUIKEGatewayProfile];
[[NURESTModelController defaultController] registerModelClass:NUIKEPSK];
[[NURESTModelController defaultController] registerModelClass:NUIKESubnet];
[[NURESTModelController defaultController] registerModelClass:NUIPFilterProfile];
[[NURESTModelController defaultController] registerModelClass:NUIPReservation];
[[NURESTModelController defaultController] registerModelClass:NUIPv6FilterProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureAccessProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureConfig];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureEVDFProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureGatewayProfile];
[[NURESTModelController defaultController] registerModelClass:NUInfrastructureVscProfile];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAdvFwdTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAuditACLEntryTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressAuditACLTemplate];
[[NURESTModelController defaultController] registerModelClass:NUIngressProfile];
[[NURESTModelController defaultController] registerModelClass:NUIngressQOSPolicy];
[[NURESTModelController defaultController] registerModelClass:NUJob];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMember];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitor];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorEncryptedSeed];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSEK];
[[NURESTModelController defaultController] registerModelClass:NUKeyServerMonitorSeed];
[[NURESTModelController defaultController] registerModelClass:NUL2Domain];
[[NURESTModelController defaultController] registerModelClass:NUL2DomainTemplate];
[[NURESTModelController defaultController] registerModelClass:NUL4Service];
[[NURESTModelController defaultController] registerModelClass:NUL4ServiceGroup];
[[NURESTModelController defaultController] registerModelClass:NUL7applicationsignature];
[[NURESTModelController defaultController] registerModelClass:NULDAPConfiguration];
[[NURESTModelController defaultController] registerModelClass:NULTEInformation];
[[NURESTModelController defaultController] registerModelClass:NULicense];
[[NURESTModelController defaultController] registerModelClass:NULicenseStatus];
[[NURESTModelController defaultController] registerModelClass:NULink];
[[NURESTModelController defaultController] registerModelClass:NULocation];
[[NURESTModelController defaultController] registerModelClass:NULtestatistics];
[[NURESTModelController defaultController] registerModelClass:NUMACFilterProfile];
[[NURESTModelController defaultController] registerModelClass:NUMTUDiscoveryTestResult];
[[NURESTModelController defaultController] registerModelClass:NUMe];
[[NURESTModelController defaultController] registerModelClass:NUMetadata];
[[NURESTModelController defaultController] registerModelClass:NUMirrorDestination];
[[NURESTModelController defaultController] registerModelClass:NUMirrorDestinationGroup];
[[NURESTModelController defaultController] registerModelClass:NUMonitoringPort];
[[NURESTModelController defaultController] registerModelClass:NUMonitorscope];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastChannelMap];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastList];
[[NURESTModelController defaultController] registerModelClass:NUMultiCastRange];
[[NURESTModelController defaultController] registerModelClass:NUMultiNICVPort];
[[NURESTModelController defaultController] registerModelClass:NUNATMapEntry];
[[NURESTModelController defaultController] registerModelClass:NUNSGGroup];
[[NURESTModelController defaultController] registerModelClass:NUNSGInfo];
[[NURESTModelController defaultController] registerModelClass:NUNSGPatchProfile];
[[NURESTModelController defaultController] registerModelClass:NUNSGRoutingPolicyBinding];
[[NURESTModelController defaultController] registerModelClass:NUNSGUpgradeProfile];
[[NURESTModelController defaultController] registerModelClass:NUNSGateway];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewayMonitor];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewaySummary];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewayTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSGatewaysCount];
[[NURESTModelController defaultController] registerModelClass:NUNSPort];
[[NURESTModelController defaultController] registerModelClass:NUNSPortInfo];
[[NURESTModelController defaultController] registerModelClass:NUNSPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUNSRedundantGatewayGroup];
[[NURESTModelController defaultController] registerModelClass:NUNetconfGateway];
[[NURESTModelController defaultController] registerModelClass:NUNetconfManager];
[[NURESTModelController defaultController] registerModelClass:NUNetconfProfile];
[[NURESTModelController defaultController] registerModelClass:NUNetconfSession];
[[NURESTModelController defaultController] registerModelClass:NUNetworkLayout];
[[NURESTModelController defaultController] registerModelClass:NUNetworkMacroGroup];
[[NURESTModelController defaultController] registerModelClass:NUNetworkPerformanceBinding];
[[NURESTModelController defaultController] registerModelClass:NUNetworkPerformanceMeasurement];
[[NURESTModelController defaultController] registerModelClass:NUNextHop];
[[NURESTModelController defaultController] registerModelClass:NUOSPFArea];
[[NURESTModelController defaultController] registerModelClass:NUOSPFInstance];
[[NURESTModelController defaultController] registerModelClass:NUOSPFInterface];
[[NURESTModelController defaultController] registerModelClass:NUOverlayAddressPool];
[[NURESTModelController defaultController] registerModelClass:NUOverlayManagementProfile];
[[NURESTModelController defaultController] registerModelClass:NUOverlayManagementSubnetProfile];
[[NURESTModelController defaultController] registerModelClass:NUOverlayMirrorDestination];
[[NURESTModelController defaultController] registerModelClass:NUOverlayMirrorDestinationTemplate];
[[NURESTModelController defaultController] registerModelClass:NUOverlayPATNATEntry];
[[NURESTModelController defaultController] registerModelClass:NUPATIPEntry];
[[NURESTModelController defaultController] registerModelClass:NUPATMapper];
[[NURESTModelController defaultController] registerModelClass:NUPATNATPool];
[[NURESTModelController defaultController] registerModelClass:NUPGExpression];
[[NURESTModelController defaultController] registerModelClass:NUPGExpressionTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPSNATPool];
[[NURESTModelController defaultController] registerModelClass:NUPSPATMap];
[[NURESTModelController defaultController] registerModelClass:NUPTranslationMap];
[[NURESTModelController defaultController] registerModelClass:NUPatch];
[[NURESTModelController defaultController] registerModelClass:NUPerformanceMonitor];
[[NURESTModelController defaultController] registerModelClass:NUPermission];
[[NURESTModelController defaultController] registerModelClass:NUPolicyDecision];
[[NURESTModelController defaultController] registerModelClass:NUPolicyEntry];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroup];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroupCategory];
[[NURESTModelController defaultController] registerModelClass:NUPolicyGroupTemplate];
[[NURESTModelController defaultController] registerModelClass:NUPolicyObjectGroup];
[[NURESTModelController defaultController] registerModelClass:NUPolicyStatement];
[[NURESTModelController defaultController] registerModelClass:NUPort];
[[NURESTModelController defaultController] registerModelClass:NUPortMapping];
[[NURESTModelController defaultController] registerModelClass:NUPortTemplate];
[[NURESTModelController defaultController] registerModelClass:NUProxyARPFilter];
[[NURESTModelController defaultController] registerModelClass:NUPublicNetworkMacro];
[[NURESTModelController defaultController] registerModelClass:NUQOS];
[[NURESTModelController defaultController] registerModelClass:NUQosPolicer];
[[NURESTModelController defaultController] registerModelClass:NURateLimiter];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTarget];
[[NURESTModelController defaultController] registerModelClass:NURedirectionTargetTemplate];
[[NURESTModelController defaultController] registerModelClass:NURedundancyGroup];
[[NURESTModelController defaultController] registerModelClass:NURedundantPort];
[[NURESTModelController defaultController] registerModelClass:NURemoteVrsInfo];
[[NURESTModelController defaultController] registerModelClass:NURole];
[[NURESTModelController defaultController] registerModelClass:NURoleentry];
[[NURESTModelController defaultController] registerModelClass:NURoutingPolicy];
[[NURESTModelController defaultController] registerModelClass:NURoutingPolicyBinding];
[[NURESTModelController defaultController] registerModelClass:NUSAPEgressQoSProfile];
[[NURESTModelController defaultController] registerModelClass:NUSAPIngressQoSProfile];
[[NURESTModelController defaultController] registerModelClass:NUSPATSourcesPool];
[[NURESTModelController defaultController] registerModelClass:NUSSHKey];
[[NURESTModelController defaultController] registerModelClass:NUSSIDConnection];
[[NURESTModelController defaultController] registerModelClass:NUSaaSApplicationGroup];
[[NURESTModelController defaultController] registerModelClass:NUSaaSApplicationType];
[[NURESTModelController defaultController] registerModelClass:NUSharedNetworkResource];
[[NURESTModelController defaultController] registerModelClass:NUShuntLink];
[[NURESTModelController defaultController] registerModelClass:NUSiteInfo];
[[NURESTModelController defaultController] registerModelClass:NUStaticRoute];
[[NURESTModelController defaultController] registerModelClass:NUStatistics];
[[NURESTModelController defaultController] registerModelClass:NUStatisticsPolicy];
[[NURESTModelController defaultController] registerModelClass:NUStatsCollectorInfo];
[[NURESTModelController defaultController] registerModelClass:NUSubnet];
[[NURESTModelController defaultController] registerModelClass:NUSubnetTemplate];
[[NURESTModelController defaultController] registerModelClass:NUSupplementalInfraConfig];
[[NURESTModelController defaultController] registerModelClass:NUSyslogDestination];
[[NURESTModelController defaultController] registerModelClass:NUSysmonUplinkConnection];
[[NURESTModelController defaultController] registerModelClass:NUSystemConfig];
[[NURESTModelController defaultController] registerModelClass:NUTCA];
[[NURESTModelController defaultController] registerModelClass:NUTCPConnectTestResult];
[[NURESTModelController defaultController] registerModelClass:NUTest];
[[NURESTModelController defaultController] registerModelClass:NUTestDefinition];
[[NURESTModelController defaultController] registerModelClass:NUTestRun];
[[NURESTModelController defaultController] registerModelClass:NUTestSuite];
[[NURESTModelController defaultController] registerModelClass:NUTestSuiteRun];
[[NURESTModelController defaultController] registerModelClass:NUThreatPreventionInfo];
[[NURESTModelController defaultController] registerModelClass:NUThreatPreventionNodeInfo];
[[NURESTModelController defaultController] registerModelClass:NUThreatPreventionServerConnection];
[[NURESTModelController defaultController] registerModelClass:NUTier];
[[NURESTModelController defaultController] registerModelClass:NUTrunk];
[[NURESTModelController defaultController] registerModelClass:NUUDPProbeTestResult];
[[NURESTModelController defaultController] registerModelClass:NUUnderlay];
[[NURESTModelController defaultController] registerModelClass:NUUnderlayTest];
[[NURESTModelController defaultController] registerModelClass:NUUplinkConnection];
[[NURESTModelController defaultController] registerModelClass:NUUplinkRD];
[[NURESTModelController defaultController] registerModelClass:NUUser];
[[NURESTModelController defaultController] registerModelClass:NUUserContext];
[[NURESTModelController defaultController] registerModelClass:NUVCenter];
[[NURESTModelController defaultController] registerModelClass:NUVCenterCluster];
[[NURESTModelController defaultController] registerModelClass:NUVCenterDataCenter];
[[NURESTModelController defaultController] registerModelClass:NUVCenterEAMConfig];
[[NURESTModelController defaultController] registerModelClass:NUVCenterHypervisor];
[[NURESTModelController defaultController] registerModelClass:NUVCenterVRSConfig];
[[NURESTModelController defaultController] registerModelClass:NUVLAN];
[[NURESTModelController defaultController] registerModelClass:NUVLANTemplate];
[[NURESTModelController defaultController] registerModelClass:NUVM];
[[NURESTModelController defaultController] registerModelClass:NUVMIPReservation];
[[NURESTModelController defaultController] registerModelClass:NUVMInterface];
[[NURESTModelController defaultController] registerModelClass:NUVMResync];
[[NURESTModelController defaultController] registerModelClass:NUVNF];
[[NURESTModelController defaultController] registerModelClass:NUVNFCatalog];
[[NURESTModelController defaultController] registerModelClass:NUVNFDescriptor];
[[NURESTModelController defaultController] registerModelClass:NUVNFDomainMapping];
[[NURESTModelController defaultController] registerModelClass:NUVNFInterface];
[[NURESTModelController defaultController] registerModelClass:NUVNFInterfaceDescriptor];
[[NURESTModelController defaultController] registerModelClass:NUVNFMetadata];
[[NURESTModelController defaultController] registerModelClass:NUVNFThresholdPolicy];
[[NURESTModelController defaultController] registerModelClass:NUVPNConnection];
[[NURESTModelController defaultController] registerModelClass:NUVPort];
[[NURESTModelController defaultController] registerModelClass:NUVPortInfo];
[[NURESTModelController defaultController] registerModelClass:NUVPortMirror];
[[NURESTModelController defaultController] registerModelClass:NUVRS];
[[NURESTModelController defaultController] registerModelClass:NUVRSAddressRange];
[[NURESTModelController defaultController] registerModelClass:NUVRSMetrics];
[[NURESTModelController defaultController] registerModelClass:NUVRSRedeploymentpolicy];
[[NURESTModelController defaultController] registerModelClass:NUVSC];
[[NURESTModelController defaultController] registerModelClass:NUVSD];
[[NURESTModelController defaultController] registerModelClass:NUVSDComponent];
[[NURESTModelController defaultController] registerModelClass:NUVSDConfig];
[[NURESTModelController defaultController] registerModelClass:NUVSP];
[[NURESTModelController defaultController] registerModelClass:NUVirtualFirewallPolicy];
[[NURESTModelController defaultController] registerModelClass:NUVirtualFirewallRule];
[[NURESTModelController defaultController] registerModelClass:NUVirtualIP];
[[NURESTModelController defaultController] registerModelClass:NUVirtualUplink];
[[NURESTModelController defaultController] registerModelClass:NUVsgRedundantPort];
[[NURESTModelController defaultController] registerModelClass:NUWANService];
[[NURESTModelController defaultController] registerModelClass:NUWebCategory];
[[NURESTModelController defaultController] registerModelClass:NUWebDomainName];
[[NURESTModelController defaultController] registerModelClass:NUWirelessPort];
[[NURESTModelController defaultController] registerModelClass:NUZFBAutoAssignment];
[[NURESTModelController defaultController] registerModelClass:NUZFBRequest];
[[NURESTModelController defaultController] registerModelClass:NUZone];
[[NURESTModelController defaultController] registerModelClass:NUZoneTemplate];
[[NURESTModelController defaultController] registerModelClass:NUvrsInfo];
