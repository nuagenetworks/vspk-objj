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
@import "Fetchers/NUKeyServerMonitorEncryptedSeedsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

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
NUKeyServerMonitorSeedSeedType_DR = @"DR";
NUKeyServerMonitorSeedSeedType_STANDARD = @"STANDARD";


/*!
    Represents a Keyserver Monitor Seed Snapshot.
*/
@implementation NUKeyServerMonitorSeed : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
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
        Indicates if this is a Standard (or) a Disaster Recovery seed.
    */
    CPString _seedType @accessors(property=seedType);
    /*!
        The lifetime of this entry (seconds)
    */
    CPNumber _lifetime @accessors(property=lifetime);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The time this entry was created (milliseconds since epoch)
    */
    CPNumber _creationTime @accessors(property=creationTime);
    /*!
        The time this entry  was activated (milliseconds since epoch)
    */
    CPNumber _startTime @accessors(property=startTime);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUKeyServerMonitorEncryptedSeedsFetcher _childrenKeyServerMonitorEncryptedSeeds @accessors(property=childrenKeyServerMonitorEncryptedSeeds);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"seedTrafficAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedTrafficEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedTrafficEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"seedType"];
        [self exposeLocalKeyPathToREST:@"lifetime"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationTime"];
        [self exposeLocalKeyPathToREST:@"startTime"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorEncryptedSeeds = [NUKeyServerMonitorEncryptedSeedsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end