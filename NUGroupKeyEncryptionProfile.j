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

NUGroupKeyEncryptionProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGroupKeyEncryptionProfileEntityScope_GLOBAL = @"GLOBAL";
NUGroupKeyEncryptionProfileSEKPayloadEncryptionAlgorithm_RSA_1024 = @"RSA_1024";
NUGroupKeyEncryptionProfileSEKPayloadSigningAlgorithm_SHA1WITHRSA = @"SHA1withRSA";
NUGroupKeyEncryptionProfileSEKPayloadSigningAlgorithm_SHA224WITHRSA = @"SHA224withRSA";
NUGroupKeyEncryptionProfileSEKPayloadSigningAlgorithm_SHA256WITHRSA = @"SHA256withRSA";
NUGroupKeyEncryptionProfileSEKPayloadSigningAlgorithm_SHA384WITHRSA = @"SHA384withRSA";
NUGroupKeyEncryptionProfileSEKPayloadSigningAlgorithm_SHA512WITHRSA = @"SHA512withRSA";
NUGroupKeyEncryptionProfileSeedPayloadAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUGroupKeyEncryptionProfileSeedPayloadAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUGroupKeyEncryptionProfileSeedPayloadAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUGroupKeyEncryptionProfileSeedPayloadEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUGroupKeyEncryptionProfileSeedPayloadEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUGroupKeyEncryptionProfileSeedPayloadEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";
NUGroupKeyEncryptionProfileSeedPayloadSigningAlgorithm_SHA1WITHRSA = @"SHA1withRSA";
NUGroupKeyEncryptionProfileSeedPayloadSigningAlgorithm_SHA224WITHRSA = @"SHA224withRSA";
NUGroupKeyEncryptionProfileSeedPayloadSigningAlgorithm_SHA256WITHRSA = @"SHA256withRSA";
NUGroupKeyEncryptionProfileSeedPayloadSigningAlgorithm_SHA384WITHRSA = @"SHA384withRSA";
NUGroupKeyEncryptionProfileSeedPayloadSigningAlgorithm_SHA512WITHRSA = @"SHA512withRSA";
NUGroupKeyEncryptionProfileTrafficAuthenticationAlgorithm_HMAC_MD5 = @"HMAC_MD5";
NUGroupKeyEncryptionProfileTrafficAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUGroupKeyEncryptionProfileTrafficAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUGroupKeyEncryptionProfileTrafficAuthenticationAlgorithm_HMAC_SHA384 = @"HMAC_SHA384";
NUGroupKeyEncryptionProfileTrafficAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUGroupKeyEncryptionProfileTrafficEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUGroupKeyEncryptionProfileTrafficEncryptionAlgorithm_AES_192_CBC = @"AES_192_CBC";
NUGroupKeyEncryptionProfileTrafficEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUGroupKeyEncryptionProfileTrafficEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";


