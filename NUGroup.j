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
@import "Fetchers/NUUsersFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUGroupEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGroupEntityScope_GLOBAL = @"GLOBAL";
NUGroupManagementMode_CMS = @"CMS";
NUGroupManagementMode_DEFAULT = @"DEFAULT";
NUGroupManagementMode_RESERVED = @"RESERVED";
NUGroupRole_ADMINOPERATOR = @"ADMINOPERATOR";
NUGroupRole_AUDITADMIN = @"AUDITADMIN";
NUGroupRole_CMS = @"CMS";
NUGroupRole_CSPOPERATOR = @"CSPOPERATOR";
NUGroupRole_CSPROOT = @"CSPROOT";
NUGroupRole_JMS = @"JMS";
NUGroupRole_NETCONFMGR = @"NETCONFMGR";
NUGroupRole_ORGADMIN = @"ORGADMIN";
NUGroupRole_ORGNETWORKDESIGNER = @"ORGNETWORKDESIGNER";
NUGroupRole_ORGUSER = @"ORGUSER";
NUGroupRole_POSTACTIVATION = @"POSTACTIVATION";
NUGroupRole_PREACTIVATION = @"PREACTIVATION";
NUGroupRole_SECURITYADMINISTRATOR = @"SECURITYADMINISTRATOR";
NUGroupRole_STATS = @"STATS";
NUGroupRole_SYSTEM = @"SYSTEM";
NUGroupRole_UNKNOWN = @"UNKNOWN";
NUGroupRole_USER = @"USER";


/*!
    Identifies a group within an enterprise
*/
@implementation NUGroup : NURESTObject
{
    /*!
        The LDAP distinguished name (DN) for the group.
    */
    CPString _LDAPGroupDN @accessors(property=LDAPGroupDN);
    /*!
        A unique name of the group
    */
    CPString _name @accessors(property=name);
    /*!
        Management mode of the user object - allows for override of external authorization and syncup
    */
    CPString _managementMode @accessors(property=managementMode);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Determines whether group is disabled or not.
    */
    BOOL _accountRestrictions @accessors(property=accountRestrictions);
    /*!
        Description of the group
    */
    CPString _description @accessors(property=description);
    /*!
        When the group was disabled.
    */
    CPNumber _restrictionDate @accessors(property=restrictionDate);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The role associated with this group.
    */
    CPString _role @accessors(property=role);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        A private group is visible only by the owner of the group. Public groups are visible by all users in the enterprise
    */
    BOOL _private @accessors(property=private);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUUsersFetcher _childrenUsers @accessors(property=childrenUsers);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"group";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"LDAPGroupDN"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managementMode"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"accountRestrictions"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"restrictionDate"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"private"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenUsers = [NUUsersFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end