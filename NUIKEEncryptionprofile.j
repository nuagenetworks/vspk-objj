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

NUIKEEncryptionprofileDPDMode_ON_DEMAND = @"ON_DEMAND";
NUIKEEncryptionprofileDPDMode_REPLY_ONLY = @"REPLY_ONLY";
NUIKEEncryptionprofileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEEncryptionprofileEntityScope_GLOBAL = @"GLOBAL";
NUIKEEncryptionprofileIPsecAuthenticationAlgorithm_HMAC_MD5 = @"HMAC_MD5";
NUIKEEncryptionprofileIPsecAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUIKEEncryptionprofileIPsecAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUIKEEncryptionprofileIPsecAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUIKEEncryptionprofileIPsecEncryptionAlgorithm_AES128 = @"AES128";
NUIKEEncryptionprofileIPsecEncryptionAlgorithm_AES192 = @"AES192";
NUIKEEncryptionprofileIPsecEncryptionAlgorithm_AES256 = @"AES256";
NUIKEEncryptionprofileIPsecEncryptionAlgorithm_NULL = @"NULL";
NUIKEEncryptionprofileIPsecEncryptionAlgorithm_TRIPLE_DES = @"TRIPLE_DES";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_1024 = @"WINDOW_SIZE_1024";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_128 = @"WINDOW_SIZE_128";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_256 = @"WINDOW_SIZE_256";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_32 = @"WINDOW_SIZE_32";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_512 = @"WINDOW_SIZE_512";
NUIKEEncryptionprofileIPsecSAReplayWindowSize_WINDOW_SIZE_64 = @"WINDOW_SIZE_64";
NUIKEEncryptionprofileISAKMPAuthenticationMode_PRE_SHARED_KEY = @"PRE_SHARED_KEY";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_14_2048_BIT_DH = @"GROUP_14_2048_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_15_3072_BIT_DH = @"GROUP_15_3072_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_1_768_BIT_DH = @"GROUP_1_768_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_2_1024_BIT_DH = @"GROUP_2_1024_BIT_DH";
NUIKEEncryptionprofileISAKMPDiffieHelmanGroupIdentifier_GROUP_5_1536_BIT_DH = @"GROUP_5_1536_BIT_DH";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES128 = @"AES128";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES192 = @"AES192";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_AES256 = @"AES256";
NUIKEEncryptionprofileISAKMPEncryptionAlgorithm_TRIPLE_DES = @"TRIPLE_DES";
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
        DPD Timeout.
    */
    CPNumber _DPDTimeout @accessors(property=DPDTimeout);
    /*!
        IPsec Authentication Algorithm.
    */
    CPString _IPsecAuthenticationAlgorithm @accessors(property=IPsecAuthenticationAlgorithm);
    /*!
        IPsec Don't Fragment
    */
    BOOL _IPsecDontFragment @accessors(property=IPsecDontFragment);
    /*!
        IPsec Enable PFS
    */
    BOOL _IPsecEnablePFS @accessors(property=IPsecEnablePFS);
    /*!
        IPsec Encryption Algorithm.
    */
    CPString _IPsecEncryptionAlgorithm @accessors(property=IPsecEncryptionAlgorithm);
    /*!
        IPsec PreFragment
    */
    BOOL _IPsecPreFragment @accessors(property=IPsecPreFragment);
    /*!
        IPsec SA Lifetime in Seconds.
    */
    CPNumber _IPsecSALifetime @accessors(property=IPsecSALifetime);
    /*!
        IPsec Replay Window Size in Packets.
    */
    CPString _IPsecSAReplayWindowSize @accessors(property=IPsecSAReplayWindowSize);
    /*!
        IPsec Replay Window Size in Packets.
    */
    CPNumber _IPsecSAReplayWindowSizeValue @accessors(property=IPsecSAReplayWindowSizeValue);
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
        Name of the Encryption Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        None
    */
    CPNumber _sequence @accessors(property=sequence);
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
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"DPDTimeout"];
        [self exposeLocalKeyPathToREST:@"IPsecAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"IPsecDontFragment"];
        [self exposeLocalKeyPathToREST:@"IPsecEnablePFS"];
        [self exposeLocalKeyPathToREST:@"IPsecEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"IPsecPreFragment"];
        [self exposeLocalKeyPathToREST:@"IPsecSALifetime"];
        [self exposeLocalKeyPathToREST:@"IPsecSAReplayWindowSize"];
        [self exposeLocalKeyPathToREST:@"IPsecSAReplayWindowSizeValue"];
        [self exposeLocalKeyPathToREST:@"ISAKMPAuthenticationMode"];
        [self exposeLocalKeyPathToREST:@"ISAKMPDiffieHelmanGroupIdentifier"];
        [self exposeLocalKeyPathToREST:@"ISAKMPEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"ISAKMPEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"ISAKMPHashAlgorithm"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"sequence"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end