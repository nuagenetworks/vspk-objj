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
@import "Fetchers/NUKeyServerMonitorEncryptedSeedsFetcher.j"
@import "Fetchers/NUKeyServerMonitorSeedsFetcher.j"
@import "Fetchers/NUKeyServerMonitorSEKsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUKeyServerMonitorEntityScope_ENTERPRISE = @"ENTERPRISE";
NUKeyServerMonitorEntityScope_GLOBAL = @"GLOBAL";


/*!
    Represents a Keyserver Monitor Snapshot.
*/
@implementation NUKeyServerMonitor : NURESTObject
{
    /*!
        The time the latest SEK or Seed was created/removed (milliseconds since epoch)
    */
    CPNumber _lastUpdateTime @accessors(property=lastUpdateTime);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Total number of Gateway Secured Data records
    */
    CPNumber _gatewaySecuredDataRecordCount @accessors(property=gatewaySecuredDataRecordCount);
    /*!
        Total number of Keyserver Monitor Encrypted SEK records
    */
    CPNumber _keyserverMonitorEncryptedSEKCount @accessors(property=keyserverMonitorEncryptedSEKCount);
    /*!
        Total number of Keyserver Monitor Encrypted Seed records
    */
    CPNumber _keyserverMonitorEncryptedSeedCount @accessors(property=keyserverMonitorEncryptedSeedCount);
    /*!
        Total number of Keyserver Monitor SEK records
    */
    CPNumber _keyserverMonitorSEKCount @accessors(property=keyserverMonitorSEKCount);
    /*!
        Total number of Keyserver Monitor Seed records
    */
    CPNumber _keyserverMonitorSeedCount @accessors(property=keyserverMonitorSeedCount);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Total number of Enterprise Secured Data records
    */
    CPNumber _enterpriseSecuredDataRecordCount @accessors(property=enterpriseSecuredDataRecordCount);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
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
    NUKeyServerMonitorEncryptedSeedsFetcher _childrenKeyServerMonitorEncryptedSeeds @accessors(property=childrenKeyServerMonitorEncryptedSeeds);
    NUKeyServerMonitorSeedsFetcher _childrenKeyServerMonitorSeeds @accessors(property=childrenKeyServerMonitorSeeds);
    NUKeyServerMonitorSEKsFetcher _childrenKeyServerMonitorSEKs @accessors(property=childrenKeyServerMonitorSEKs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"keyservermonitor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdateTime"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gatewaySecuredDataRecordCount"];
        [self exposeLocalKeyPathToREST:@"keyserverMonitorEncryptedSEKCount"];
        [self exposeLocalKeyPathToREST:@"keyserverMonitorEncryptedSeedCount"];
        [self exposeLocalKeyPathToREST:@"keyserverMonitorSEKCount"];
        [self exposeLocalKeyPathToREST:@"keyserverMonitorSeedCount"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseSecuredDataRecordCount"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorEncryptedSeeds = [NUKeyServerMonitorEncryptedSeedsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorSeeds = [NUKeyServerMonitorSeedsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorSEKs = [NUKeyServerMonitorSEKsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end