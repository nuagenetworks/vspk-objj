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
@import "Fetchers/NUL4ServicesFetcher.j"
@import "Fetchers/NUL4ServiceGroupsFetcher.j"
@import "Fetchers/NUL7applicationsignaturesFetcher.j"
@import "Fetchers/NUCaptivePortalProfilesFetcher.j"
@import "Fetchers/NURateLimitersFetcher.j"
@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUGatewayTemplatesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NULDAPConfigurationsFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NUPerformanceMonitorsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetworkMacroGroupsFetcher.j"
@import "Fetchers/NUNetworkPerformanceMeasurementsFetcher.j"
@import "Fetchers/NUKeyServerMonitorsFetcher.j"
@import "Fetchers/NUZFBRequestsFetcher.j"
@import "Fetchers/NUBGPProfilesFetcher.j"
@import "Fetchers/NUEgressQOSPoliciesFetcher.j"
@import "Fetchers/NUSharedNetworkResourcesFetcher.j"
@import "Fetchers/NUFirewallAclsFetcher.j"
@import "Fetchers/NUFirewallRulesFetcher.j"
@import "Fetchers/NUIKECertificatesFetcher.j"
@import "Fetchers/NUIKEEncryptionprofilesFetcher.j"
@import "Fetchers/NUIKEGatewaysFetcher.j"
@import "Fetchers/NUIKEGatewayProfilesFetcher.j"
@import "Fetchers/NUIKEPSKsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUAllAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVNFsFetcher.j"
@import "Fetchers/NUVNFMetadatasFetcher.j"
@import "Fetchers/NUVNFThresholdPoliciesFetcher.j"
@import "Fetchers/NUIngressQOSPoliciesFetcher.j"
@import "Fetchers/NUEnterpriseNetworksFetcher.j"
@import "Fetchers/NUEnterpriseSecuritiesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyObjectGroupsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUCOSRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUApplicationsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementsFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUGroupKeyEncryptionProfilesFetcher.j"
@import "Fetchers/NUTrunksFetcher.j"
@import "Fetchers/NUDSCPForwardingClassTablesFetcher.j"
@import "Fetchers/NUDSCPRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUNSGatewayTemplatesFetcher.j"
@import "Fetchers/NUNSGGroupsFetcher.j"
@import "Fetchers/NUNSRedundantGatewayGroupsFetcher.j"
@import "Fetchers/NUPublicNetworkMacrosFetcher.j"
@import "Fetchers/NUMultiCastListsFetcher.j"
@import "Fetchers/NUAvatarsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

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
    Definition of the enterprise object. This is the top level object that represents an enterprise.
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
        Read only flag to display if BGP is enabled for this enterprise
    */
    BOOL _BGPEnabled @accessors(property=BGPEnabled);
    /*!
        DHCP Lease Interval (in hrs) to be used by an enterprise.
    */
    CPNumber _DHCPLeaseInterval @accessors(property=DHCPLeaseInterval);
    /*!
        Read only flag to display if VNF management is enabled for this enterprise
    */
    BOOL _VNFManagementEnabled @accessors(property=VNFManagementEnabled);
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
        This flag indicates whether this is a Shared Infrastructure Enterprise or not. Its a read-only attribute and it cannot be set by anybody.
    */
    BOOL _sharedEnterprise @accessors(property=sharedEnterprise);
    /*!
        L7 Application Type version
    */
    CPNumber _dictionaryVersion @accessors(property=dictionaryVersion);
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
        This flag indicates if the DPI can be enabled for this enterpriseenterprise/organization.
    */
    BOOL _enableApplicationPerformanceManagement @accessors(property=enableApplicationPerformanceManagement);
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
        Local autonomous system for the enterprise
    */
    CPNumber _localAS @accessors(property=localAS);
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
    NUL4ServicesFetcher _childrenL4Services @accessors(property=childrenL4Services);
    NUL4ServiceGroupsFetcher _childrenL4ServiceGroups @accessors(property=childrenL4ServiceGroups);
    NUL7applicationsignaturesFetcher _childrenL7applicationsignatures @accessors(property=childrenL7applicationsignatures);
    NUCaptivePortalProfilesFetcher _childrenCaptivePortalProfiles @accessors(property=childrenCaptivePortalProfiles);
    NURateLimitersFetcher _childrenRateLimiters @accessors(property=childrenRateLimiters);
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUGatewayTemplatesFetcher _childrenGatewayTemplates @accessors(property=childrenGatewayTemplates);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NULDAPConfigurationsFetcher _childrenLDAPConfigurations @accessors(property=childrenLDAPConfigurations);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NUPerformanceMonitorsFetcher _childrenPerformanceMonitors @accessors(property=childrenPerformanceMonitors);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetworkMacroGroupsFetcher _childrenNetworkMacroGroups @accessors(property=childrenNetworkMacroGroups);
    NUNetworkPerformanceMeasurementsFetcher _childrenNetworkPerformanceMeasurements @accessors(property=childrenNetworkPerformanceMeasurements);
    NUKeyServerMonitorsFetcher _childrenKeyServerMonitors @accessors(property=childrenKeyServerMonitors);
    NUZFBRequestsFetcher _childrenZFBRequests @accessors(property=childrenZFBRequests);
    NUBGPProfilesFetcher _childrenBGPProfiles @accessors(property=childrenBGPProfiles);
    NUEgressQOSPoliciesFetcher _childrenEgressQOSPolicies @accessors(property=childrenEgressQOSPolicies);
    NUSharedNetworkResourcesFetcher _childrenSharedNetworkResources @accessors(property=childrenSharedNetworkResources);
    NUFirewallAclsFetcher _childrenFirewallAcls @accessors(property=childrenFirewallAcls);
    NUFirewallRulesFetcher _childrenFirewallRules @accessors(property=childrenFirewallRules);
    NUIKECertificatesFetcher _childrenIKECertificates @accessors(property=childrenIKECertificates);
    NUIKEEncryptionprofilesFetcher _childrenIKEEncryptionprofiles @accessors(property=childrenIKEEncryptionprofiles);
    NUIKEGatewaysFetcher _childrenIKEGateways @accessors(property=childrenIKEGateways);
    NUIKEGatewayProfilesFetcher _childrenIKEGatewayProfiles @accessors(property=childrenIKEGatewayProfiles);
    NUIKEPSKsFetcher _childrenIKEPSKs @accessors(property=childrenIKEPSKs);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUAllAlarmsFetcher _childrenAllAlarms @accessors(property=childrenAllAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVNFsFetcher _childrenVNFs @accessors(property=childrenVNFs);
    NUVNFMetadatasFetcher _childrenVNFMetadatas @accessors(property=childrenVNFMetadatas);
    NUVNFThresholdPoliciesFetcher _childrenVNFThresholdPolicies @accessors(property=childrenVNFThresholdPolicies);
    NUIngressQOSPoliciesFetcher _childrenIngressQOSPolicies @accessors(property=childrenIngressQOSPolicies);
    NUEnterpriseNetworksFetcher _childrenEnterpriseNetworks @accessors(property=childrenEnterpriseNetworks);
    NUEnterpriseSecuritiesFetcher _childrenEnterpriseSecurities @accessors(property=childrenEnterpriseSecurities);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyObjectGroupsFetcher _childrenPolicyObjectGroups @accessors(property=childrenPolicyObjectGroups);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUCOSRemarkingPolicyTablesFetcher _childrenCOSRemarkingPolicyTables @accessors(property=childrenCOSRemarkingPolicyTables);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUApplicationsFetcher _childrenApplications @accessors(property=childrenApplications);
    NUApplicationperformancemanagementsFetcher _childrenApplicationperformancemanagements @accessors(property=childrenApplicationperformancemanagements);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUGroupKeyEncryptionProfilesFetcher _childrenGroupKeyEncryptionProfiles @accessors(property=childrenGroupKeyEncryptionProfiles);
    NUTrunksFetcher _childrenTrunks @accessors(property=childrenTrunks);
    NUDSCPForwardingClassTablesFetcher _childrenDSCPForwardingClassTables @accessors(property=childrenDSCPForwardingClassTables);
    NUDSCPRemarkingPolicyTablesFetcher _childrenDSCPRemarkingPolicyTables @accessors(property=childrenDSCPRemarkingPolicyTables);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUNSGatewayTemplatesFetcher _childrenNSGatewayTemplates @accessors(property=childrenNSGatewayTemplates);
    NUNSGGroupsFetcher _childrenNSGGroups @accessors(property=childrenNSGGroups);
    NUNSRedundantGatewayGroupsFetcher _childrenNSRedundantGatewayGroups @accessors(property=childrenNSRedundantGatewayGroups);
    NUPublicNetworkMacrosFetcher _childrenPublicNetworkMacros @accessors(property=childrenPublicNetworkMacros);
    NUMultiCastListsFetcher _childrenMultiCastLists @accessors(property=childrenMultiCastLists);
    NUAvatarsFetcher _childrenAvatars @accessors(property=childrenAvatars);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
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
        [self exposeLocalKeyPathToREST:@"BGPEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPLeaseInterval"];
        [self exposeLocalKeyPathToREST:@"VNFManagementEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"receiveMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"sendMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"sharedEnterprise"];
        [self exposeLocalKeyPathToREST:@"dictionaryVersion"];
        [self exposeLocalKeyPathToREST:@"allowAdvancedQOSConfiguration"];
        [self exposeLocalKeyPathToREST:@"allowGatewayManagement"];
        [self exposeLocalKeyPathToREST:@"allowTrustedForwardingClass"];
        [self exposeLocalKeyPathToREST:@"allowedForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"floatingIPsQuota"];
        [self exposeLocalKeyPathToREST:@"floatingIPsUsed"];
        [self exposeLocalKeyPathToREST:@"enableApplicationPerformanceManagement"];
        [self exposeLocalKeyPathToREST:@"encryptionManagementMode"];
        [self exposeLocalKeyPathToREST:@"enterpriseProfileID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"localAS"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseSecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGroupKeyEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorID"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenL2DomainTemplates = [NUL2DomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenL4Services = [NUL4ServicesFetcher fetcherWithParentObject:self];
        _childrenL4ServiceGroups = [NUL4ServiceGroupsFetcher fetcherWithParentObject:self];
        _childrenL7applicationsignatures = [NUL7applicationsignaturesFetcher fetcherWithParentObject:self];
        _childrenCaptivePortalProfiles = [NUCaptivePortalProfilesFetcher fetcherWithParentObject:self];
        _childrenRateLimiters = [NURateLimitersFetcher fetcherWithParentObject:self];
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenGatewayTemplates = [NUGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenLDAPConfigurations = [NULDAPConfigurationsFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenPerformanceMonitors = [NUPerformanceMonitorsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetworkMacroGroups = [NUNetworkMacroGroupsFetcher fetcherWithParentObject:self];
        _childrenNetworkPerformanceMeasurements = [NUNetworkPerformanceMeasurementsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitors = [NUKeyServerMonitorsFetcher fetcherWithParentObject:self];
        _childrenZFBRequests = [NUZFBRequestsFetcher fetcherWithParentObject:self];
        _childrenBGPProfiles = [NUBGPProfilesFetcher fetcherWithParentObject:self];
        _childrenEgressQOSPolicies = [NUEgressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenSharedNetworkResources = [NUSharedNetworkResourcesFetcher fetcherWithParentObject:self];
        _childrenFirewallAcls = [NUFirewallAclsFetcher fetcherWithParentObject:self];
        _childrenFirewallRules = [NUFirewallRulesFetcher fetcherWithParentObject:self];
        _childrenIKECertificates = [NUIKECertificatesFetcher fetcherWithParentObject:self];
        _childrenIKEEncryptionprofiles = [NUIKEEncryptionprofilesFetcher fetcherWithParentObject:self];
        _childrenIKEGateways = [NUIKEGatewaysFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayProfiles = [NUIKEGatewayProfilesFetcher fetcherWithParentObject:self];
        _childrenIKEPSKs = [NUIKEPSKsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenAllAlarms = [NUAllAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVNFs = [NUVNFsFetcher fetcherWithParentObject:self];
        _childrenVNFMetadatas = [NUVNFMetadatasFetcher fetcherWithParentObject:self];
        _childrenVNFThresholdPolicies = [NUVNFThresholdPoliciesFetcher fetcherWithParentObject:self];
        _childrenIngressQOSPolicies = [NUIngressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenEnterpriseNetworks = [NUEnterpriseNetworksFetcher fetcherWithParentObject:self];
        _childrenEnterpriseSecurities = [NUEnterpriseSecuritiesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyObjectGroups = [NUPolicyObjectGroupsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenCOSRemarkingPolicyTables = [NUCOSRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenApplications = [NUApplicationsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagements = [NUApplicationperformancemanagementsFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenGroupKeyEncryptionProfiles = [NUGroupKeyEncryptionProfilesFetcher fetcherWithParentObject:self];
        _childrenTrunks = [NUTrunksFetcher fetcherWithParentObject:self];
        _childrenDSCPForwardingClassTables = [NUDSCPForwardingClassTablesFetcher fetcherWithParentObject:self];
        _childrenDSCPRemarkingPolicyTables = [NUDSCPRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenNSGatewayTemplates = [NUNSGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenNSGGroups = [NUNSGGroupsFetcher fetcherWithParentObject:self];
        _childrenNSRedundantGatewayGroups = [NUNSRedundantGatewayGroupsFetcher fetcherWithParentObject:self];
        _childrenPublicNetworkMacros = [NUPublicNetworkMacrosFetcher fetcherWithParentObject:self];
        _childrenMultiCastLists = [NUMultiCastListsFetcher fetcherWithParentObject:self];
        _childrenAvatars = [NUAvatarsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end