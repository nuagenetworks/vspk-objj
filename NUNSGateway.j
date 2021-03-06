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

@import "Fetchers/NUPatchsFetcher.j"
@import "Fetchers/NUGatewaySecuritiesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUThreatPreventionInfosFetcher.j"
@import "Fetchers/NUWirelessPortsFetcher.j"
@import "Fetchers/NUVirtualUplinksFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUUnderlayTestsFetcher.j"
@import "Fetchers/NUVNFsFetcher.j"
@import "Fetchers/NUInfrastructureConfigsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NULocationsFetcher.j"
@import "Fetchers/NUCommandsFetcher.j"
@import "Fetchers/NUBootstrapsFetcher.j"
@import "Fetchers/NUBootstrapActivationsFetcher.j"
@import "Fetchers/NUNSPortInfosFetcher.j"
@import "Fetchers/NUUplinkConnectionsFetcher.j"
@import "Fetchers/NUNSGatewayMonitorsFetcher.j"
@import "Fetchers/NUNSGatewaySummariesFetcher.j"
@import "Fetchers/NUNSGInfosFetcher.j"
@import "Fetchers/NUNSPortsFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUSupplementalInfraConfigsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUNSGatewayBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGatewayBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUNSGatewayBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUNSGatewayBootstrapStatus_QUARANTINED = @"QUARANTINED";
NUNSGatewayBootstrapStatus_REVOKED = @"REVOKED";
NUNSGatewayConfigurationReloadState_APPLIED = @"APPLIED";
NUNSGatewayConfigurationReloadState_FAILED_TO_APPLY = @"FAILED_TO_APPLY";
NUNSGatewayConfigurationReloadState_PENDING = @"PENDING";
NUNSGatewayConfigurationReloadState_SENT = @"SENT";
NUNSGatewayConfigurationReloadState_UNKNOWN = @"UNKNOWN";
NUNSGatewayConfigurationStatus_FAILURE = @"FAILURE";
NUNSGatewayConfigurationStatus_SUCCESS = @"SUCCESS";
NUNSGatewayConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUNSGatewayConfigureLoadBalancing_DISABLED = @"DISABLED";
NUNSGatewayConfigureLoadBalancing_INHERITED = @"INHERITED";
NUNSGatewayDerivedSSHServiceState_INHERITED_DISABLED = @"INHERITED_DISABLED";
NUNSGatewayDerivedSSHServiceState_INHERITED_ENABLED = @"INHERITED_ENABLED";
NUNSGatewayDerivedSSHServiceState_INSTANCE_DISABLED = @"INSTANCE_DISABLED";
NUNSGatewayDerivedSSHServiceState_INSTANCE_ENABLED = @"INSTANCE_ENABLED";
NUNSGatewayDerivedSSHServiceState_UNKNOWN = @"UNKNOWN";
NUNSGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGatewayEntityScope_GLOBAL = @"GLOBAL";
NUNSGatewayFamily_ANY = @"ANY";
NUNSGatewayFamily_NSG_AMI = @"NSG_AMI";
NUNSGatewayFamily_NSG_AZ = @"NSG_AZ";
NUNSGatewayFamily_NSG_C = @"NSG_C";
NUNSGatewayFamily_NSG_E = @"NSG_E";
NUNSGatewayFamily_NSG_E200 = @"NSG_E200";
NUNSGatewayFamily_NSG_E300 = @"NSG_E300";
NUNSGatewayFamily_NSG_V = @"NSG_V";
NUNSGatewayFamily_NSG_X = @"NSG_X";
NUNSGatewayFamily_NSG_X200 = @"NSG_X200";
NUNSGatewayFunctions_GATEWAY = @"GATEWAY";
NUNSGatewayFunctions_HUB = @"HUB";
NUNSGatewayFunctions_UBR = @"UBR";
NUNSGatewayInheritedSSHServiceState_DISABLED = @"DISABLED";
NUNSGatewayInheritedSSHServiceState_ENABLED = @"ENABLED";
NUNSGatewayNetworkAcceleration_NONE = @"NONE";
NUNSGatewayNetworkAcceleration_PERFORMANCE = @"PERFORMANCE";
NUNSGatewayNetworkAcceleration_SESSION_OPTIMIZED = @"SESSION_OPTIMIZED";
NUNSGatewayNetworkAcceleration_VNF_AWARE = @"VNF_AWARE";
NUNSGatewayPermittedAction_ALL = @"ALL";
NUNSGatewayPermittedAction_DEPLOY = @"DEPLOY";
NUNSGatewayPermittedAction_EXTEND = @"EXTEND";
NUNSGatewayPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSGatewayPermittedAction_READ = @"READ";
NUNSGatewayPermittedAction_USE = @"USE";
NUNSGatewayPersonality_NSG = @"NSG";
NUNSGatewayPersonality_NSGBR = @"NSGBR";
NUNSGatewayPersonality_NSGDUC = @"NSGDUC";
NUNSGatewaySSHService_DISABLED = @"DISABLED";
NUNSGatewaySSHService_ENABLED = @"ENABLED";
NUNSGatewaySSHService_INHERITED = @"INHERITED";
NUNSGatewaySyslogLevel_ALERT = @"ALERT";
NUNSGatewaySyslogLevel_CRITICAL = @"CRITICAL";
NUNSGatewaySyslogLevel_EMERGENCY = @"EMERGENCY";
NUNSGatewaySyslogLevel_ERROR = @"ERROR";
NUNSGatewaySyslogLevel_INFO = @"INFO";
NUNSGatewaySyslogLevel_NOTICE = @"NOTICE";
NUNSGatewaySyslogLevel_WARNING = @"WARNING";
NUNSGatewayTPMStatus_DISABLED = @"DISABLED";
NUNSGatewayTPMStatus_ENABLED_NOT_OPERATIONAL = @"ENABLED_NOT_OPERATIONAL";
NUNSGatewayTPMStatus_ENABLED_OPERATIONAL = @"ENABLED_OPERATIONAL";
NUNSGatewayTPMStatus_UNKNOWN = @"UNKNOWN";
NUNSGatewayTunnelShaping_DISABLED = @"DISABLED";
NUNSGatewayTunnelShaping_ENABLED = @"ENABLED";
NUNSGatewayZFBMatchAttribute_HOSTNAME = @"HOSTNAME";
NUNSGatewayZFBMatchAttribute_IP_ADDRESS = @"IP_ADDRESS";
NUNSGatewayZFBMatchAttribute_MAC_ADDRESS = @"MAC_ADDRESS";
NUNSGatewayZFBMatchAttribute_NONE = @"NONE";
NUNSGatewayZFBMatchAttribute_NSGATEWAY_ID = @"NSGATEWAY_ID";
NUNSGatewayZFBMatchAttribute_SERIAL_NUMBER = @"SERIAL_NUMBER";
NUNSGatewayZFBMatchAttribute_UUID = @"UUID";


