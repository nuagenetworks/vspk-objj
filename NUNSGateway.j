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

@import "Fetchers/NUGatewaySecuritiesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUWirelessPortsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUInfrastructureConfigsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NULocationsFetcher.j"
@import "Fetchers/NUMonitorscopesFetcher.j"
@import "Fetchers/NUBootstrapsFetcher.j"
@import "Fetchers/NUBootstrapActivationsFetcher.j"
@import "Fetchers/NUUplinkConnectionsFetcher.j"
@import "Fetchers/NUNSGInfosFetcher.j"
@import "Fetchers/NUNSPortsFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUNSGatewayBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGatewayBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUNSGatewayBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUNSGatewayConfigurationReloadState_APPLIED = @"APPLIED";
NUNSGatewayConfigurationReloadState_FAILED_TO_APPLY = @"FAILED_TO_APPLY";
NUNSGatewayConfigurationReloadState_PENDING = @"PENDING";
NUNSGatewayConfigurationReloadState_SENT = @"SENT";
NUNSGatewayConfigurationReloadState_UNKNOWN = @"UNKNOWN";
NUNSGatewayConfigurationStatus_FAILURE = @"FAILURE";
NUNSGatewayConfigurationStatus_SUCCESS = @"SUCCESS";
NUNSGatewayConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUNSGatewayDerivedSSHServiceState_INHERITED_DISABLED = @"INHERITED_DISABLED";
NUNSGatewayDerivedSSHServiceState_INHERITED_ENABLED = @"INHERITED_ENABLED";
NUNSGatewayDerivedSSHServiceState_INSTANCE_DISABLED = @"INSTANCE_DISABLED";
NUNSGatewayDerivedSSHServiceState_INSTANCE_ENABLED = @"INSTANCE_ENABLED";
NUNSGatewayDerivedSSHServiceState_UNKNOWN = @"UNKNOWN";
NUNSGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGatewayEntityScope_GLOBAL = @"GLOBAL";
NUNSGatewayFamily_ANY = @"ANY";
NUNSGatewayFamily_NSG_E = @"NSG_E";
NUNSGatewayFamily_NSG_V = @"NSG_V";
NUNSGatewayInheritedSSHServiceState_DISABLED = @"DISABLED";
NUNSGatewayInheritedSSHServiceState_ENABLED = @"ENABLED";
NUNSGatewayNetworkAcceleration_NONE = @"NONE";
NUNSGatewayNetworkAcceleration_NORMAL = @"NORMAL";
NUNSGatewayNetworkAcceleration_OPTIMAL = @"OPTIMAL";
NUNSGatewayNetworkAcceleration_PERFORMANCE = @"PERFORMANCE";
NUNSGatewayPermittedAction_ALL = @"ALL";
NUNSGatewayPermittedAction_DEPLOY = @"DEPLOY";
NUNSGatewayPermittedAction_EXTEND = @"EXTEND";
NUNSGatewayPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSGatewayPermittedAction_READ = @"READ";
NUNSGatewayPermittedAction_USE = @"USE";
NUNSGatewayPersonality_DC7X50 = @"DC7X50";
NUNSGatewayPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUNSGatewayPersonality_NSG = @"NSG";
NUNSGatewayPersonality_NSGBR = @"NSGBR";
NUNSGatewayPersonality_NSGDUC = @"NSGDUC";
NUNSGatewayPersonality_OTHER = @"OTHER";
NUNSGatewayPersonality_VRSG = @"VRSG";
NUNSGatewayPersonality_VSA = @"VSA";
NUNSGatewayPersonality_VSG = @"VSG";
NUNSGatewaySSHService_DISABLED = @"DISABLED";
NUNSGatewaySSHService_ENABLED = @"ENABLED";
NUNSGatewaySSHService_INHERITED = @"INHERITED";
NUNSGatewayTPMStatus_DISABLED = @"DISABLED";
NUNSGatewayTPMStatus_ENABLED_NOT_OPERATIONAL = @"ENABLED_NOT_OPERATIONAL";
NUNSGatewayTPMStatus_ENABLED_OPERATIONAL = @"ENABLED_OPERATIONAL";
NUNSGatewayTPMStatus_UNKNOWN = @"UNKNOWN";


