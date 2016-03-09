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

@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNATMapEntriesFetcher.j"

NUPATNATPoolAssociatedGatewayType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUPATNATPoolAssociatedGatewayType_GATEWAY = @"GATEWAY";
NUPATNATPoolAssociatedGatewayType_IKEV2_GATEWAY = @"IKEV2_GATEWAY";
NUPATNATPoolAssociatedGatewayType_NSGATEWAY = @"NSGATEWAY";
NUPATNATPoolEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPATNATPoolEntityScope_GLOBAL = @"GLOBAL";
NUPATNATPoolPermittedAction_ALL = @"ALL";
NUPATNATPoolPermittedAction_DEPLOY = @"DEPLOY";
NUPATNATPoolPermittedAction_EXTEND = @"EXTEND";
NUPATNATPoolPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUPATNATPoolPermittedAction_READ = @"READ";
NUPATNATPoolPermittedAction_USE = @"USE";


/*!
    Represents a PAT NAT Pool object.
*/
@implementation NUPATNATPool : NURESTObject
{
    /*!
        Pool of IP Address that is available for use ex : 130.12.0.0/16
    */
    CPString _addressRange @accessors(property=addressRange);
    /*!
        Default PAT IP Address, must belong to the pool above
    */
    CPString _associatedGatewayId @accessors(property=associatedGatewayId);
    /*!
        
    */
    CPString _associatedGatewayType @accessors(property=associatedGatewayType);
    /*!
        Default PAT IP Address, must belong to the pool above
    */
    CPString _defaultPATIP @accessors(property=defaultPATIP);
    /*!
        A description of the PATNATPool
    */
    CPString _description @accessors(property=description);
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
        Name of the PATNATPool
    */
    CPString _name @accessors(property=name);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNATMapEntriesFetcher _childrenNATMapEntries @accessors(property=childrenNATMapEntries);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"patnatpool";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"addressRange"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayId"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayType"];
        [self exposeLocalKeyPathToREST:@"defaultPATIP"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNATMapEntries = [NUNATMapEntriesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end