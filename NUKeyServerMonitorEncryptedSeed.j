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
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUKeyServerMonitorEncryptedSeedEntityScope_ENTERPRISE = @"ENTERPRISE";
NUKeyServerMonitorEncryptedSeedEntityScope_GLOBAL = @"GLOBAL";
NUKeyServerMonitorEncryptedSeedSeedType_DR = @"DR";
NUKeyServerMonitorEncryptedSeedSeedType_STANDARD = @"STANDARD";


/*!
    Represents a Keyserver Monitor Encrypted Seed Snapshot.
*/
@implementation NUKeyServerMonitorEncryptedSeed : NURESTObject
{
    /*!
        SEK Creation Time
    */
    CPNumber _SEKCreationTime @accessors(property=SEKCreationTime);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Seed Type
    */
    CPString _seedType @accessors(property=seedType);
    /*!
        KeyServer Certificate Serial Number
    */
    CPNumber _keyServerCertificateSerialNumber @accessors(property=keyServerCertificateSerialNumber);
    /*!
        Enterprise Secured ID record this monitor represents
    */
    CPString _enterpriseSecuredDataID @accessors(property=enterpriseSecuredDataID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The creation time of the associated KeyServer Monitor Seed ID
    */
    CPNumber _associatedKeyServerMonitorSEKCreationTime @accessors(property=associatedKeyServerMonitorSEKCreationTime);
    /*!
        The ID of the associated KeyServer Monitor SEK ID
    */
    CPString _associatedKeyServerMonitorSEKID @accessors(property=associatedKeyServerMonitorSEKID);
    /*!
        The creation time of the associated KeyServer Monitor Seed ID
    */
    CPNumber _associatedKeyServerMonitorSeedCreationTime @accessors(property=associatedKeyServerMonitorSeedCreationTime);
    /*!
        The ID of the associated KeyServer Monitor Seed ID
    */
    CPString _associatedKeyServerMonitorSeedID @accessors(property=associatedKeyServerMonitorSeedID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"keyservermonitorencryptedseed";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"SEKCreationTime"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"seedType"];
        [self exposeLocalKeyPathToREST:@"keyServerCertificateSerialNumber"];
        [self exposeLocalKeyPathToREST:@"enterpriseSecuredDataID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorSEKCreationTime"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorSEKID"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorSeedCreationTime"];
        [self exposeLocalKeyPathToREST:@"associatedKeyServerMonitorSeedID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end