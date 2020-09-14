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

@import "Fetchers/NUDemarcationServicesFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUNextHopsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUPolicyStatementsFetcher.j"
@import "Fetchers/NUCSNATPoolsFetcher.j"
@import "Fetchers/NUPSNATPoolsFetcher.j"
@import "Fetchers/NUOverlayAddressPoolsFetcher.j"

NULinkAcceptanceCriteria_ALL = @"ALL";
NULinkAcceptanceCriteria_SUBNETS_ONLY = @"SUBNETS_ONLY";
NULinkAssociatedDestinationType_DOMAIN = @"DOMAIN";
NULinkEntityScope_ENTERPRISE = @"ENTERPRISE";
NULinkEntityScope_GLOBAL = @"GLOBAL";
NULinkType_BIDIR = @"BIDIR";
NULinkType_BORDER_ROUTER = @"BORDER_ROUTER";
NULinkType_HUB_AND_SPOKE = @"HUB_AND_SPOKE";
NULinkType_OVERLAY_ADDRESS_TRANSLATION = @"OVERLAY_ADDRESS_TRANSLATION";
NULinkType_SERVICE_CHAINING = @"SERVICE_CHAINING";


/*!
    Border router links provide a way to interconnect VNS domains in the wide-area to datacenter domains. Service chaining links allow domain leaking in order to simplify and enhance capabilities of doing service chaining and traffic steering for NFV and service-provider-grade VPN services.
*/
@implementation NULink : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        A route filtering criteria enum. Defaults to ALL.
    */
    CPString _acceptanceCriteria @accessors(property=acceptanceCriteria);
    /*!
        This is set to true if a link has been created in the opposite direction
    */
    BOOL _readOnly @accessors(property=readOnly);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        This is the  ID of the domain receiving the routes from the source. This can only be set for links of type OVERLAY_ADDRESS_TRANSLATION.
    */
    CPString _associatedDestinationID @accessors(property=associatedDestinationID);
    /*!
        None
    */
    CPString _associatedDestinationName @accessors(property=associatedDestinationName);
    /*!
        Type of the entity type for the source
    */
    CPString _associatedDestinationType @accessors(property=associatedDestinationType);
    /*!
        The ID of the domain receiving the routes from another domain
    */
    CPString _associatedSourceID @accessors(property=associatedSourceID);
    /*!
        None
    */
    CPString _associatedSourceName @accessors(property=associatedSourceName);
    /*!
        This is the source object type for the associatedSourceID
    */
    CPString _associatedSourceType @accessors(property=associatedSourceType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        This is used to distinguish between different type of links: hub and spoke, IP address, VNS border router links.
    */
    CPString _type @accessors(property=type);
    
    NUDemarcationServicesFetcher _childrenDemarcationServices @accessors(property=childrenDemarcationServices);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNextHopsFetcher _childrenNextHops @accessors(property=childrenNextHops);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUPolicyStatementsFetcher _childrenPolicyStatements @accessors(property=childrenPolicyStatements);
    NUCSNATPoolsFetcher _childrenCSNATPools @accessors(property=childrenCSNATPools);
    NUPSNATPoolsFetcher _childrenPSNATPools @accessors(property=childrenPSNATPools);
    NUOverlayAddressPoolsFetcher _childrenOverlayAddressPools @accessors(property=childrenOverlayAddressPools);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"link";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"acceptanceCriteria"];
        [self exposeLocalKeyPathToREST:@"readOnly"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationID"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationName"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationType"];
        [self exposeLocalKeyPathToREST:@"associatedSourceID"];
        [self exposeLocalKeyPathToREST:@"associatedSourceName"];
        [self exposeLocalKeyPathToREST:@"associatedSourceType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenDemarcationServices = [NUDemarcationServicesFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNextHops = [NUNextHopsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenPolicyStatements = [NUPolicyStatementsFetcher fetcherWithParentObject:self];
        _childrenCSNATPools = [NUCSNATPoolsFetcher fetcherWithParentObject:self];
        _childrenPSNATPools = [NUPSNATPoolsFetcher fetcherWithParentObject:self];
        _childrenOverlayAddressPools = [NUOverlayAddressPoolsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end