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

@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUBootstrapsFetcher.j"
@import "Fetchers/NUBootstrapActivationsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGatewaySecuritiesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUInfrastructureConfigsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NULocationsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNSPortsFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"

NUNSGatewayBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGatewayBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUNSGatewayBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGatewayBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUNSGatewayConfigurationReloadState_APPLIED = @"APPLIED";
NUNSGatewayConfigurationReloadState_PENDING = @"PENDING";
NUNSGatewayConfigurationReloadState_SENT = @"SENT";
NUNSGatewayConfigurationReloadState_UNKNOWN = @"UNKNOWN";
NUNSGatewayConfigurationStatus_FAILURE = @"FAILURE";
NUNSGatewayConfigurationStatus_SUCCESS = @"SUCCESS";
NUNSGatewayConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUNSGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGatewayEntityScope_GLOBAL = @"GLOBAL";
NUNSGatewayPermittedAction_ALL = @"ALL";
NUNSGatewayPermittedAction_DEPLOY = @"DEPLOY";
NUNSGatewayPermittedAction_EXTEND = @"EXTEND";
NUNSGatewayPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSGatewayPermittedAction_READ = @"READ";
NUNSGatewayPermittedAction_USE = @"USE";
NUNSGatewayPersonality_DC7X50 = @"DC7X50";
NUNSGatewayPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUNSGatewayPersonality_NSG = @"NSG";
NUNSGatewayPersonality_OTHER = @"OTHER";
NUNSGatewayPersonality_VRSG = @"VRSG";
NUNSGatewayPersonality_VSA = @"VSA";
NUNSGatewayPersonality_VSG = @"VSG";
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
        This attribute is deprecated in version 4.0.
    */
    BOOL _NATTraversalEnabled @accessors(property=NATTraversalEnabled);
    /*!
        TPM Status of the NSG based on the information received by the device during bootstrapping or upgrade.
    */
    CPString _TPMStatus @accessors(property=TPMStatus);
    /*!
        Readonly Id of the associated gateway security object
    */
    CPString _associatedGatewaySecurityID @accessors(property=associatedGatewaySecurityID);
    /*!
        Readonly Id of the associated gateway security profile object
    */
    CPString _associatedGatewaySecurityProfileID @accessors(property=associatedGatewaySecurityProfileID);
    /*!
        The Auto Discovered Gateway associated with this Gateway Instance
    */
    CPString _autoDiscGatewayID @accessors(property=autoDiscGatewayID);
    /*!
        The bootstrap details associated with this NSGateway. NOTE: this is a read only property, it can only be set during creation of an NSG
    */
    CPString _bootstrapID @accessors(property=bootstrapID);
    /*!
        The bootstrap status of this NSGateway. NOTE: this is a read only property
    */
    CPString _bootstrapStatus @accessors(property=bootstrapStatus);
    /*!
        None
    */
    CPString _configurationReloadState @accessors(property=configurationReloadState);
    /*!
        None
    */
    CPString _configurationStatus @accessors(property=configurationStatus);
    /*!
        Identifier of the Gateway, based on the systemId
    */
    CPString _datapathID @accessors(property=datapathID);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        The enterprise associated with this Gateway. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Time stamp of the last known configuration update of the NSG.  This timestamp gets updated when a bootstrap is successful or when a configuration reload request triggered by VSD is successful.
    */
    CPNumber _lastConfigurationReloadTimestamp @accessors(property=lastConfigurationReloadTimestamp);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The NSGateway's Location. NOTE: this is a read only property, it can only be set through the location object
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        Indicates that this gateway is pending state or state. When in pending state it cannot be modified from REST.
    */
    BOOL _pending @accessors(property=pending);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Personality of the Gateway - NSG, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        The Redundancy Gateway Group associated with this Gateway Instance. This is a read only attribute
    */
    CPString _redundancyGroupID @accessors(property=redundancyGroupID);
    /*!
        Identifier of the Gateway, cannot be modified after creation
    */
    CPString _systemID @accessors(property=systemID);
    /*!
        The ID of the template that this Gateway was created from. This should be set when instantiating a Gateway
    */
    CPString _templateID @accessors(property=templateID);
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUBootstrapsFetcher _childrenBootstraps @accessors(property=childrenBootstraps);
    NUBootstrapActivationsFetcher _childrenBootstrapActivations @accessors(property=childrenBootstrapActivations);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGatewaySecuritiesFetcher _childrenGatewaySecurities @accessors(property=childrenGatewaySecurities);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUInfrastructureConfigsFetcher _childrenInfrastructureConfigs @accessors(property=childrenInfrastructureConfigs);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NULocationsFetcher _childrenLocations @accessors(property=childrenLocations);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    
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
        [self exposeLocalKeyPathToREST:@"NATTraversalEnabled"];
        [self exposeLocalKeyPathToREST:@"TPMStatus"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityProfileID"];
        [self exposeLocalKeyPathToREST:@"autoDiscGatewayID"];
        [self exposeLocalKeyPathToREST:@"bootstrapID"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"configurationReloadState"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"datapathID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastConfigurationReloadTimestamp"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"pending"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"redundancyGroupID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenBootstraps = [NUBootstrapsFetcher fetcherWithParentObject:self];
        _childrenBootstrapActivations = [NUBootstrapActivationsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGatewaySecurities = [NUGatewaySecuritiesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenInfrastructureConfigs = [NUInfrastructureConfigsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenLocations = [NULocationsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end