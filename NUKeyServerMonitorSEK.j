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
@import "Fetchers/NUKeyServerMonitorEncryptedSEKsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUKeyServerMonitorSEKEntityScope_ENTERPRISE = @"ENTERPRISE";
NUKeyServerMonitorSEKEntityScope_GLOBAL = @"GLOBAL";
NUKeyServerMonitorSEKSeedPayloadAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUKeyServerMonitorSEKSeedPayloadAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUKeyServerMonitorSEKSeedPayloadAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUKeyServerMonitorSEKSeedPayloadEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUKeyServerMonitorSEKSeedPayloadEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUKeyServerMonitorSEKSeedPayloadEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";


/*!
    Represents a Keyserver Monitor SEK Snapshot
*/
@implementation NUKeyServerMonitorSEK : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        SEK Payload Signature Algorithm Possible values are HMAC_SHA1, HMAC_SHA256, HMAC_SHA512, .
    */
    CPString _seedPayloadAuthenticationAlgorithm @accessors(property=seedPayloadAuthenticationAlgorithm);
    /*!
        SEK Payload Encryption Algorithm Possible values are AES_128_CBC, AES_256_CBC, TRIPLE_DES_CBC, .
    */
    CPString _seedPayloadEncryptionAlgorithm @accessors(property=seedPayloadEncryptionAlgorithm);
    /*!
        The lifetime of this entry (seconds)
    */
    CPNumber _lifetime @accessors(property=lifetime);
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
    NUKeyServerMonitorEncryptedSEKsFetcher _childrenKeyServerMonitorEncryptedSEKs @accessors(property=childrenKeyServerMonitorEncryptedSEKs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"keyservermonitorsek";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"seedPayloadAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedPayloadEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"lifetime"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationTime"];
        [self exposeLocalKeyPathToREST:@"startTime"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorEncryptedSeeds = [NUKeyServerMonitorEncryptedSeedsFetcher fetcherWithParentObject:self];
        _childrenKeyServerMonitorEncryptedSEKs = [NUKeyServerMonitorEncryptedSEKsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end