/*!
    Represents a Group Key Profile
*/
@implementation NUGroupKeyEncryptionProfile : NURESTObject
{
    /*!
        Group Key SEK Generation Interval in Seconds. Min=1, Max=86400
    */
    CPNumber _SEKGenerationInterval @accessors(property=SEKGenerationInterval);
    /*!
        Group Key SEK Lifetime in Seconds. Min=1, Max=604800
    */
    CPNumber _SEKLifetime @accessors(property=SEKLifetime);
    /*!
        Group Key SEK Payload Encryption Algorithm.
    */
    CPString _SEKPayloadEncryptionAlgorithm @accessors(property=SEKPayloadEncryptionAlgorithm);
    /*!
        Group Key Sek Payload Encryption BC Algorithm (read only)
    */
    CPString _SEKPayloadEncryptionBCAlgorithm @accessors(property=SEKPayloadEncryptionBCAlgorithm);
    /*!
        Group Key Sek Payload Encryption Key Length (read only)
    */
    CPNumber _SEKPayloadEncryptionKeyLength @accessors(property=SEKPayloadEncryptionKeyLength);
    /*!
        Group Key SEK Payload Signature Algorithm.
    */
    CPString _SEKPayloadSigningAlgorithm @accessors(property=SEKPayloadSigningAlgorithm);
    /*!
        DR Seed Lifetime in seconds
    */
    CPNumber _DRSeedLifetime @accessors(property=DRSeedLifetime);
    /*!
        Name of the Encryption Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Group Key SEED Generation Interval in Seconds.
    */
    CPNumber _seedGenerationInterval @accessors(property=seedGenerationInterval);
    /*!
        Group Key SEED Lifetime in Seconds. Min=1, Max=604800
    */
    CPNumber _seedLifetime @accessors(property=seedLifetime);
    /*!
        Group Key SEK Payload Signature Algorithm.
    */
    CPString _seedPayloadAuthenticationAlgorithm @accessors(property=seedPayloadAuthenticationAlgorithm);
    /*!
        Group Key Seed Payload Authentication Algorithm (read only)
    */
    CPString _seedPayloadAuthenticationBCAlgorithm @accessors(property=seedPayloadAuthenticationBCAlgorithm);
    /*!
        Group Key Seed Payload Authentication Key Length  (read only)
    */
    CPNumber _seedPayloadAuthenticationKeyLength @accessors(property=seedPayloadAuthenticationKeyLength);
    /*!
        Group Key SEED Payload Encryption Algorithm.
    */
    CPString _seedPayloadEncryptionAlgorithm @accessors(property=seedPayloadEncryptionAlgorithm);
    /*!
        Group Key Seed Payload Encryption Algorithm (read only)
    */
    CPString _seedPayloadEncryptionBCAlgorithm @accessors(property=seedPayloadEncryptionBCAlgorithm);
    /*!
        Group Key Seed Payload Encryption Key Length (read only)
    */
    CPNumber _seedPayloadEncryptionKeyLength @accessors(property=seedPayloadEncryptionKeyLength);
    /*!
        Group Key Seed Payload Signature Algorithm.
    */
    CPString _seedPayloadSigningAlgorithm @accessors(property=seedPayloadSigningAlgorithm);
    /*!
        A description of the Profile instance created.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Group Key traffic Authentication Algorithm. Possible values are HMAC_SHA1, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_MD5, .
    */
    CPString _trafficAuthenticationAlgorithm @accessors(property=trafficAuthenticationAlgorithm);
    /*!
        Group Key traffic Encryption Algorithm. Possible values are AES_128_CBC, AES_192_CBC, AES_256_CBC, TRIPLE_DES_CBC, .
    */
    CPString _trafficEncryptionAlgorithm @accessors(property=trafficEncryptionAlgorithm);
    /*!
        Group Key Traffic Encryption Key Lifetime in Seconds. Min=1, Max=86400
    */
    CPNumber _trafficEncryptionKeyLifetime @accessors(property=trafficEncryptionKeyLifetime);
    /*!
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
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
    return @"groupkeyencryptionprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"SEKGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"SEKLifetime"];
        [self exposeLocalKeyPathToREST:@"SEKPayloadEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"SEKPayloadEncryptionBCAlgorithm"];
        [self exposeLocalKeyPathToREST:@"SEKPayloadEncryptionKeyLength"];
        [self exposeLocalKeyPathToREST:@"SEKPayloadSigningAlgorithm"];
        [self exposeLocalKeyPathToREST:@"DRSeedLifetime"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"seedGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"seedLifetime"];
        [self exposeLocalKeyPathToREST:@"seedPayloadAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedPayloadAuthenticationBCAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedPayloadAuthenticationKeyLength"];
        [self exposeLocalKeyPathToREST:@"seedPayloadEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedPayloadEncryptionBCAlgorithm"];
        [self exposeLocalKeyPathToREST:@"seedPayloadEncryptionKeyLength"];
        [self exposeLocalKeyPathToREST:@"seedPayloadSigningAlgorithm"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"trafficAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"trafficEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"trafficEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end