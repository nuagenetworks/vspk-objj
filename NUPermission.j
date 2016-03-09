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
@import "Fetchers/NUMetadatasFetcher.j"

NUPermissionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPermissionEntityScope_GLOBAL = @"GLOBAL";
NUPermissionPermittedAction_ALL = @"ALL";
NUPermissionPermittedAction_DEPLOY = @"DEPLOY";
NUPermissionPermittedAction_EXTEND = @"EXTEND";
NUPermissionPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUPermissionPermittedAction_READ = @"READ";
NUPermissionPermittedAction_USE = @"USE";


/*!
    Represents  Permitted action on an  entity for a group.
*/
@implementation NUPermission : NURESTObject
{
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the  Permission
    */
    CPString _name @accessors(property=name);
    /*!
        The permitted  action to USE/EXTEND/READ/INSTANTIATE  an entity.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Description for the permittedEntity
    */
    CPString _permittedEntityDescription @accessors(property=permittedEntityDescription);
    /*!
        The  entity ID for which this permission action is associated against.
    */
    CPString _permittedEntityID @accessors(property=permittedEntityID);
    /*!
        Name of the entity for which we have given permission.
    */
    CPString _permittedEntityName @accessors(property=permittedEntityName);
    /*!
        Type of the entity for which we have given permission.
    */
    CPString _permittedEntityType @accessors(property=permittedEntityType);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"permission";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"permittedEntityDescription"];
        [self exposeLocalKeyPathToREST:@"permittedEntityID"];
        [self exposeLocalKeyPathToREST:@"permittedEntityName"];
        [self exposeLocalKeyPathToREST:@"permittedEntityType"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end