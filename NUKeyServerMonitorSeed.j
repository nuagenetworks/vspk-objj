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

@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUKeyServerMonitorEncryptedSeedsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"

NUKeyServerMonitorSeedEntityScope_ENTERPRISE = @"ENTERPRISE";
NUKeyServerMonitorSeedEntityScope_GLOBAL = @"GLOBAL";
NUKeyServerMonitorSeedSeedTrafficAuthenticationAlgorithm_HMAC_MD5 = @"HMAC_MD5";
NUKeyServerMonitorSeedSeedTrafficAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUKeyServerMonitorSeedSeedTrafficAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUKeyServerMonitorSeedSeedTrafficAuthenticationAlgorithm_HMAC_SHA384 = @"HMAC_SHA384";
NUKeyServerMonitorSeedSeedTrafficAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUKeyServerMonitorSeedSeedTrafficEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUKeyServerMonitorSeedSeedTrafficEncryptionAlgorithm_AES_192_CBC = @"AES_192_CBC";
NUKeyServerMonitorSeedSeedTrafficEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUKeyServerMonitorSeedSeedTrafficEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";


/*!
    Represents a Keyserver Monitor Seed Snapshot.
*/
@implementation NUKeyServerMonitorSeed : NURESTObject
{
    /*!
        The time this entry was created (milliseconds since epoch)
    */
    CPNumber _creationTime @accessors(property=creationTime);
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
        The lifetime of this entry (seconds)
    */
    CPNumber _lifetime @accessors(property=lifetime);
    /*!
        Seed traffic Authentication Algorithm.
    */
    CPString _seedTrafficAuthenticationAlgorithm @accessors(property=seedTrafficAuthenticationAlgorithm);
    /*!
        Seed traffic Encryption Algorithm.
    */
    CPString _seedTrafficEncryptionAlgorithm @accessors(property=seedTrafficEncryptionAlgorithm);
    /*!
        Seed Traffic Encryption Key Lifetime in Seconds
    */
    CPNumber _seedTrafficEncryptionKeyLifetime @accessors(property=seedTrafficEncryptionKeyLifetime);
    /*!
        The time this entry  was activated (milliseconds since epoch)
    */
    CPNumber _startTime @accessors(property=startTime);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUKeyServerMonitorEncryptedSeedsFetcher _childrenKeyServerMonitorEncryptedSeeds @accessors(property=childrenKeyServerMonitorEncryptedSeeds);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"keyservermonitorseed";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"creationTime"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lifetime"];
        [self exposeLocalKeyPathToREST:@"seedTrafficAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedTrafficEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedTrafficEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"startTime"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorEncryptedSeeds = [NUKeyServerMonitorEncryptedSeedsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end