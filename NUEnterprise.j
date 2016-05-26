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

@import "Fetchers/NUL2DomainsFetcher.j"
@import "Fetchers/NUL2DomainTemplatesFetcher.j"
@import "Fetchers/NURateLimitersFetcher.j"
@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUGatewayTemplatesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NULDAPConfigurationsFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUMetadataTagsFetcher.j"
@import "Fetchers/NUNetworkMacroGroupsFetcher.j"
@import "Fetchers/NUKeyServerMonitorsFetcher.j"
@import "Fetchers/NUEgressQOSPoliciesFetcher.j"
@import "Fetchers/NUSharedNetworkResourcesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUInfrastructurePortProfilesFetcher.j"
@import "Fetchers/NUEnterpriseNetworksFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUAppsFetcher.j"
@import "Fetchers/NUApplicationServicesFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUGroupKeyEncryptionProfilesFetcher.j"
@import "Fetchers/NUDSCPForwardingClassTablesFetcher.j"
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUNSGatewayTemplatesFetcher.j"
@import "Fetchers/NUNSRedundantGatewayGroupsFetcher.j"
@import "Fetchers/NUMultiCastListsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUExternalAppServicesFetcher.j"
@import "Fetchers/NUExternalServicesFetcher.j"

NUEnterpriseAllowedForwardingClasses_A = @"A";
NUEnterpriseAllowedForwardingClasses_B = @"B";
NUEnterpriseAllowedForwardingClasses_C = @"C";
NUEnterpriseAllowedForwardingClasses_D = @"D";
NUEnterpriseAllowedForwardingClasses_E = @"E";
NUEnterpriseAllowedForwardingClasses_F = @"F";
NUEnterpriseAllowedForwardingClasses_G = @"G";
NUEnterpriseAllowedForwardingClasses_H = @"H";
NUEnterpriseAllowedForwardingClasses_NONE = @"NONE";
NUEnterpriseAvatarType_BASE64 = @"BASE64";
NUEnterpriseAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUEnterpriseAvatarType_URL = @"URL";
NUEnterpriseEncryptionManagementMode_DISABLED = @"DISABLED";
NUEnterpriseEncryptionManagementMode_MANAGED = @"MANAGED";
NUEnterpriseEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEnterpriseEntityScope_GLOBAL = @"GLOBAL";


