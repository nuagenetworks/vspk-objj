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

@import "Fetchers/NURedirectionTargetTemplatesFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUEgressACLTemplatesFetcher.j"
@import "Fetchers/NUDomainFIPAclTemplatesFetcher.j"
@import "Fetchers/NUFloatingIPACLTemplatesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUIngressACLTemplatesFetcher.j"
@import "Fetchers/NUIngressAdvFwdTemplatesFetcher.j"
@import "Fetchers/NUIngressExternalServiceTemplatesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUPolicyGroupTemplatesFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUZoneTemplatesFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUSubnetTemplatesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUDomainTemplateDPI_DISABLED = @"DISABLED";
NUDomainTemplateDPI_ENABLED = @"ENABLED";
NUDomainTemplateEncryption_DISABLED = @"DISABLED";
NUDomainTemplateEncryption_ENABLED = @"ENABLED";
NUDomainTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDomainTemplateEntityScope_GLOBAL = @"GLOBAL";
NUDomainTemplateMulticast_DISABLED = @"DISABLED";
NUDomainTemplateMulticast_ENABLED = @"ENABLED";
NUDomainTemplateMulticast_INHERITED = @"INHERITED";
NUDomainTemplatePolicyChangeStatus_APPLIED = @"APPLIED";
NUDomainTemplatePolicyChangeStatus_DISCARDED = @"DISCARDED";
NUDomainTemplatePolicyChangeStatus_STARTED = @"STARTED";


/*!
    Domains in VSD are created from domain templates. This object provides the definition of the Domain Template.
*/
@implementation NUDomainTemplate : NURESTObject
{
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        The name of the domain template, that is unique within an enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Domain template description provided by the user
    */
    CPString _description @accessors(property=description);
    /*!
        Determines whether IPSEC is enabled. Possible values are ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        None
    */
    CPString _policyChangeStatus @accessors(property=policyChangeStatus);
    /*!
        The ID of the associated BGP profile
    */
    CPString _associatedBGPProfileID @accessors(property=associatedBGPProfileID);
    /*!
        The ID of the Multi Cast Channel Map  this domain template is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of the PatMapper entity to which this domain-template is associated to.
    */
    CPString _associatedPATMapperID @accessors(property=associatedPATMapperID);
    /*!
        Indicates multicast policy on domain.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NURedirectionTargetTemplatesFetcher _childrenRedirectionTargetTemplates @accessors(property=childrenRedirectionTargetTemplates);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUEgressACLTemplatesFetcher _childrenEgressACLTemplates @accessors(property=childrenEgressACLTemplates);
    NUDomainFIPAclTemplatesFetcher _childrenDomainFIPAclTemplates @accessors(property=childrenDomainFIPAclTemplates);
    NUFloatingIPACLTemplatesFetcher _childrenFloatingIPACLTemplates @accessors(property=childrenFloatingIPACLTemplates);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUIngressACLTemplatesFetcher _childrenIngressACLTemplates @accessors(property=childrenIngressACLTemplates);
    NUIngressAdvFwdTemplatesFetcher _childrenIngressAdvFwdTemplates @accessors(property=childrenIngressAdvFwdTemplates);
    NUIngressExternalServiceTemplatesFetcher _childrenIngressExternalServiceTemplates @accessors(property=childrenIngressExternalServiceTemplates);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUPolicyGroupTemplatesFetcher _childrenPolicyGroupTemplates @accessors(property=childrenPolicyGroupTemplates);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUZoneTemplatesFetcher _childrenZoneTemplates @accessors(property=childrenZoneTemplates);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUSubnetTemplatesFetcher _childrenSubnetTemplates @accessors(property=childrenSubnetTemplates);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"domaintemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyChangeStatus"];
        [self exposeLocalKeyPathToREST:@"associatedBGPProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedPATMapperID"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenRedirectionTargetTemplates = [NURedirectionTargetTemplatesFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenEgressACLTemplates = [NUEgressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomainFIPAclTemplates = [NUDomainFIPAclTemplatesFetcher fetcherWithParentObject:self];
        _childrenFloatingIPACLTemplates = [NUFloatingIPACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenIngressACLTemplates = [NUIngressACLTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressAdvFwdTemplates = [NUIngressAdvFwdTemplatesFetcher fetcherWithParentObject:self];
        _childrenIngressExternalServiceTemplates = [NUIngressExternalServiceTemplatesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroupTemplates = [NUPolicyGroupTemplatesFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenZoneTemplates = [NUZoneTemplatesFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenSubnetTemplates = [NUSubnetTemplatesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end