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

@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUEgressACLEntryTemplatesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUEgressACLTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEgressACLTemplateEntityScope_GLOBAL = @"GLOBAL";
NUEgressACLTemplatePolicyState_DRAFT = @"DRAFT";
NUEgressACLTemplatePolicyState_LIVE = @"LIVE";
NUEgressACLTemplatePriorityType_BOTTOM = @"BOTTOM";
NUEgressACLTemplatePriorityType_BOTTOM_FIREWALL = @"BOTTOM_FIREWALL";
NUEgressACLTemplatePriorityType_MIDDLE_FIREWALL = @"MIDDLE_FIREWALL";
NUEgressACLTemplatePriorityType_NONE = @"NONE";
NUEgressACLTemplatePriorityType_TOP = @"TOP";
NUEgressACLTemplatePriorityType_TOP_FIREWALL = @"TOP_FIREWALL";


/*!
    An egress security policy is a set of rules defining how network traffic is treated within a domain. Egress Security Policies control traffic flowing out of the network.
*/
@implementation NUEgressACLTemplate : NURESTObject
{
    /*!
        The name of the entity
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        If enabled, it means that this ACL or QOS entry is active
    */
    BOOL _active @accessors(property=active);
    /*!
        If enabled a default ACL of Allow All is added as the last entry in the list of ACL entries
    */
    BOOL _defaultAllowIP @accessors(property=defaultAllowIP);
    /*!
        If enabled, non ip traffic will be dropped
    */
    BOOL _defaultAllowNonIP @accessors(property=defaultAllowNonIP);
    /*!
        If enabled, implicit rule will allow intra domain traffic by default
    */
    BOOL _defaultInstallACLImplicitRules @accessors(property=defaultInstallACLImplicitRules);
    /*!
        A description of the entity
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        None
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Possible values: TOP, BOTTOM, TOP_FIREWALL, BOTTOM_FIREWALL, MIDDLE_FIREWALL or NONE. TOP and BOTTOM ACL policies can only be defined and managed on the template level, NONE can be used on both the template and instantiated level. TOP_FIREWALL, BOTTOM_FIREWALL, MIDDLE_FIREWALL are used to represent acls dirived from Virtual Firewall Policies. These allow for careful control of ACL priority handling.
    */
    CPString _priorityType @accessors(property=priorityType);
    /*!
        In the draft mode, the ACL entry refers to this LiveEntity. In non-drafted mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        The ID of the Virtual Firewall Policy, if this was created as part of the Virtual Firewall Policy creation
    */
    CPString _associatedVirtualFirewallPolicyID @accessors(property=associatedVirtualFirewallPolicyID);
    /*!
        This option affects how ACL entry priorities are generated when not specified. If 'false', the priority is generated by incrementing the current highest priority by 100. If 'true', a random priority will be generated, which is advised when creating many entries concurrently without specifying the priority. This will cause the ACL entry to be randomly placed in the existing list of ACL entries. Therefore it is advised to only enable this when allow rules are being created.
    */
    BOOL _autoGeneratePriority @accessors(property=autoGeneratePriority);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUEgressACLEntryTemplatesFetcher _childrenEgressACLEntryTemplates @accessors(property=childrenEgressACLEntryTemplates);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressacltemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"active"];
        [self exposeLocalKeyPathToREST:@"defaultAllowIP"];
        [self exposeLocalKeyPathToREST:@"defaultAllowNonIP"];
        [self exposeLocalKeyPathToREST:@"defaultInstallACLImplicitRules"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"priorityType"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedVirtualFirewallPolicyID"];
        [self exposeLocalKeyPathToREST:@"autoGeneratePriority"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenEgressACLEntryTemplates = [NUEgressACLEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _defaultInstallACLImplicitRules = YES;
        
    }

    return self;
}

@end