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
@import "Fetchers/NUEgressAdvFwdEntryTemplatesFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUEgressAdvFwdTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEgressAdvFwdTemplateEntityScope_GLOBAL = @"GLOBAL";
NUEgressAdvFwdTemplatePolicyState_DRAFT = @"DRAFT";
NUEgressAdvFwdTemplatePolicyState_LIVE = @"LIVE";
NUEgressAdvFwdTemplatePriorityType_BOTTOM = @"BOTTOM";
NUEgressAdvFwdTemplatePriorityType_BOTTOM_FIREWALL = @"BOTTOM_FIREWALL";
NUEgressAdvFwdTemplatePriorityType_MIDDLE_FIREWALL = @"MIDDLE_FIREWALL";
NUEgressAdvFwdTemplatePriorityType_NONE = @"NONE";
NUEgressAdvFwdTemplatePriorityType_TOP = @"TOP";
NUEgressAdvFwdTemplatePriorityType_TOP_FIREWALL = @"TOP_FIREWALL";


/*!
    Create a table for egress forwarding policy rules. These include flow redirect rules and forwarding class override rules.
*/
@implementation NUEgressAdvFwdTemplate : NURESTObject
{
    /*!
        The name of the template
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
        A description of the entity
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        State of the policy.  Possible values are DRAFT, LIVE, .
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
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
        This option only affects how the children ACL entry priorities of this template/policy are generated when the priority is not specified. If 'false', the priority is generated by incrementing the current highest ACL Entry priority by 100. If 'true', a random priority will be generated, which is advised when creating many entries concurrently without specifying the priority. This will cause the new child ACL entry to get a random, non-predictable, priority. Therefore it is advised to only enable this when allow rules are being created. If any type of ACL entry order is required, keep this value to 'false' and use your own defined priorities, this will make sure there is a clear set of priorities and how traffic is validated against the ACL entries.
    */
    BOOL _autoGeneratePriority @accessors(property=autoGeneratePriority);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUEgressAdvFwdEntryTemplatesFetcher _childrenEgressAdvFwdEntryTemplates @accessors(property=childrenEgressAdvFwdEntryTemplates);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressadvfwdtemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"active"];
        [self exposeLocalKeyPathToREST:@"defaultAllowIP"];
        [self exposeLocalKeyPathToREST:@"defaultAllowNonIP"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"priorityType"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"autoGeneratePriority"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenEgressAdvFwdEntryTemplates = [NUEgressAdvFwdEntryTemplatesFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end