/*!
    Represents a Network Service Gateway.
*/
@implementation NUNSGateway : NURESTObject
{
    /*!
        MAC Address of the NSG
    */
    CPString _MACAddress @accessors(property=MACAddress);
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
        The NSG Processor Type
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        The NSG Version
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
        The NSG Type
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
        Identifier of the Gateway, based on the systemId
    */
    CPString _datapathID @accessors(property=datapathID);
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
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        Network Acceleration type to be used when network acceleration is enabled
    */
    CPString _networkAcceleration @accessors(property=networkAcceleration);
    /*!
        Transient representation of the same property on NSGInfo.
    */
    CPString _libraries @accessors(property=libraries);
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
        The bootstrap details associated with this NSGateway. NOTE: this is a read only property, it can only be set during creation of an NSG
    */
    CPString _bootstrapID @accessors(property=bootstrapID);
    /*!
        The bootstrap status of this NSGateway. NOTE: this is a read only property
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
        NSG Product Name
    */
    CPString _productName @accessors(property=productName);
    /*!
        Readonly Id of the associated gateway security object
    */
    CPString _associatedGatewaySecurityID @accessors(property=associatedGatewaySecurityID);
    /*!
        Readonly Id of the associated gateway security profile object
    */
    CPString _associatedGatewaySecurityProfileID @accessors(property=associatedGatewaySecurityProfileID);
    /*!
        Readonly Id of the associated nsg info object
    */
    CPString _associatedNSGInfoID @accessors(property=associatedNSGInfoID);
    /*!
        The Auto Discovered Gateway associated with this Gateway Instance
    */
    CPString _autoDiscGatewayID @accessors(property=autoDiscGatewayID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Identifier of the Gateway, cannot be modified after creation
    */
    CPString _systemID @accessors(property=systemID);
    
    NUGatewaySecuritiesFetcher _childrenGatewaySecurities @accessors(property=childrenGatewaySecurities);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUWirelessPortsFetcher _childrenWirelessPorts @accessors(property=childrenWirelessPorts);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUInfrastructureConfigsFetcher _childrenInfrastructureConfigs @accessors(property=childrenInfrastructureConfigs);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NULocationsFetcher _childrenLocations @accessors(property=childrenLocations);
    NUMonitorscopesFetcher _childrenMonitorscopes @accessors(property=childrenMonitorscopes);
    NUBootstrapsFetcher _childrenBootstraps @accessors(property=childrenBootstraps);
    NUBootstrapActivationsFetcher _childrenBootstrapActivations @accessors(property=childrenBootstrapActivations);
    NUUplinkConnectionsFetcher _childrenUplinkConnections @accessors(property=childrenUplinkConnections);
    NUNSGInfosFetcher _childrenNSGInfos @accessors(property=childrenNSGInfos);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
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
        [self exposeLocalKeyPathToREST:@"NATTraversalEnabled"];
        [self exposeLocalKeyPathToREST:@"TCPMSSEnabled"];
        [self exposeLocalKeyPathToREST:@"TCPMaximumSegmentSize"];
        [self exposeLocalKeyPathToREST:@"BIOSVersion"];
        [self exposeLocalKeyPathToREST:@"SKU"];
        [self exposeLocalKeyPathToREST:@"TPMStatus"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"SSHService"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"lastConfigurationReloadTimestamp"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"datapathID"];
        [self exposeLocalKeyPathToREST:@"redundancyGroupID"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"pending"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"derivedSSHServiceState"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"networkAcceleration"];
        [self exposeLocalKeyPathToREST:@"libraries"];
        [self exposeLocalKeyPathToREST:@"inheritedSSHServiceState"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"configurationReloadState"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"bootstrapID"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"operationMode"];
        [self exposeLocalKeyPathToREST:@"operationStatus"];
        [self exposeLocalKeyPathToREST:@"productName"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGInfoID"];
        [self exposeLocalKeyPathToREST:@"autoDiscGatewayID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenGatewaySecurities = [NUGatewaySecuritiesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenWirelessPorts = [NUWirelessPortsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenInfrastructureConfigs = [NUInfrastructureConfigsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenLocations = [NULocationsFetcher fetcherWithParentObject:self];
        _childrenMonitorscopes = [NUMonitorscopesFetcher fetcherWithParentObject:self];
        _childrenBootstraps = [NUBootstrapsFetcher fetcherWithParentObject:self];
        _childrenBootstrapActivations = [NUBootstrapActivationsFetcher fetcherWithParentObject:self];
        _childrenUplinkConnections = [NUUplinkConnectionsFetcher fetcherWithParentObject:self];
        _childrenNSGInfos = [NUNSGInfosFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end