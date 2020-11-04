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
@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NURedirectionTargetTemplatesFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUPGExpressionTemplatesFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUEgressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUVirtualFirewallPoliciesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupTemplatesFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUOverlayMirrorDestinationTemplatesFetcher.j"

NUL2DomainTemplateDPI_DISABLED = @"DISABLED";
NUL2DomainTemplateDPI_ENABLED = @"ENABLED";
NUL2DomainTemplateDPI_INHERITED = @"INHERITED";
NUL2DomainTemplateEncryption_DISABLED = @"DISABLED";
NUL2DomainTemplateEncryption_ENABLED = @"ENABLED";
NUL2DomainTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUL2DomainTemplateEntityScope_GLOBAL = @"GLOBAL";
NUL2DomainTemplateEntityState_MARKED_FOR_DELETION = @"MARKED_FOR_DELETION";
NUL2DomainTemplateEntityState_UNDER_CONSTRUCTION = @"UNDER_CONSTRUCTION";
NUL2DomainTemplateIPType_DUALSTACK = @"DUALSTACK";
NUL2DomainTemplateIPType_IPV4 = @"IPV4";
NUL2DomainTemplateIPType_IPV6 = @"IPV6";
NUL2DomainTemplateMulticast_DISABLED = @"DISABLED";
NUL2DomainTemplateMulticast_ENABLED = @"ENABLED";
NUL2DomainTemplateMulticast_INHERITED = @"INHERITED";
NUL2DomainTemplatePolicyChangeStatus_APPLIED = @"APPLIED";
NUL2DomainTemplatePolicyChangeStatus_DISCARDED = @"DISCARDED";
NUL2DomainTemplatePolicyChangeStatus_STARTED = @"STARTED";
NUL2DomainTemplateUseGlobalMAC_DISABLED = @"DISABLED";
NUL2DomainTemplateUseGlobalMAC_ENABLED = @"ENABLED";


/*!
    An L2 Domain is a distributed logical switch that enables L2 communication. An L2 Domain template is a model that can be instantiated as often as required, thereby creating real, functioning L2 Domains.
*/
@implementation NUL2DomainTemplate : NURESTObject
{
    /*!
        decides whether L2Domain / L2Domain template DHCP is managed by VSD
    */
    BOOL _DHCPManaged @accessors(property=DHCPManaged);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4, DUALSTACK or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPV6 address of the route - Optional
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        The IPv6 address of the gateway of this subnet
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        Name of the L2Domain / L2Domain template,has to be unique within a Enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
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
        The IP address of the gateway of this l2 domain
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        Network address of the L2Domain / L2Domain template defined. 
    */
    CPString _address @accessors(property=address);
    /*!
        A description field provided by the user that identifies the L2Domain / L2Domain template.
    */
    CPString _description @accessors(property=description);
    /*!
        Netmask of the L2Domain / L2Domain template defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        This value indicates whether IPv4 DHCP is enabled or not. This is applicable in case the L2 Domain is DUALSTACK or IPv4
    */
    BOOL _enableDHCPv4 @accessors(property=enableDHCPv4);
    /*!
        This value indicates whether IPv6 DHCP is enabled or not. This is applicable in case the L2 Domain is DUALSTACK or IPv6
    */
    BOOL _enableDHCPv6 @accessors(property=enableDHCPv6);
    /*!
        Determines whether IPSEC is enabled Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Intermediate State of L2 Domain.
    */
    CPString _entityState @accessors(property=entityState);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Enable this flag to use system configured globalMACAddress as the gateway mac address for managed l2 domains
    */
    CPString _useGlobalMAC @accessors(property=useGlobalMAC);
    /*!
        The ID of the Multi Cast Channel Map this L2Domain / L2Domain template template is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        This value indicates whether dynamic address allocation is enabled or not. This will be applicable when L2 Domain is managed and in dual stack mode
    */
    BOOL _dualStackDynamicIPAllocation @accessors(property=dualStackDynamicIPAllocation);
    /*!
        Indicates multicast policy on L2Domain template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NURedirectionTargetTemplatesFetcher _childrenRedirectionTargetTemplates @accessors(property=childrenRedirectionTargetTemplates);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUPGExpressionTemplatesFetcher _childrenPGExpressionTemplates @accessors(property=childrenPGExpressionTemplates);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUEgressAdvFwdTemplatesFetcher _childrenEgressAdvFwdTemplates @accessors(property=childrenEgressAdvFwdTemplates);
    NUVirtualFirewallPoliciesFetcher _childrenVirtualFirewallPolicies @accessors(property=childrenVirtualFirewallPolicies);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupTemplatesFetcher _childrenPolicyGroupTemplates @accessors(property=childrenPolicyGroupTemplates);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUOverlayMirrorDestinationTemplatesFetcher _childrenOverlayMirrorDestinationTemplates @accessors(property=childrenOverlayMirrorDestinationTemplates);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"l2domaintemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DHCPManaged"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv4"];
        [self exposeLocalKeyPathToREST:@"enableDHCPv6"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityState"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"dualStackDynamicIPAllocation"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargetTemplates = [NURedirectionTargetTemplatesFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenPGExpressionTemplates = [NUPGExpressionTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenEgressAdvFwdTemplates = [NUEgressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallPolicies = [NUVirtualFirewallPoliciesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroupTemplates = [NUPolicyGroupTemplatesFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenOverlayMirrorDestinationTemplates = [NUOverlayMirrorDestinationTemplatesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end