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
@import "Fetchers/NUApplicationsFetcher.j"

NUL7applicationsignatureEntityScope_ENTERPRISE = @"ENTERPRISE";
NUL7applicationsignatureEntityScope_GLOBAL = @"GLOBAL";


/*!
    Layer 7 ApplicationType , these are auto created as part of VSD bringup
*/
@implementation NUL7applicationsignature : NURESTObject
{
    /*!
         name of the L7 App
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Category of this application
    */
    CPString _category @accessors(property=category);
    /*!
        Determines whether this entity is read only.  Read only objects cannot be modified or deleted.
    */
    BOOL _readonly @accessors(property=readonly);
    /*!
        URL address reference received from Procera for every signature.
    */
    CPString _reference @accessors(property=reference);
    /*!
        Determines whether this entity is deprecated. Deprecated L7 Application Signatures cannot be associated to an application.
    */
    BOOL _deprecated @accessors(property=deprecated);
    /*!
        Determines the procera version when this entity was deprecated. Deprecated objects cannot be modified or deleted.
    */
    CPString _deprecatedVersion @accessors(property=deprecatedVersion);
    /*!
        description for L7 App
    */
    CPString _description @accessors(property=description);
    /*!
        Version of the L7 Application Type
    */
    CPNumber _dictionaryVersion @accessors(property=dictionaryVersion);
    /*!
        Index number received from Procera for every L7 signature.
    */
    CPNumber _signatureIndex @accessors(property=signatureIndex);
    /*!
        The AAR application version where this signature was last updated.
    */
    CPString _signatureVersion @accessors(property=signatureVersion);
    /*!
        Risk is determined on a scale of 1 to 5. It is received from Procera for every signature.
    */
    CPNumber _risk @accessors(property=risk);
    /*!
        Plugin name received from Procera for every signature.
    */
    CPString _pluginName @accessors(property=pluginName);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Software flags received from Procera for every signature.
    */
    CPString _softwareFlags @accessors(property=softwareFlags);
    /*!
        Productivity Index is scored relative to a work environment for every L7 signature on a scale of 1-5.
    */
    CPNumber _productivity @accessors(property=productivity);
    /*!
        GUID of the Application
    */
    CPString _guidstring @accessors(property=guidstring);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUApplicationsFetcher _childrenApplications @accessors(property=childrenApplications);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"l7applicationsignature";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"category"];
        [self exposeLocalKeyPathToREST:@"readonly"];
        [self exposeLocalKeyPathToREST:@"reference"];
        [self exposeLocalKeyPathToREST:@"deprecated"];
        [self exposeLocalKeyPathToREST:@"deprecatedVersion"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"dictionaryVersion"];
        [self exposeLocalKeyPathToREST:@"signatureIndex"];
        [self exposeLocalKeyPathToREST:@"signatureVersion"];
        [self exposeLocalKeyPathToREST:@"risk"];
        [self exposeLocalKeyPathToREST:@"pluginName"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"softwareFlags"];
        [self exposeLocalKeyPathToREST:@"productivity"];
        [self exposeLocalKeyPathToREST:@"guidstring"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenApplications = [NUApplicationsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end