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

NULicenseStatusEntityScope_ENTERPRISE = @"ENTERPRISE";
NULicenseStatusEntityScope_GLOBAL = @"GLOBAL";


/*!
    None
*/
@implementation NULicenseStatus : NURESTObject
{
    /*!
        Whether the various VRS license flavours be merged in one pool
    */
    BOOL _accumulateLicensesEnabled @accessors(property=accumulateLicensesEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Indicates total AVRSG count for all the licenses in the system
    */
    CPNumber _totalLicensedAVRSGsCount @accessors(property=totalLicensedAVRSGsCount);
    /*!
        Indicates total AVRS count for all the licenses in the system
    */
    CPNumber _totalLicensedAVRSsCount @accessors(property=totalLicensedAVRSsCount);
    /*!
         Indicates total VRS+VRSG+VRSB licenses licensed in the system
    */
    CPNumber _totalLicensedGatewaysCount @accessors(property=totalLicensedGatewaysCount);
    /*!
        Indicates total NIC count for all the licenses in the system
    */
    CPNumber _totalLicensedNICsCount @accessors(property=totalLicensedNICsCount);
    /*!
        Indicates total NSG count for all the licenses in the system
    */
    CPNumber _totalLicensedNSGsCount @accessors(property=totalLicensedNSGsCount);
    /*!
        Indicates total used AVRSG count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedAVRSGsCount @accessors(property=totalLicensedUsedAVRSGsCount);
    /*!
        Indicates total used AVRS count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedAVRSsCount @accessors(property=totalLicensedUsedAVRSsCount);
    /*!
        Indicates total used NIC count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedNICsCount @accessors(property=totalLicensedUsedNICsCount);
    /*!
        Indicates total used NSG count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedNSGsCount @accessors(property=totalLicensedUsedNSGsCount);
    /*!
        Indicates total used VDFG count for all the licenses in the system.
    */
    CPNumber _totalLicensedUsedVDFGsCount @accessors(property=totalLicensedUsedVDFGsCount);
    /*!
        Indicates total used VDF count for all the licenses in the system.
    */
    CPNumber _totalLicensedUsedVDFsCount @accessors(property=totalLicensedUsedVDFsCount);
    /*!
        Indicates total used VM count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedVMsCount @accessors(property=totalLicensedUsedVMsCount);
    /*!
        Indicates total used VRSG count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedVRSGsCount @accessors(property=totalLicensedUsedVRSGsCount);
    /*!
        Indicates total used VRS count for all the licenses in the system
    */
    CPNumber _totalLicensedUsedVRSsCount @accessors(property=totalLicensedUsedVRSsCount);
    /*!
        Indicates total VDFG count for all the licenses in the system
    */
    CPNumber _totalLicensedVDFGsCount @accessors(property=totalLicensedVDFGsCount);
    /*!
        Indicates total VDF count for all the licenses in the system
    */
    CPNumber _totalLicensedVDFsCount @accessors(property=totalLicensedVDFsCount);
    /*!
        Indicates total VM count for all the licenses in the system
    */
    CPNumber _totalLicensedVMsCount @accessors(property=totalLicensedVMsCount);
    /*!
        Indicates total VRSG count for all the licenses in the system
    */
    CPNumber _totalLicensedVRSGsCount @accessors(property=totalLicensedVRSGsCount);
    /*!
        Indicates total VRS count for all the licenses in the system
    */
    CPNumber _totalLicensedVRSsCount @accessors(property=totalLicensedVRSsCount);
    /*!
        Indicates total VRS+VRSG+VRSB+VDF+VDFG licenses used in the system
    */
    CPNumber _totalUsedGatewaysCount @accessors(property=totalUsedGatewaysCount);
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
    return @"licensestatus";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"accumulateLicensesEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"totalLicensedAVRSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedAVRSsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedGatewaysCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedNICsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedNSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedAVRSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedAVRSsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedNICsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedNSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedVDFGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedVDFsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedVMsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedVRSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedUsedVRSsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedVDFGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedVDFsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedVMsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedVRSGsCount"];
        [self exposeLocalKeyPathToREST:@"totalLicensedVRSsCount"];
        [self exposeLocalKeyPathToREST:@"totalUsedGatewaysCount"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end