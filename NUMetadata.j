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
@import "Fetchers/NUMetadataTagsFetcher.j"

NUMetadataEntityScope_ENTERPRISE = @"ENTERPRISE";
NUMetadataEntityScope_GLOBAL = @"GLOBAL";


/*!
    Metadata associated to a entity.
*/
@implementation NUMetadata : NURESTObject
{
    /*!
        Metadata that describes about the entity attached to it.
    */
    CPString _blob @accessors(property=blob);
    /*!
        Description of the Metadata.
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
        specifies metadata is global or local
    */
    BOOL _globalMetadata @accessors(property=globalMetadata);
    /*!
        metadata tag IDs associated with this metadata you can filter metadata based on this attribute for example  X-Nuage-Filter: '2d6fb627-603b-421c-b63a-eb0a6d712761' IN metadataTagIDs 
    */
    CPArrayController _metadataTagIDs @accessors(property=metadataTagIDs);
    /*!
        name of the Metadata.
    */
    CPString _name @accessors(property=name);
    /*!
        specifies metadata changes need to be notified to controller,by default it is notified
    */
    BOOL _networkNotificationDisabled @accessors(property=networkNotificationDisabled);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUMetadataTagsFetcher _childrenMetadataTags @accessors(property=childrenMetadataTags);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"metadata";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"blob"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"globalMetadata"];
        [self exposeLocalKeyPathToREST:@"metadataTagIDs"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"networkNotificationDisabled"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenMetadataTags = [NUMetadataTagsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end