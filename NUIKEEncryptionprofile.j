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
@import "Fetchers/NUMetadatasFetcher.j"

NUIKEEncryptionprofileDPDMode_ON_DEMAND = @"ON_DEMAND";
NUIKEEncryptionprofileDPDMode_PERIODIC = @"PERIODIC";
NUIKEEncryptionprofileDPDMode_REPLY_ONLY = @"REPLY_ONLY";
NUIKEEncryptionprofileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEEncryptionprofileEntityScope_GLOBAL = @"GLOBAL";
NUIKEEncryptionprofileIPSecAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUIKEEncryptionprofileIPSecAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUIKEEncryptionprofileIPSecAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUIKEEncryptionprofileIPSecEncryptionAlgorithm_AES128 = @"AES128";
NUIKEEncryptionprofileIPSecEncryptionAlgorithm_AES192 = @"AES192";
NUIKEEncryptionprofileIPSecEncryptionAlgorithm_AES256 = @"AES256";
NUIKEEncryptionprofileIPSecEncryptionAlgorithm_TRIPLE_DES = @"TRIPLE_DES";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_0 = @"WINDOW_SIZE_0";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_1024 = @"WINDOW_SIZE_1024";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_128 = @"WINDOW_SIZE_128";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_256 = @"WINDOW_SIZE_256";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_32 = @"WINDOW_SIZE_32";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_512 = @"WINDOW_SIZE_512";
NUIKEEncryptionprofileIPSecSAReplayWindowSize_WINDOW_SIZE_64 = @"WINDOW_SIZE_64";
NUIKEEncryptionprofileISAKMPAuthenticationMode_PRE_SHARED_KEY = @"PRE_SHARED_KEY";
NUIKEEncryptionprofileISAKMPAuthenticationMode_RSA_SIGNATURE = @"RSA_SIGNATURE";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_14_2048_BIT_DH = @"GROUP_14_2048_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_15_3072_BIT_DH = @"GROUP_15_3072_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_16_4096_BIT_DH = @"GROUP_16_4096_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_19_256_BIT_ECDH = @"GROUP_19_256_BIT_ECDH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_1_768_BIT_DH = @"GROUP_1_768_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_20_384_BIT_ECDH = @"GROUP_20_384_BIT_ECDH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_24_2048_BIT_ECDH = @"GROUP_24_2048_BIT_ECDH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_2_1024_BIT_DH = @"GROUP_2_1024_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_5_1536_BIT_DH = @"GROUP_5_1536_BIT_DH";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES128 = @"AES128";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES192 = @"AES192";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES256 = @"AES256";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_TRIPLE_DES = @"TRIPLE_DES";
NUIKEEncryptionprofileISAKMPHashAlgorithm_MD5 = @"MD5";
NUIKEEncryptionprofileISAKMPHashAlgorithm_SHA1 = @"SHA1";
NUIKEEncryptionprofileISAKMPHashAlgorithm_SHA256 = @"SHA256";


/*!
    Represents an IKE Profile
*/
@implementation NUIKEEncryptionprofile : NURESTObject
{
    /*!
        ISAKMP Keep Alive Interval.
    */
    CPNumber _DPDInterval @accessors(property=DPDInterval);
    /*!
        DPD Mode.
    */
    CPString _DPDMode @accessors(property=DPDMode);
    /*!
        DPD Retry Interval.
    */
    CPNumber _DPDRetryInterval @accessors(property=DPDRetryInterval);
    /*!
        DPD Timeout.
    */
    CPNumber _DPDTimeout @accessors(property=DPDTimeout);
    /*!
        IPSec Authentication Algorithm.
    */
    CPString _IPSecAuthenticationAlgorithm @accessors(property=IPSecAuthenticationAlgorithm);
    /*!
        IPSec Don't Fragment
    */
    BOOL _IPSecDontFragment @accessors(property=IPSecDontFragment);
    /*!
        IPSec Enable PFS
    */
    BOOL _IPSecEnablePFS @accessors(property=IPSecEnablePFS);
    /*!
        IPSec Encryption Algorithm.
    */
    CPString _IPSecEncryptionAlgorithm @accessors(property=IPSecEncryptionAlgorithm);
    /*!
        IPSec PreFragment
    */
    BOOL _IPSecPreFragment @accessors(property=IPSecPreFragment);
    /*!
        IPSec SA Lifetime in Seconds.
    */
    CPNumber _IPSecSALifetime @accessors(property=IPSecSALifetime);
    /*!
        IPSec Replay Window Size in Packets.
    */
    CPString _IPSecSAReplayWindowSize @accessors(property=IPSecSAReplayWindowSize);
    /*!
        ISAKMP Authentication Algorithm.
    */
    CPString _ISAKMPAuthenticationMode @accessors(property=ISAKMPAuthenticationMode);
    /*!
        ISAKMP Diffie-Helman Group Identifier.
    */
    CPString _ISAKMPDiffieHelmanGroupIdentifier @accessors(property=ISAKMPDiffieHelmanGroupIdentifier);
    /*!
        ISAKMP Encryption Algorithm.
    */
    CPString _ISAKMPEncryptionAlgorithm @accessors(property=ISAKMPEncryptionAlgorithm);
    /*!
        ISAKMP Encryption Key Lifetime in Seconds
    */
    CPNumber _ISAKMPEncryptionKeyLifetime @accessors(property=ISAKMPEncryptionKeyLifetime);
    /*!
        ISAKMP Hash Algorithm.
    */
    CPString _ISAKMPHashAlgorithm @accessors(property=ISAKMPHashAlgorithm);
    /*!
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        A description of the Profile instance created.
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
        Name of the Encryption Profile
    */
    CPString _name @accessors(property=name);
    /*!
        
    */
    CPNumber _sequence @accessors(property=sequence);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ikeencryptionprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DPDInterval"];
        [self exposeLocalKeyPathToREST:@"DPDMode"];
        [self exposeLocalKeyPathToREST:@"DPDRetryInterval"];
        [self exposeLocalKeyPathToREST:@"DPDTimeout"];
        [self exposeLocalKeyPathToREST:@"IPSecAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"IPSecDontFragment"];
        [self exposeLocalKeyPathToREST:@"IPSecEnablePFS"];
        [self exposeLocalKeyPathToREST:@"IPSecEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"IPSecPreFragment"];
        [self exposeLocalKeyPathToREST:@"IPSecSALifetime"];
        [self exposeLocalKeyPathToREST:@"IPSecSAReplayWindowSize"];
        [self exposeLocalKeyPathToREST:@"ISAKMPAuthenticationMode"];
        [self exposeLocalKeyPathToREST:@"ISAKMPDiffieHelmanGroupIdentifier"];
        [self exposeLocalKeyPathToREST:@"ISAKMPEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"ISAKMPEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"ISAKMPHashAlgorithm"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"sequence"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end