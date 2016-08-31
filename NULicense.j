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
@import "Fetchers/NUEventLogsFetcher.j"

NULicenseEntityScope_ENTERPRISE = @"ENTERPRISE";
NULicenseEntityScope_GLOBAL = @"GLOBAL";
NULicenseLicenseEncryption_ENCRYPTION_DISABLED = @"ENCRYPTION_DISABLED";
NULicenseLicenseEncryption_ENCRYPTION_ENABLED = @"ENCRYPTION_ENABLED";
NULicenseLicenseType_CLUSTERED = @"CLUSTERED";
NULicenseLicenseType_STANDARD = @"STANDARD";


/*!
    Enables retrieval/modification and creation of license files. Most of the attributes are retrieved from the encrypted license. The create API simply provides the encrypted license that is in base64 format.
*/
@implementation NULicense : NURESTObject
{
    /*!
        Major software release associated with this license
    */
    CPNumber _majorRelease @accessors(property=majorRelease);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Indicates additional versions supported by the license.
    */
    CPString _additionalSupportedVersions @accessors(property=additionalSupportedVersions);
    /*!
        Phone number of the owner associated with the license file
    */
    CPString _phone @accessors(property=phone);
    /*!
        Base 64 value of the license
    */
    CPString _license @accessors(property=license);
    /*!
        License encryption
    */
    CPString _licenseEncryption @accessors(property=licenseEncryption);
    /*!
        Indicates non enforceable entities associated with the license. 
    */
    CPString _licenseEntities @accessors(property=licenseEntities);
    /*!
        Unique identifier of the license file
    */
    CPNumber _licenseID @accessors(property=licenseID);
    /*!
        None
    */
    CPString _licenseType @accessors(property=licenseType);
    /*!
        Minor software release for which this license has been issued
    */
    CPNumber _minorRelease @accessors(property=minorRelease);
    /*!
        Zipcode of the owner associated with the license file
    */
    CPString _zip @accessors(property=zip);
    /*!
        City of the owner associated with the license file
    */
    CPString _city @accessors(property=city);
    /*!
        Maximum number of CPEs enabled with this license. A value of -1 indicates an unlimited number of CPEs
    */
    CPNumber _allowedCPEsCount @accessors(property=allowedCPEsCount);
    /*!
        Maximum number of NICs allowed. A value of -1 indicates unlimited number of NICs
    */
    CPNumber _allowedNICsCount @accessors(property=allowedNICsCount);
    /*!
        Maximum number of VMs enabled with this license. A value of -1 indicates an unlimited number of VMs
    */
    CPNumber _allowedVMsCount @accessors(property=allowedVMsCount);
    /*!
        Maximum number of VRSGs enabled with this license. A value of -1 indicates an unlimited number of VRSGs
    */
    CPNumber _allowedVRSGsCount @accessors(property=allowedVRSGsCount);
    /*!
        Maximum number of VRSs enabled with this license. A value of -1 indicates an unlimited number of VRSs
    */
    CPNumber _allowedVRSsCount @accessors(property=allowedVRSsCount);
    /*!
        Email of the owner associated with the license file
    */
    CPString _email @accessors(property=email);
    /*!
        Indicates if the system is associated with a license that allows encryption or not
    */
    BOOL _encryptionMode @accessors(property=encryptionMode);
    /*!
        Indicates combined string of first 16 and last 16 characters of the license string to be shown in the API
    */
    CPString _uniqueLicenseIdentifier @accessors(property=uniqueLicenseIdentifier);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Company of the owner associated with the license file
    */
    CPString _company @accessors(property=company);
    /*!
        Country of the owner associated with the license file
    */
    CPString _country @accessors(property=country);
    /*!
        Version of the product that this license applies to
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        Provider of the license file
    */
    CPString _provider @accessors(property=provider);
    /*!
        Indicates if the license is associated with standlone or cluster setup of VSD
    */
    BOOL _isClusterLicense @accessors(property=isClusterLicense);
    /*!
        The name of the user associated with the license
    */
    CPString _userName @accessors(property=userName);
    /*!
        State of the owner associated with the license file
    */
    CPString _state @accessors(property=state);
    /*!
        Address of the owner associated with the license file
    */
    CPString _street @accessors(property=street);
    /*!
        Customer key associated with the licese
    */
    CPString _customerKey @accessors(property=customerKey);
    /*!
        Expiration date of this license
    */
    CPNumber _expirationDate @accessors(property=expirationDate);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"license";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"majorRelease"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"additionalSupportedVersions"];
        [self exposeLocalKeyPathToREST:@"phone"];
        [self exposeLocalKeyPathToREST:@"license"];
        [self exposeLocalKeyPathToREST:@"licenseEncryption"];
        [self exposeLocalKeyPathToREST:@"licenseEntities"];
        [self exposeLocalKeyPathToREST:@"licenseID"];
        [self exposeLocalKeyPathToREST:@"licenseType"];
        [self exposeLocalKeyPathToREST:@"minorRelease"];
        [self exposeLocalKeyPathToREST:@"zip"];
        [self exposeLocalKeyPathToREST:@"city"];
        [self exposeLocalKeyPathToREST:@"allowedCPEsCount"];
        [self exposeLocalKeyPathToREST:@"allowedNICsCount"];
        [self exposeLocalKeyPathToREST:@"allowedVMsCount"];
        [self exposeLocalKeyPathToREST:@"allowedVRSGsCount"];
        [self exposeLocalKeyPathToREST:@"allowedVRSsCount"];
        [self exposeLocalKeyPathToREST:@"email"];
        [self exposeLocalKeyPathToREST:@"encryptionMode"];
        [self exposeLocalKeyPathToREST:@"uniqueLicenseIdentifier"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"company"];
        [self exposeLocalKeyPathToREST:@"country"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"provider"];
        [self exposeLocalKeyPathToREST:@"isClusterLicense"];
        [self exposeLocalKeyPathToREST:@"userName"];
        [self exposeLocalKeyPathToREST:@"state"];
        [self exposeLocalKeyPathToREST:@"street"];
        [self exposeLocalKeyPathToREST:@"customerKey"];
        [self exposeLocalKeyPathToREST:@"expirationDate"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end