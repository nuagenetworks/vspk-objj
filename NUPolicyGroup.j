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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUPolicyGroupCategoriesFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUPolicyGroupEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPolicyGroupEntityScope_GLOBAL = @"GLOBAL";
NUPolicyGroupEntityState_MARKED_FOR_DELETION = @"MARKED_FOR_DELETION";
NUPolicyGroupEntityState_UNDER_CONSTRUCTION = @"UNDER_CONSTRUCTION";
NUPolicyGroupType_HARDWARE = @"HARDWARE";
NUPolicyGroupType_SOFTWARE = @"SOFTWARE";


/*!
    Policy groups are collections of VPorts that are used as building blocks for security policies encompassing multiple end-points. One or more vports can be added to a policy group using this interface.
*/
@implementation NUPolicyGroup : NURESTObject
{
    /*!
        Assigned by VSD. An extended community or other similar BGP attribute to the specific EVPN / IP-VPN NLRI where the VM or network macro is being advertised.
    */
    CPString _EVPNCommunityTag @accessors(property=EVPNCommunityTag);
    /*!
        Name of the policy group
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Determines which template ID this policy group belongs to.
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Describes this policy group
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
        Intermediate State of L2 Domain.
    */
    CPString _entityState @accessors(property=entityState);
    /*!
        PG ID for the subnet. This is unique per domain and will be in the range 1-4095
    */
    CPNumber _policyGroupID @accessors(property=policyGroupID);
    /*!
        UUID of the associated Policy Group Category for contextual filtering of policy groups.
    */
    CPString _assocPolicyGroupCategoryID @accessors(property=assocPolicyGroupCategoryID);
    /*!
        Name of the Policy Group Category used for contextual filtering of policy groups.
    */
    CPString _assocPolicyGroupCategoryName @accessors(property=assocPolicyGroupCategoryName);
    /*!
        Indicates whether this PG is internal to VSP or not.
    */
    BOOL _external @accessors(property=external);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of policy group.
    */
    CPString _type @accessors(property=type);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUPolicyGroupCategoriesFetcher _childrenPolicyGroupCategories @accessors(property=childrenPolicyGroupCategories);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"policygroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"EVPNCommunityTag"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityState"];
        [self exposeLocalKeyPathToREST:@"policyGroupID"];
        [self exposeLocalKeyPathToREST:@"assocPolicyGroupCategoryID"];
        [self exposeLocalKeyPathToREST:@"assocPolicyGroupCategoryName"];
        [self exposeLocalKeyPathToREST:@"external"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenPolicyGroupCategories = [NUPolicyGroupCategoriesFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _type = @"SOFTWARE";
        
    }

    return self;
}

@end