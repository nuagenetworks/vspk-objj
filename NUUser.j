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
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUAvatarsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUUserAvatarType_BASE64 = @"BASE64";
NUUserAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUUserAvatarType_URL = @"URL";
NUUserEntityScope_ENTERPRISE = @"ENTERPRISE";
NUUserEntityScope_GLOBAL = @"GLOBAL";
NUUserManagementMode_CMS = @"CMS";
NUUserManagementMode_DEFAULT = @"DEFAULT";


/*!
    Users represent people of your organization. A user can be placed into a group and this group can have some permissions to add VMs into a domain for instance.
*/
@implementation NUUser : NURESTObject
{
    /*!
        The LDAP distinguished name (DN) for the user.
    */
    CPString _LDAPUserDN @accessors(property=LDAPUserDN);
    /*!
        Management mode of the user object - allows for override of external authorization and syncup
    */
    CPString _managementMode @accessors(property=managementMode);
    /*!
        User password in clear text. Password cannot be a single character asterisk (*)
    */
    CPString _password @accessors(property=password);
    /*!
        Last name of the user
    */
    CPString _lastName @accessors(property=lastName);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        First name of the user
    */
    CPString _firstName @accessors(property=firstName);
    /*!
        Whether Certificate-Based Authentication is disabled. Default is false.
    */
    BOOL _disableCertificateAuth @accessors(property=disableCertificateAuth);
    /*!
        Whether Username-Password Authentication is disabled. Default is false.
    */
    BOOL _disablePasswordAuth @accessors(property=disablePasswordAuth);
    /*!
        Status of the user account; true=disabled, false=not disabled; default value = false
    */
    BOOL _disabled @accessors(property=disabled);
    /*!
        Email address of the user
    */
    CPString _email @accessors(property=email);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Mobile Number of the user
    */
    CPString _mobileNumber @accessors(property=mobileNumber);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Unique Username of the user. Valid characters are alphabets, numbers and hyphen( - ).
    */
    CPString _userName @accessors(property=userName);
    /*!
        URL to the avatar data associated with the enterprise. If the avatarType is URL then value of avatarData should an URL of the image. If the avatarType BASE64 then avatarData should be BASE64 encoded value of the image
    */
    CPString _avatarData @accessors(property=avatarData);
    /*!
        Avatar type.
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
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUAvatarsFetcher _childrenAvatars @accessors(property=childrenAvatars);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"user";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"LDAPUserDN"];
        [self exposeLocalKeyPathToREST:@"managementMode"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"lastName"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"firstName"];
        [self exposeLocalKeyPathToREST:@"disableCertificateAuth"];
        [self exposeLocalKeyPathToREST:@"disablePasswordAuth"];
        [self exposeLocalKeyPathToREST:@"disabled"];
        [self exposeLocalKeyPathToREST:@"email"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"mobileNumber"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"userName"];
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenAvatars = [NUAvatarsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end