/*!
    Network Services Gateways are a policy enforcement end-points responsible for the delivery of networking services. NSG access ports/VLANs may be attached to existing host or bridge VPorts.
*/
@implementation NUNSGateway : NURESTObject
{
    /*!
        MAC Address of the NSG
    */
    CPString _MACAddress @accessors(property=MACAddress);
    /*!
        Release Date of the AAR Application
    */
    CPString _AARApplicationReleaseDate @accessors(property=AARApplicationReleaseDate);
    /*!
        The AAR Application Version
    */
    CPString _AARApplicationVersion @accessors(property=AARApplicationVersion);
    /*!
        This attribute is deprecated in version 4.0.
    */
    BOOL _NATTraversalEnabled @accessors(property=NATTraversalEnabled);
    /*!
        Boolean flag to indicate whether MSS on TCP is enabled or not
    */
    BOOL _TCPMSSEnabled @accessors(property=TCPMSSEnabled);
    /*!
        Maximum Segment Size for TCP(min = 576, max = 7812).
    */
    CPNumber _TCPMaximumSegmentSize @accessors(property=TCPMaximumSegmentSize);
    /*!
        The Zero Factor Bootstrapping (ZFB) Attribute that should be used to match the gateway on when it tries to bootstrap.
    */
    CPString _ZFBMatchAttribute @accessors(property=ZFBMatchAttribute);
    /*!
        The Zero Factor Bootstrapping (ZFB) value that needs to match with the gateway during the bootstrap attempt. This value needs to match with the ZFB Match Attribute.
    */
    CPString _ZFBMatchValue @accessors(property=ZFBMatchValue);
    /*!
        Release Date of the NSG BiOS
    */
    CPString _BIOSReleaseDate @accessors(property=BIOSReleaseDate);
    /*!
        NSG BIOS Version
    */
    CPString _BIOSVersion @accessors(property=BIOSVersion);
    /*!
        The part number of the NSG
    */
    CPString _SKU @accessors(property=SKU);
    /*!
        TPM Status of the NSG based on the information received by the device during bootstrapping or upgrade.
    */
    CPString _TPMStatus @accessors(property=TPMStatus);
    /*!
        TPM (Trusted Platform Module) version as reported by the NSG.
    */
    CPString _TPMVersion @accessors(property=TPMVersion);
    /*!
        Current CPU allocation for network accelerated gateways.  Displays total number of cores and those isolated.
    */
    CPString _CPUCoreAllocation @accessors(property=CPUCoreAllocation);
    /*!
        The NSG Processor Type as reported during bootstrapping.
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        Version of the latest imported Application Signatures.
    */
    CPString _VSDAARApplicationVersion @accessors(property=VSDAARApplicationVersion);
    /*!
        The NSG Version (software) as reported during bootstrapping or following an upgrade.
    */
    CPString _NSGVersion @accessors(property=NSGVersion);
    /*!
        Indicates if SSH Service is enabled/disabled on a NSG. The value configured for this attribute is used only when instanceSSHOverride is allowed on the associated Gateway Template.
    */
    CPString _SSHService @accessors(property=SSHService);
    /*!
        The Redhat UUID of the NSG
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        The NSG Family type.
    */
    CPString _family @accessors(property=family);
    /*!
        Time stamp of the last known configuration update of the NSG.  This timestamp gets updated when a bootstrap is successful or when a configuration reload request triggered by VSD is successful.
    */
    CPNumber _lastConfigurationReloadTimestamp @accessors(property=lastConfigurationReloadTimestamp);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Identifier of the Gateway, based on the systemId
    */
    CPString _datapathID @accessors(property=datapathID);
    /*!
        Release version of NSG, which is used to determine the feature capabilties of NSG.
    */
    CPString _gatewayConfigRawVersion @accessors(property=gatewayConfigRawVersion);
    /*!
        Interpreted version of NSG, which is used to determine the feature capabilities of NSG.
    */
    CPString _gatewayConfigVersion @accessors(property=gatewayConfigVersion);
    /*!
        Indicates status of this gateway
    */
    BOOL _gatewayConnected @accessors(property=gatewayConnected);
    /*!
        The Redundancy Gateway Group associated with this Gateway Instance. This is a read only attribute
    */
    CPString _redundancyGroupID @accessors(property=redundancyGroupID);
    /*!
        The ID of the template that this Gateway was created from. This should be set when instantiating a Gateway
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Indicates that this gateway is pending state or state. When in pending state it cannot be modified from REST.
    */
    BOOL _pending @accessors(property=pending);
    /*!
        The NSG's serial number
    */
    CPString _serialNumber @accessors(property=serialNumber);
    /*!
        Indicates the SSH Service state on a NSG. This value is derived based on the SSHService configuration on the NSG and the associated Gateway Template.
    */
    CPString _derivedSSHServiceState @accessors(property=derivedSSHServiceState);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Personality of the Gateway - NSG, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        The number of days for which the NSG's certificate is valid.
    */
    CPNumber _certValidityDays @accessors(property=certValidityDays);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        Attribute that enables or disables Network Acceleration (DPDK) on the NSGateway instance.  Changing the value of this field will cause the device to restart at the next configuration reload.
    */
    CPString _networkAcceleration @accessors(property=networkAcceleration);
    /*!
        Indicates if Threat Prevention capability enabled on NSG.
    */
    BOOL _threatPreventionEnabled @accessors(property=threatPreventionEnabled);
    /*!
        Transient representation of the same property on NSGInfo.
    */
    CPString _libraries @accessors(property=libraries);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Indicates the SSH Service state which is configured on the associated template instance.
    */
    CPString _inheritedSSHServiceState @accessors(property=inheritedSSHServiceState);
    /*!
        The enterprise associated with this Gateway. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The NSGateway's Location. NOTE: this is a read only property, it can only be set through the location object
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Status resulting from a manually triggered configuration reload operation on an NSG.  This value only reflects the state for a manual action requested by the operator, not the automatic periodic configuration reload triggered by the NSG itself.
    */
    CPString _configurationReloadState @accessors(property=configurationReloadState);
    /*!
        NSG Configuration status represents the NSG update state following a query by the NSG to get the latest version of the infraconfig.json file.  This status will be updated following a Bootstrap request or a Configuration Reload.  Success means that the NSG was able to apply the changes included in the latest infraconfig.json file.  A Failure response will be returned if the NSG was unable to apply the changes; this is normally accompanied with a rollback of the NSG to the previous configuration.
    */
    CPString _configurationStatus @accessors(property=configurationStatus);
    /*!
        Describes whether the load balancing behavior used for Fc's in inherited from enterprise or disabled. 
    */
    CPString _configureLoadBalancing @accessors(property=configureLoadBalancing);
    /*!
        CoS Value for Self Generated Traffic (Control Traffic). Min is 0 and Max is 7
    */
    CPNumber _controlTrafficCOSValue @accessors(property=controlTrafficCOSValue);
    /*!
        DSCP Value for Self Generated Traffic (Control Traffic). Min is 0 and Max is 63
    */
    CPNumber _controlTrafficDSCPValue @accessors(property=controlTrafficDSCPValue);
    /*!
        The bootstrap details associated with this NSGateway. NOTE: This is a read only property, it can only be set during creation of an NSG.
    */
    CPString _bootstrapID @accessors(property=bootstrapID);
    /*!
        The bootstrap status of this NSGateway. NOTE: This is a read only property.
    */
    CPString _bootstrapStatus @accessors(property=bootstrapStatus);
    /*!
        Operation mode of NSGateway
    */
    CPString _operationMode @accessors(property=operationMode);
    /*!
        Operation Status of NSGateway
    */
    CPString _operationStatus @accessors(property=operationStatus);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        NSG Product Name as reported during bootstrapping.
    */
    CPString _productName @accessors(property=productName);
    /*!
        Read only ID of the associated gateway security object.
    */
    CPString _associatedGatewaySecurityID @accessors(property=associatedGatewaySecurityID);
    /*!
        Read only ID of the associated gateway security profile object
    */
    CPString _associatedGatewaySecurityProfileID @accessors(property=associatedGatewaySecurityProfileID);
    /*!
        Read only ID of the associated NSG info object
    */
    CPString _associatedNSGInfoID @accessors(property=associatedNSGInfoID);
    /*!
        The UUID of the NSG Upgrade Profile associated to this NSG instance.
    */
    CPString _associatedNSGUpgradeProfileID @accessors(property=associatedNSGUpgradeProfileID);
    /*!
        The ID of the associated Overlay Management Profile
    */
    CPString _associatedOverlayManagementProfileID @accessors(property=associatedOverlayManagementProfileID);
    /*!
        The size and number of huge pages for an NSG that is running in network accelerated mode.  Hugepage values states the portion of memory reserved for network accelerated services.
    */
    CPString _hugePageSetting @accessors(property=hugePageSetting);
    /*!
        List of supported functions. This is only relevant for NSG-UBR and will be set to UBR by default in case an NSG-UBR is created. For a regular NSG, this will be set to null.
    */
    CPArrayController _functions @accessors(property=functions);
    /*!
        Indicates if the UBR will perform tunnel shaping to the NSG when a tunnel shaper is associated to the NSG.
    */
    CPString _tunnelShaping @accessors(property=tunnelShaping);
    /*!
        The Auto Discovered Gateway associated with this Gateway Instance
    */
    CPString _autoDiscGatewayID @accessors(property=autoDiscGatewayID);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The minimal logging level of the messages the NSG will be reporting to the external syslog server that has been configured on the Infrastructure Gateway Profile.
    */
    CPString _syslogLevel @accessors(property=syslogLevel);
    /*!
        Identifier of the Gateway, cannot be modified after creation
    */
    CPString _systemID @accessors(property=systemID);
    
    NUPatchsFetcher _childrenPatchs @accessors(property=childrenPatchs);
    NUGatewaySecuritiesFetcher _childrenGatewaySecurities @accessors(property=childrenGatewaySecurities);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUThreatPreventionInfosFetcher _childrenThreatPreventionInfos @accessors(property=childrenThreatPreventionInfos);
    NUWirelessPortsFetcher _childrenWirelessPorts @accessors(property=childrenWirelessPorts);
    NUVirtualUplinksFetcher _childrenVirtualUplinks @accessors(property=childrenVirtualUplinks);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUUnderlayTestsFetcher _childrenUnderlayTests @accessors(property=childrenUnderlayTests);
    NUVNFsFetcher _childrenVNFs @accessors(property=childrenVNFs);
    NUInfrastructureConfigsFetcher _childrenInfrastructureConfigs @accessors(property=childrenInfrastructureConfigs);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NULocationsFetcher _childrenLocations @accessors(property=childrenLocations);
    NUCommandsFetcher _childrenCommands @accessors(property=childrenCommands);
    NUBootstrapsFetcher _childrenBootstraps @accessors(property=childrenBootstraps);
    NUBootstrapActivationsFetcher _childrenBootstrapActivations @accessors(property=childrenBootstrapActivations);
    NUNSPortInfosFetcher _childrenNSPortInfos @accessors(property=childrenNSPortInfos);
    NUUplinkConnectionsFetcher _childrenUplinkConnections @accessors(property=childrenUplinkConnections);
    NUNSGatewayMonitorsFetcher _childrenNSGatewayMonitors @accessors(property=childrenNSGatewayMonitors);
    NUNSGatewaySummariesFetcher _childrenNSGatewaySummaries @accessors(property=childrenNSGatewaySummaries);
    NUNSGInfosFetcher _childrenNSGInfos @accessors(property=childrenNSGInfos);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUSupplementalInfraConfigsFetcher _childrenSupplementalInfraConfigs @accessors(property=childrenSupplementalInfraConfigs);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsgateway";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MACAddress"];
        [self exposeLocalKeyPathToREST:@"AARApplicationReleaseDate"];
        [self exposeLocalKeyPathToREST:@"AARApplicationVersion"];
        [self exposeLocalKeyPathToREST:@"NATTraversalEnabled"];
        [self exposeLocalKeyPathToREST:@"TCPMSSEnabled"];
        [self exposeLocalKeyPathToREST:@"TCPMaximumSegmentSize"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchAttribute"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchValue"];
        [self exposeLocalKeyPathToREST:@"BIOSReleaseDate"];
        [self exposeLocalKeyPathToREST:@"BIOSVersion"];
        [self exposeLocalKeyPathToREST:@"SKU"];
        [self exposeLocalKeyPathToREST:@"TPMStatus"];
        [self exposeLocalKeyPathToREST:@"TPMVersion"];
        [self exposeLocalKeyPathToREST:@"CPUCoreAllocation"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"VSDAARApplicationVersion"];
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"SSHService"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"lastConfigurationReloadTimestamp"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"datapathID"];
        [self exposeLocalKeyPathToREST:@"gatewayConfigRawVersion"];
        [self exposeLocalKeyPathToREST:@"gatewayConfigVersion"];
        [self exposeLocalKeyPathToREST:@"gatewayConnected"];
        [self exposeLocalKeyPathToREST:@"redundancyGroupID"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"pending"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"derivedSSHServiceState"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"certValidityDays"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"networkAcceleration"];
        [self exposeLocalKeyPathToREST:@"threatPreventionEnabled"];
        [self exposeLocalKeyPathToREST:@"libraries"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"inheritedSSHServiceState"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"configurationReloadState"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"configureLoadBalancing"];
        [self exposeLocalKeyPathToREST:@"controlTrafficCOSValue"];
        [self exposeLocalKeyPathToREST:@"controlTrafficDSCPValue"];
        [self exposeLocalKeyPathToREST:@"bootstrapID"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"operationMode"];
        [self exposeLocalKeyPathToREST:@"operationStatus"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"productName"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGInfoID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGUpgradeProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedOverlayManagementProfileID"];
        [self exposeLocalKeyPathToREST:@"hugePageSetting"];
        [self exposeLocalKeyPathToREST:@"functions"];
        [self exposeLocalKeyPathToREST:@"tunnelShaping"];
        [self exposeLocalKeyPathToREST:@"autoDiscGatewayID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"syslogLevel"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenPatchs = [NUPatchsFetcher fetcherWithParentObject:self];
        _childrenGatewaySecurities = [NUGatewaySecuritiesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenThreatPreventionInfos = [NUThreatPreventionInfosFetcher fetcherWithParentObject:self];
        _childrenWirelessPorts = [NUWirelessPortsFetcher fetcherWithParentObject:self];
        _childrenVirtualUplinks = [NUVirtualUplinksFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenUnderlayTests = [NUUnderlayTestsFetcher fetcherWithParentObject:self];
        _childrenVNFs = [NUVNFsFetcher fetcherWithParentObject:self];
        _childrenInfrastructureConfigs = [NUInfrastructureConfigsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenLocations = [NULocationsFetcher fetcherWithParentObject:self];
        _childrenCommands = [NUCommandsFetcher fetcherWithParentObject:self];
        _childrenBootstraps = [NUBootstrapsFetcher fetcherWithParentObject:self];
        _childrenBootstrapActivations = [NUBootstrapActivationsFetcher fetcherWithParentObject:self];
        _childrenNSPortInfos = [NUNSPortInfosFetcher fetcherWithParentObject:self];
        _childrenUplinkConnections = [NUUplinkConnectionsFetcher fetcherWithParentObject:self];
        _childrenNSGatewayMonitors = [NUNSGatewayMonitorsFetcher fetcherWithParentObject:self];
        _childrenNSGatewaySummaries = [NUNSGatewaySummariesFetcher fetcherWithParentObject:self];
        _childrenNSGInfos = [NUNSGInfosFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenSupplementalInfraConfigs = [NUSupplementalInfraConfigsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end