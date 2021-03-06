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
@import "Fetchers/NUSaaSApplicationGroupsFetcher.j"
@import "Fetchers/NUSaaSApplicationTypesFetcher.j"
@import "Fetchers/NUSAPEgressQoSProfilesFetcher.j"
@import "Fetchers/NUSAPIngressQoSProfilesFetcher.j"
@import "Fetchers/NUCaptivePortalProfilesFetcher.j"
@import "Fetchers/NURateLimitersFetcher.j"
@import "Fetchers/NUGatewaysFetcher.j"
@import "Fetchers/NUGatewaysLocationsFetcher.j"
@import "Fetchers/NUGatewayTemplatesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NULDAPConfigurationsFetcher.j"
@import "Fetchers/NUIDPProfilesFetcher.j"
@import "Fetchers/NUWebCategoriesFetcher.j"
@import "Fetchers/NUWebDomainNamesFetcher.j"
@import "Fetchers/NURedundancyGroupsFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPerformanceMonitorsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUTestDefinitionsFetcher.j"
@import "Fetchers/NUTestSuitesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNetconfProfilesFetcher.j"
@import "Fetchers/NUNetworkMacroGroupsFetcher.j"
@import "Fetchers/NUNetworkPerformanceMeasurementsFetcher.j"
@import "Fetchers/NUKeyServerMonitorsFetcher.j"
@import "Fetchers/NUZFBRequestsFetcher.j"
@import "Fetchers/NUBGPProfilesFetcher.j"
@import "Fetchers/NUEgressProfilesFetcher.j"
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
@import "Fetchers/NUIngressProfilesFetcher.j"
@import "Fetchers/NUIngressQOSPoliciesFetcher.j"
@import "Fetchers/NUGNMIProfilesFetcher.j"
@import "Fetchers/NUEnterpriseNetworksFetcher.j"
@import "Fetchers/NUEnterpriseSecuritiesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NURolesFetcher.j"
@import "Fetchers/NUPolicyGroupCategoriesFetcher.j"
@import "Fetchers/NUPolicyObjectGroupsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUDomainKindSummariesFetcher.j"
@import "Fetchers/NUDomainTemplatesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUCOSRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NURoutingPoliciesFetcher.j"
@import "Fetchers/NUIPFilterProfilesFetcher.j"
@import "Fetchers/NUApplicationsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementsFetcher.j"
@import "Fetchers/NUIPv6FilterProfilesFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUGroupKeyEncryptionProfilesFetcher.j"
@import "Fetchers/NUTrunksFetcher.j"
@import "Fetchers/NUDSCPForwardingClassTablesFetcher.j"
@import "Fetchers/NUDSCPRemarkingPolicyTablesFetcher.j"
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUNSGatewaysCountsFetcher.j"
@import "Fetchers/NUNSGatewaySummariesFetcher.j"
@import "Fetchers/NUNSGatewayTemplatesFetcher.j"
@import "Fetchers/NUNSGGroupsFetcher.j"
@import "Fetchers/NUNSRedundantGatewayGroupsFetcher.j"
@import "Fetchers/NUPublicNetworkMacrosFetcher.j"
@import "Fetchers/NUMultiCastListsFetcher.j"
@import "Fetchers/NUAvatarsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUOverlayManagementProfilesFetcher.j"
@import "Fetchers/NUSyslogDestinationsFetcher.j"
@import "Fetchers/NUAzureCloudsFetcher.j"

