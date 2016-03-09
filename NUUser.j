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

@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"

NUUserAvatarType_BASE64 = @"BASE64";
NUUserAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUUserAvatarType_URL = @"URL";
NUUserEntityScope_ENTERPRISE = @"ENTERPRISE";
NUUserEntityScope_GLOBAL = @"GLOBAL";
NUUserManagementMode_CMS = @"CMS";
NUUserManagementMode_DEFAULT = @"DEFAULT";


/*!
    Object that identifies the user functions.
*/
@implementation NUUser : NURESTObject
{
    /*!
        URL to the avatar data associated with the enterprise. If the avatarType is URL then value of avatarData should an URL of the image. If the avatarType BASE64 then avatarData should be BASE64 encoded value of the image
    */
    CPString _avatarData @accessors(property=avatarData);
    /*!
        Avatar type.
    */
    CPString _avatarType @accessors(property=avatarType);
    /*!
        Status of the user account; true=disabled, false=not disabled; default value = false
    */
    BOOL _disabled @accessors(property=disabled);
    /*!
        Email address of the user
    */
    CPString _email @accessors(property=email);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        First name of the user
    */
    CPString _firstName @accessors(property=firstName);
    /*!
        Last name of the user
    */
    CPString _lastName @accessors(property=lastName);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Management mode of the user object - allows for override of external authorization and syncup
    */
    CPString _managementMode @accessors(property=managementMode);
    /*!
        Mobile Number of the user
    */
    CPString _mobileNumber @accessors(property=mobileNumber);
    /*!
        User password stored as a hash (SHA-1 encrpted)
    */
    CPString _password @accessors(property=password);
    /*!
        Unique Username of the user. Valid characters are alphabets, numbers and hyphen( - ).
    */
    CPString _userName @accessors(property=userName);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    
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
        [self exposeLocalKeyPathToREST:@"avatarData"];
        [self exposeLocalKeyPathToREST:@"avatarType"];
        [self exposeLocalKeyPathToREST:@"disabled"];
        [self exposeLocalKeyPathToREST:@"email"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"firstName"];
        [self exposeLocalKeyPathToREST:@"lastName"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"managementMode"];
        [self exposeLocalKeyPathToREST:@"mobileNumber"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"userName"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end