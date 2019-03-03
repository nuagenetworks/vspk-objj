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
@import "Fetchers/NUVirtualFirewallRulesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUVirtualFirewallPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVirtualFirewallPolicyEntityScope_GLOBAL = @"GLOBAL";
NUVirtualFirewallPolicyPolicyState_DRAFT = @"DRAFT";
NUVirtualFirewallPolicyPolicyState_LIVE = @"LIVE";
NUVirtualFirewallPolicyPriorityType_BOTTOM = @"BOTTOM";
NUVirtualFirewallPolicyPriorityType_TOP = @"TOP";


/*!
    Defines the template for a Virtual Firewall Policy that helps to group a set of rules either based on functions or actions 
*/
@implementation NUVirtualFirewallPolicy : NURESTObject
{
    /*!
        A unique name set by an operator identifying the Virtual Firewall Rule Template.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        If enabled, it means that this rule is active
    */
    BOOL _active @accessors(property=active);
    /*!
        If enabled a default RUle of Allow All is added as the last entry in the list of rule entries
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
        A concise description of the Virtual Firewall Rule Template that gives a small preview of its use.
    */
    CPString _description @accessors(property=description);
    /*!
        If enabled, it will disable the default anti-spoof Rule for this domain that essentially prevents any VM to send packets that do not originate from that particular VM
    */
    BOOL _allowAddressSpoof @accessors(property=allowAddressSpoof);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        States if the policy is Live or Draft
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The priority of the rule entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Possible values: TOP or BOTTOM. TOP and BOTTOM ACL policies can only be defined and managed on the template level. These allow for careful control of Rule priority handling.
    */
    CPString _priorityType @accessors(property=priorityType);
    /*!
        The read only id of the auto generated Egress Template
    */
    CPString _associatedEgressTemplateID @accessors(property=associatedEgressTemplateID);
    /*!
        The read only id of the auto generated Ingress Template
    */
    CPString _associatedIngressTemplateID @accessors(property=associatedIngressTemplateID);
    /*!
        In the draft mode, the rule entry refers to this LiveEntity. In non-drafted mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        This option affects how Rule entry priorities are generated when not specified. If 'false', the priority is generated by incrementing the current highest priority by 100. If 'true', a random priority will be generated, which is advised when creating many entries concurrently without specifying the priority. This will cause the ACL entry to be randomly placed in the existing list of ACL entries. Therefore it is advised to only enable this when allow rules are being created.
    */
    BOOL _autoGeneratePriority @accessors(property=autoGeneratePriority);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVirtualFirewallRulesFetcher _childrenVirtualFirewallRules @accessors(property=childrenVirtualFirewallRules);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"virtualfirewallpolicy";
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
        [self exposeLocalKeyPathToREST:@"allowAddressSpoof"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"priorityType"];
        [self exposeLocalKeyPathToREST:@"associatedEgressTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"autoGeneratePriority"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVirtualFirewallRules = [NUVirtualFirewallRulesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end