NUEnterpriseAllowedForwardingClasses_A = @"A";
NUEnterpriseAllowedForwardingClasses_B = @"B";
NUEnterpriseAllowedForwardingClasses_C = @"C";
NUEnterpriseAllowedForwardingClasses_D = @"D";
NUEnterpriseAllowedForwardingClasses_E = @"E";
NUEnterpriseAllowedForwardingClasses_F = @"F";
NUEnterpriseAllowedForwardingClasses_G = @"G";
NUEnterpriseAllowedForwardingClasses_H = @"H";
NUEnterpriseAllowedForwardingClasses_NONE = @"NONE";
NUEnterpriseAllowedForwardingMode_DISABLED = @"DISABLED";
NUEnterpriseAllowedForwardingMode_LOCAL_AND_REMOTE = @"LOCAL_AND_REMOTE";
NUEnterpriseAllowedForwardingMode_LOCAL_ONLY = @"LOCAL_ONLY";
NUEnterpriseAvatarType_BASE64 = @"BASE64";
NUEnterpriseAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUEnterpriseAvatarType_URL = @"URL";
NUEnterpriseEncryptionManagementMode_DISABLED = @"DISABLED";
NUEnterpriseEncryptionManagementMode_MANAGED = @"MANAGED";
NUEnterpriseEnterpriseType_AUDIT = @"AUDIT";
NUEnterpriseEnterpriseType_CSP = @"CSP";
NUEnterpriseEnterpriseType_NORMAL = @"NORMAL";
NUEnterpriseEnterpriseType_SHARED = @"SHARED";
NUEnterpriseEnterpriseType_SYSTEM = @"SYSTEM";
NUEnterpriseEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEnterpriseEntityScope_GLOBAL = @"GLOBAL";
NUEnterpriseFlowCollectionEnabled_DISABLED = @"DISABLED";
NUEnterpriseFlowCollectionEnabled_ENABLED = @"ENABLED";
NUEnterpriseThreatIntelligenceEnabled_DISABLED = @"DISABLED";
NUEnterpriseThreatIntelligenceEnabled_ENABLED = @"ENABLED";


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
        Read-only flag to display if BGP is enabled for this enterprise
    */
    BOOL _BGPEnabled @accessors(property=BGPEnabled);
    /*!
        DHCP Lease Interval (in hrs) to be used by an enterprise.
    */
    CPNumber _DHCPLeaseInterval @accessors(property=DHCPLeaseInterval);
    /*!
        Read-only flag to display if VNF management is enabled for this enterprise
    */
    BOOL _VNFManagementEnabled @accessors(property=VNFManagementEnabled);
    /*!
        The unique name of the enterprise.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Read only flag to display if Web Filtering is enabled for this enterprise
    */
    BOOL _webFilterEnabled @accessors(property=webFilterEnabled);
    /*!
        Read-only Id of the auto generated receive multicast list associated with this enterprise profile
    */
    CPString _receiveMultiCastListID @accessors(property=receiveMultiCastListID);
    /*!
        Read-only Id of the auto generated send multicast list associated with this enterprise profile
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
        Determines whether or not threat intelligence is enabled
    */
    CPString _threatIntelligenceEnabled @accessors(property=threatIntelligenceEnabled);
    /*!
        Threat Prevention Management enabled for enterprise
    */
    BOOL _threatPreventionManagementEnabled @accessors(property=threatPreventionManagementEnabled);
    /*!
        L7 Application Type version
    */
    CPNumber _dictionaryVersion @accessors(property=dictionaryVersion);
    /*!
        Read-only flag that indicates if virtual firewall rules are allowed.
    */
    BOOL _virtualFirewallRulesEnabled @accessors(property=virtualFirewallRulesEnabled);
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
        Enum to set allowed controller-less mode
    */
    CPString _allowedForwardingMode @accessors(property=allowedForwardingMode);
    /*!
        Quota set for the number of floating IPs to be used by an enterprise.
    */
    CPNumber _floatingIPsQuota @accessors(property=floatingIPsQuota);
    /*!
        Number of floating IPs used by the enterprise from the assigned floatingIPsQuota
    */
    CPNumber _floatingIPsUsed @accessors(property=floatingIPsUsed);
    /*!
        The text for blocked page html which gets displayed to the end-users when they reach a website that is blocked by Web Filtering ACL. User can possibly include very basic html tags like <p>, <ul> etc. in order to fomat the text displayed to the end-users.
    */
    CPString _blockedPageText @accessors(property=blockedPageText);
    /*!
        Determines whether or not flow collection is enabled.
    */
    CPString _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        This flag indicates if the DPI can be enabled for this enterpriseenterprise/organization.
    */
    BOOL _enableApplicationPerformanceManagement @accessors(property=enableApplicationPerformanceManagement);
    /*!
        Read-only encryption management mode of the associated profile
    */
    CPString _encryptionManagementMode @accessors(property=encryptionManagementMode);
    /*!
        Enterprise profile id for this enterprise
    */
    CPString _enterpriseProfileID @accessors(property=enterpriseProfileID);
    /*!
        Type of Enterprise. SHARED, AUDIT, NORMAL, CSP, SYSTEM
    */
    CPString _enterpriseType @accessors(property=enterpriseType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Local autonomous system for the enterprise
    */
    CPNumber _localAS @accessors(property=localAS);
    /*!
        Represents the List of forwarding classes and their load balancing capability.
    */
    CPArrayController _forwardingClass @accessors(property=forwardingClass);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Determines whether Global Gateway MAC is enabled or not Enterprise level.
    */
    BOOL _useGlobalMAC @accessors(property=useGlobalMAC);
    /*!
        Read-only Id of the associated group key encryption profile
    */
    CPString _associatedEnterpriseSecurityID @accessors(property=associatedEnterpriseSecurityID);
    /*!
        Read-only Id of the associated group key encryption profile
    */
    CPString _associatedGroupKeyEncryptionProfileID @accessors(property=associatedGroupKeyEncryptionProfileID);
    /*!
        Read-only Id of the associated keyserver monitor
    */
    CPString _associatedKeyServerMonitorID @accessors(property=associatedKeyServerMonitorID);
    /*!
        CustomerID that is used by VSC to identify this enterprise. This can be configured by root user.
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
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUL2DomainTemplatesFetcher _childrenL2DomainTemplates @accessors(property=childrenL2DomainTemplates);
    NUL4ServicesFetcher _childrenL4Services @accessors(property=childrenL4Services);
    NUL4ServiceGroupsFetcher _childrenL4ServiceGroups @accessors(property=childrenL4ServiceGroups);
    NUL7applicationsignaturesFetcher _childrenL7applicationsignatures @accessors(property=childrenL7applicationsignatures);
    NUSaaSApplicationGroupsFetcher _childrenSaaSApplicationGroups @accessors(property=childrenSaaSApplicationGroups);
    NUSaaSApplicationTypesFetcher _childrenSaaSApplicationTypes @accessors(property=childrenSaaSApplicationTypes);
    NUSAPEgressQoSProfilesFetcher _childrenSAPEgressQoSProfiles @accessors(property=childrenSAPEgressQoSProfiles);
    NUSAPIngressQoSProfilesFetcher _childrenSAPIngressQoSProfiles @accessors(property=childrenSAPIngressQoSProfiles);
    NUCaptivePortalProfilesFetcher _childrenCaptivePortalProfiles @accessors(property=childrenCaptivePortalProfiles);
    NURateLimitersFetcher _childrenRateLimiters @accessors(property=childrenRateLimiters);
    NUGatewaysFetcher _childrenGateways @accessors(property=childrenGateways);
    NUGatewaysLocationsFetcher _childrenGatewaysLocations @accessors(property=childrenGatewaysLocations);
    NUGatewayTemplatesFetcher _childrenGatewayTemplates @accessors(property=childrenGatewayTemplates);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NULDAPConfigurationsFetcher _childrenLDAPConfigurations @accessors(property=childrenLDAPConfigurations);
    NUIDPProfilesFetcher _childrenIDPProfiles @accessors(property=childrenIDPProfiles);
    NUWebCategoriesFetcher _childrenWebCategories @accessors(property=childrenWebCategories);
    NUWebDomainNamesFetcher _childrenWebDomainNames @accessors(property=childrenWebDomainNames);
    NURedundancyGroupsFetcher _childrenRedundancyGroups @accessors(property=childrenRedundancyGroups);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPerformanceMonitorsFetcher _childrenPerformanceMonitors @accessors(property=childrenPerformanceMonitors);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUTestDefinitionsFetcher _childrenTestDefinitions @accessors(property=childrenTestDefinitions);
    NUTestSuitesFetcher _childrenTestSuites @accessors(property=childrenTestSuites);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNetconfProfilesFetcher _childrenNetconfProfiles @accessors(property=childrenNetconfProfiles);
    NUNetworkMacroGroupsFetcher _childrenNetworkMacroGroups @accessors(property=childrenNetworkMacroGroups);
    NUNetworkPerformanceMeasurementsFetcher _childrenNetworkPerformanceMeasurements @accessors(property=childrenNetworkPerformanceMeasurements);
    NUKeyServerMonitorsFetcher _childrenKeyServerMonitors @accessors(property=childrenKeyServerMonitors);
    NUZFBRequestsFetcher _childrenZFBRequests @accessors(property=childrenZFBRequests);
    NUBGPProfilesFetcher _childrenBGPProfiles @accessors(property=childrenBGPProfiles);
    NUEgressProfilesFetcher _childrenEgressProfiles @accessors(property=childrenEgressProfiles);
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
    NUIngressProfilesFetcher _childrenIngressProfiles @accessors(property=childrenIngressProfiles);
    NUIngressQOSPoliciesFetcher _childrenIngressQOSPolicies @accessors(property=childrenIngressQOSPolicies);
    NUGNMIProfilesFetcher _childrenGNMIProfiles @accessors(property=childrenGNMIProfiles);
    NUEnterpriseNetworksFetcher _childrenEnterpriseNetworks @accessors(property=childrenEnterpriseNetworks);
    NUEnterpriseSecuritiesFetcher _childrenEnterpriseSecurities @accessors(property=childrenEnterpriseSecurities);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NURolesFetcher _childrenRoles @accessors(property=childrenRoles);
    NUPolicyGroupCategoriesFetcher _childrenPolicyGroupCategories @accessors(property=childrenPolicyGroupCategories);
    NUPolicyObjectGroupsFetcher _childrenPolicyObjectGroups @accessors(property=childrenPolicyObjectGroups);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUDomainKindSummariesFetcher _childrenDomainKindSummaries @accessors(property=childrenDomainKindSummaries);
    NUDomainTemplatesFetcher _childrenDomainTemplates @accessors(property=childrenDomainTemplates);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUCOSRemarkingPolicyTablesFetcher _childrenCOSRemarkingPolicyTables @accessors(property=childrenCOSRemarkingPolicyTables);
    NURoutingPoliciesFetcher _childrenRoutingPolicies @accessors(property=childrenRoutingPolicies);
    NUIPFilterProfilesFetcher _childrenIPFilterProfiles @accessors(property=childrenIPFilterProfiles);
    NUApplicationsFetcher _childrenApplications @accessors(property=childrenApplications);
    NUApplicationperformancemanagementsFetcher _childrenApplicationperformancemanagements @accessors(property=childrenApplicationperformancemanagements);
    NUIPv6FilterProfilesFetcher _childrenIPv6FilterProfiles @accessors(property=childrenIPv6FilterProfiles);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUGroupKeyEncryptionProfilesFetcher _childrenGroupKeyEncryptionProfiles @accessors(property=childrenGroupKeyEncryptionProfiles);
    NUTrunksFetcher _childrenTrunks @accessors(property=childrenTrunks);
    NUDSCPForwardingClassTablesFetcher _childrenDSCPForwardingClassTables @accessors(property=childrenDSCPForwardingClassTables);
    NUDSCPRemarkingPolicyTablesFetcher _childrenDSCPRemarkingPolicyTables @accessors(property=childrenDSCPRemarkingPolicyTables);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUNSGatewaysCountsFetcher _childrenNSGatewaysCounts @accessors(property=childrenNSGatewaysCounts);
    NUNSGatewaySummariesFetcher _childrenNSGatewaySummaries @accessors(property=childrenNSGatewaySummaries);
    NUNSGatewayTemplatesFetcher _childrenNSGatewayTemplates @accessors(property=childrenNSGatewayTemplates);
    NUNSGGroupsFetcher _childrenNSGGroups @accessors(property=childrenNSGGroups);
    NUNSRedundantGatewayGroupsFetcher _childrenNSRedundantGatewayGroups @accessors(property=childrenNSRedundantGatewayGroups);
    NUPublicNetworkMacrosFetcher _childrenPublicNetworkMacros @accessors(property=childrenPublicNetworkMacros);
    NUMultiCastListsFetcher _childrenMultiCastLists @accessors(property=childrenMultiCastLists);
    NUAvatarsFetcher _childrenAvatars @accessors(property=childrenAvatars);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUOverlayManagementProfilesFetcher _childrenOverlayManagementProfiles @accessors(property=childrenOverlayManagementProfiles);
    NUSyslogDestinationsFetcher _childrenSyslogDestinations @accessors(property=childrenSyslogDestinations);
    NUAzureCloudsFetcher _childrenAzureClouds @accessors(property=childrenAzureClouds);
    
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
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"webFilterEnabled"];
        [self exposeLocalKeyPathToREST:@"receiveMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"sendMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"sharedEnterprise"];
        [self exposeLocalKeyPathToREST:@"threatIntelligenceEnabled"];
        [self exposeLocalKeyPathToREST:@"threatPreventionManagementEnabled"];
        [self exposeLocalKeyPathToREST:@"dictionaryVersion"];
        [self exposeLocalKeyPathToREST:@"virtualFirewallRulesEnabled"];
        [self exposeLocalKeyPathToREST:@"allowAdvancedQOSConfiguration"];
        [self exposeLocalKeyPathToREST:@"allowGatewayManagement"];
        [self exposeLocalKeyPathToREST:@"allowTrustedForwardingClass"];
        [self exposeLocalKeyPathToREST:@"allowedForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"allowedForwardingMode"];
        [self exposeLocalKeyPathToREST:@"floatingIPsQuota"];
        [self exposeLocalKeyPathToREST:@"floatingIPsUsed"];
        [self exposeLocalKeyPathToREST:@"blockedPageText"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableApplicationPerformanceManagement"];
        [self exposeLocalKeyPathToREST:@"encryptionManagementMode"];
        [self exposeLocalKeyPathToREST:@"enterpriseProfileID"];
        [self exposeLocalKeyPathToREST:@"enterpriseType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"localAS"];
        [self exposeLocalKeyPathToREST:@"forwardingClass"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseSecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGroupKeyEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorID"];
        [self exposeLocalKeyPathToREST:@"customerID"];
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenL2DomainTemplates = [NUL2DomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenL4Services = [NUL4ServicesFetcher fetcherWithParentObject:self];
        _childrenL4ServiceGroups = [NUL4ServiceGroupsFetcher fetcherWithParentObject:self];
        _childrenL7applicationsignatures = [NUL7applicationsignaturesFetcher fetcherWithParentObject:self];
        _childrenSaaSApplicationGroups = [NUSaaSApplicationGroupsFetcher fetcherWithParentObject:self];
        _childrenSaaSApplicationTypes = [NUSaaSApplicationTypesFetcher fetcherWithParentObject:self];
        _childrenSAPEgressQoSProfiles = [NUSAPEgressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenSAPIngressQoSProfiles = [NUSAPIngressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenCaptivePortalProfiles = [NUCaptivePortalProfilesFetcher fetcherWithParentObject:self];
        _childrenRateLimiters = [NURateLimitersFetcher fetcherWithParentObject:self];
        _childrenGateways = [NUGatewaysFetcher fetcherWithParentObject:self];
        _childrenGatewaysLocations = [NUGatewaysLocationsFetcher fetcherWithParentObject:self];
        _childrenGatewayTemplates = [NUGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenLDAPConfigurations = [NULDAPConfigurationsFetcher fetcherWithParentObject:self];
        _childrenIDPProfiles = [NUIDPProfilesFetcher fetcherWithParentObject:self];
        _childrenWebCategories = [NUWebCategoriesFetcher fetcherWithParentObject:self];
        _childrenWebDomainNames = [NUWebDomainNamesFetcher fetcherWithParentObject:self];
        _childrenRedundancyGroups = [NURedundancyGroupsFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPerformanceMonitors = [NUPerformanceMonitorsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenTestDefinitions = [NUTestDefinitionsFetcher fetcherWithParentObject:self];
        _childrenTestSuites = [NUTestSuitesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNetconfProfiles = [NUNetconfProfilesFetcher fetcherWithParentObject:self];
        _childrenNetworkMacroGroups = [NUNetworkMacroGroupsFetcher fetcherWithParentObject:self];
        _childrenNetworkPerformanceMeasurements = [NUNetworkPerformanceMeasurementsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitors = [NUKeyServerMonitorsFetcher fetcherWithParentObject:self];
        _childrenZFBRequests = [NUZFBRequestsFetcher fetcherWithParentObject:self];
        _childrenBGPProfiles = [NUBGPProfilesFetcher fetcherWithParentObject:self];
        _childrenEgressProfiles = [NUEgressProfilesFetcher fetcherWithParentObject:self];
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
        _childrenIngressProfiles = [NUIngressProfilesFetcher fetcherWithParentObject:self];
        _childrenIngressQOSPolicies = [NUIngressQOSPoliciesFetcher fetcherWithParentObject:self];
        _childrenGNMIProfiles = [NUGNMIProfilesFetcher fetcherWithParentObject:self];
        _childrenEnterpriseNetworks = [NUEnterpriseNetworksFetcher fetcherWithParentObject:self];
        _childrenEnterpriseSecurities = [NUEnterpriseSecuritiesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenRoles = [NURolesFetcher fetcherWithParentObject:self];
        _childrenPolicyGroupCategories = [NUPolicyGroupCategoriesFetcher fetcherWithParentObject:self];
        _childrenPolicyObjectGroups = [NUPolicyObjectGroupsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenDomainKindSummaries = [NUDomainKindSummariesFetcher fetcherWithParentObject:self];
        _childrenDomainTemplates = [NUDomainTemplatesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenCOSRemarkingPolicyTables = [NUCOSRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenRoutingPolicies = [NURoutingPoliciesFetcher fetcherWithParentObject:self];
        _childrenIPFilterProfiles = [NUIPFilterProfilesFetcher fetcherWithParentObject:self];
        _childrenApplications = [NUApplicationsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagements = [NUApplicationperformancemanagementsFetcher fetcherWithParentObject:self];
        _childrenIPv6FilterProfiles = [NUIPv6FilterProfilesFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenGroupKeyEncryptionProfiles = [NUGroupKeyEncryptionProfilesFetcher fetcherWithParentObject:self];
        _childrenTrunks = [NUTrunksFetcher fetcherWithParentObject:self];
        _childrenDSCPForwardingClassTables = [NUDSCPForwardingClassTablesFetcher fetcherWithParentObject:self];
        _childrenDSCPRemarkingPolicyTables = [NUDSCPRemarkingPolicyTablesFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenNSGatewaysCounts = [NUNSGatewaysCountsFetcher fetcherWithParentObject:self];
        _childrenNSGatewaySummaries = [NUNSGatewaySummariesFetcher fetcherWithParentObject:self];
        _childrenNSGatewayTemplates = [NUNSGatewayTemplatesFetcher fetcherWithParentObject:self];
        _childrenNSGGroups = [NUNSGGroupsFetcher fetcherWithParentObject:self];
        _childrenNSRedundantGatewayGroups = [NUNSRedundantGatewayGroupsFetcher fetcherWithParentObject:self];
        _childrenPublicNetworkMacros = [NUPublicNetworkMacrosFetcher fetcherWithParentObject:self];
        _childrenMultiCastLists = [NUMultiCastListsFetcher fetcherWithParentObject:self];
        _childrenAvatars = [NUAvatarsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenOverlayManagementProfiles = [NUOverlayManagementProfilesFetcher fetcherWithParentObject:self];
        _childrenSyslogDestinations = [NUSyslogDestinationsFetcher fetcherWithParentObject:self];
        _childrenAzureClouds = [NUAzureCloudsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end