/*!
    Definition of the enterprise object. This is the top level object that represents an organization.
*/
@implementation NUEnterprise : NURESTObject
{
    /*!
        Read-only flag - indicates if LDAP is used for authorization for the enterprise. For detailed explanation, see definition in LDAPConfiguration class
    */
    BOOL _LDAPAuthorizationEnabled @accessors(property=LDAPAuthorizationEnabled);
    /*!
        Read-only flag - indicates if LDAP is used for authentication for the enterprise. For detailed explanation, see definition in LDAPConfiguration class
    */
    BOOL _LDAPEnabled @accessors(property=LDAPEnabled);
    /*!
        DHCP Lease Interval (in hrs) to be used by an enterprise.
    */
    CPNumber _DHCPLeaseInterval @accessors(property=DHCPLeaseInterval);
    /*!
        The unique name of the enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Readonly Id of the auto generated receive multicast list associated with this enterprise profile
    */
    CPString _receiveMultiCastListID @accessors(property=receiveMultiCastListID);
    /*!
        Readonly Id of the auto generated send multicast list associated with this enterprise profile
    */
    CPString _sendMultiCastListID @accessors(property=sendMultiCastListID);
    /*!
        A description of the enterprise
    */
    CPString _description @accessors(property=description);
    /*!
        Controls whether this enterprise has access to advanced QoS settings
    */
    BOOL _allowAdvancedQOSConfiguration @accessors(property=allowAdvancedQOSConfiguration);
    /*!
        This flag indicates if the enterprise/organization can manage gateways. If yes then it can create gateway templates, instantiate them etc.
    */
    BOOL _allowGatewayManagement @accessors(property=allowGatewayManagement);
    /*!
        Controls whether QoS policies and templates created under this enterprise set the trusted flag to true
    */
    BOOL _allowTrustedForwardingClass @accessors(property=allowTrustedForwardingClass);
    /*!
        Allowed Forwarding Classes for this enterprise. Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _allowedForwardingClasses @accessors(property=allowedForwardingClasses);
    /*!
        Quota set for the number of floating IPs to be used by an enterprise.
    */
    CPNumber _floatingIPsQuota @accessors(property=floatingIPsQuota);
    /*!
        Number of floating IPs used by the enterprise from the assigned floatingIPsQuota
    */
    CPNumber _floatingIPsUsed @accessors(property=floatingIPsUsed);
    /*!
        Readonly encryption management mode of the associated profile
    */
    CPString _encryptionManagementMode @accessors(property=encryptionManagementMode);
    /*!
        Enterprise profile id for this enterprise
    */
    CPString _enterpriseProfileID @accessors(property=enterpriseProfileID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Readonly Id of the associated group key encryption profile
    */
    CPString _associatedEnterpriseSecurityID @accessors(property=associatedEnterpriseSecurityID);
    /*!
        Readonly Id of the associated group key encryption profile
    */
    CPString _associatedGroupKeyEncryptionProfileID @accessors(property=associatedGroupKeyEncryptionProfileID);
    /*!
        Readonly Id of the associated keyserver monitor
    */
    CPString _associatedKeyServerMonitorID @accessors(property=associatedKeyServerMonitorID);
    /*!
        CustomerID that is used by VSC to identify this enterprise. This is a read only attribute.
    */
    CPNumber _customerID @accessors(property=customerID);
    /*!
        URL to the avatar data associated with the enterprise. If the avatarType is URL then value of avatarData should an URL of the image. If the avatarType BASE64 then avatarData should be BASE64 encoded value of the image
    */
    CPString _avatarData @accessors(property=avatarData);
    /*!
        Avatar type - URL or BASE64 Possible values are URL, BASE64, COMPUTEDURL, .
    */
    CPString _avatarType @accessors(property=avatarType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUL2DomainTemplatesFetcher _childrenL2DomainTemplates @accessors(property=childrenL2DomainTemplates);
    NURateLimitersFetcher _childrenRateLimiters @accessors(property=childrenRateLimiters);
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUGatewayTemplatesFetcher _childrenGatewayTemplates @accessors(property=childrenGatewayTemplates);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NULDAPConfigurationsFetcher _childrenLDAPConfigurations @accessors(property=childrenLDAPConfigurations);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUMetadataTagsFetcher _childrenMetadataTags @accessors(property=childrenMetadataTags);
    NUNetworkMacroGroupsFetcher _childrenNetworkMacroGroups @accessors(property=childrenNetworkMacroGroups);
    NUKeyServerMonitorsFetcher _childrenKeyServerMonitors @accessors(property=childrenKeyServerMonitors);
    NUEgressQOSPoliciesFetcher _childrenEgressQOSPolicies @accessors(property=childrenEgressQOSPolicies);
    NUSharedNetworkResourcesFetcher _childrenSharedNetworkResources @accessors(property=childrenSharedNetworkResources);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUInfrastructurePortProfilesFetcher _childrenInfrastructurePortProfiles @accessors(property=childrenInfrastructurePortProfiles);
    NUEnterpriseNetworksFetcher _childrenEnterpriseNetworks @accessors(property=childrenEnterpriseNetworks);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUAppsFetcher _childrenApps @accessors(property=childrenApps);
    NUApplicationServicesFetcher _childrenApplicationServices @accessors(property=childrenApplicationServices);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUGroupKeyEncryptionProfilesFetcher _childrenGroupKeyEncryptionProfiles @accessors(property=childrenGroupKeyEncryptionProfiles);
    NUDSCPForwardingClassTablesFetcher _childrenDSCPForwardingClassTables @accessors(property=childrenDSCPForwardingClassTables);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUNSGatewayTemplatesFetcher _childrenNSGatewayTemplates @accessors(property=childrenNSGatewayTemplates);
    NUNSRedundantGatewayGroupsFetcher _childrenNSRedundantGatewayGroups @accessors(property=childrenNSRedundantGatewayGroups);
    NUMultiCastListsFetcher _childrenMultiCastLists @accessors(property=childrenMultiCastLists);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUExternalAppServicesFetcher _childrenExternalAppServices @accessors(property=childrenExternalAppServices);
    NUExternalServicesFetcher _childrenExternalServices @accessors(property=childrenExternalServices);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"enterprise";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"LDAPAuthorizationEnabled"];
        [self exposeLocalKeyPathToREST:@"LDAPEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPLeaseInterval"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"receiveMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"sendMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"allowAdvancedQOSConfiguration"];
        [self exposeLocalKeyPathToREST:@"allowGatewayManagement"];
        [self exposeLocalKeyPathToREST:@"allowTrustedForwardingClass"];
        [self exposeLocalKeyPathToREST:@"allowedForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"floatingIPsQuota"];
        [self exposeLocalKeyPathToREST:@"floatingIPsUsed"];
        [self exposeLocalKeyPathToREST:@"encryptionManagementMode"];
        [self exposeLocalKeyPathToREST:@"enterpriseProfileID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseSecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGroupKeyEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorID"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenL2DomainTemplates = [NUL2DomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenRateLimiters = [NURateLimitersFetcher fetcherWithParentObject:self];
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenGatewayTemplates = [NUGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenLDAPConfigurations = [NULDAPConfigurationsFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadataTags = [NUMetadataTagsFetcher fetcherWithParentObject:self];
        _childrenNetworkMacroGroups = [NUNetworkMacroGroupsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitors = [NUKeyServerMonitorsFetcher fetcherWithParentObject:self];
        _childrenEgressQOSPolicies = [NUEgressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenSharedNetworkResources = [NUSharedNetworkResourcesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenInfrastructurePortProfiles = [NUInfrastructurePortProfilesFetcher fetcherWithParentObject:self];
        _childrenEnterpriseNetworks = [NUEnterpriseNetworksFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenApps = [NUAppsFetcher fetcherWithParentObject:self];
        _childrenApplicationServices = [NUApplicationServicesFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenGroupKeyEncryptionProfiles = [NUGroupKeyEncryptionProfilesFetcher fetcherWithParentObject:self];
        _childrenDSCPForwardingClassTables = [NUDSCPForwardingClassTablesFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenNSGatewayTemplates = [NUNSGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenNSRedundantGatewayGroups = [NUNSRedundantGatewayGroupsFetcher fetcherWithParentObject:self];
        _childrenMultiCastLists = [NUMultiCastListsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenExternalAppServices = [NUExternalAppServicesFetcher fetcherWithParentObject:self];
        _childrenExternalServices = [NUExternalServicesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end