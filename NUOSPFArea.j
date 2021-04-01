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
@import "Fetchers/NUOSPFInterfacesFetcher.j"

NUOSPFAreaAreaType_NORMAL = @"NORMAL";
NUOSPFAreaAreaType_NSSA = @"NSSA";
NUOSPFAreaAreaType_STUB = @"STUB";
NUOSPFAreaDefaultOriginateOption_NONE = @"NONE";
NUOSPFAreaDefaultOriginateOption_TYPE3 = @"TYPE3";
NUOSPFAreaDefaultOriginateOption_TYPE7 = @"TYPE7";
NUOSPFAreaEntityScope_ENTERPRISE = @"ENTERPRISE";
NUOSPFAreaEntityScope_GLOBAL = @"GLOBAL";


/*!
    OSPF relies on the concept of logical areas. The use of areas enables the hiding of topology information between areas whilst still providing reachability. Each router in the area shares the same routing tables, which simplifies the network topology and helps to optimize the route calculation algorithm. 
*/
@implementation NUOSPFArea : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        This flag will determine whether external routes will be redistributed into the area or not. This is enabled only for NSSA areas.
    */
    BOOL _redistributeExternalEnabled @accessors(property=redistributeExternalEnabled);
    /*!
        Explicit route cost metric for the default route generated. For STUB areas, it defaults to 1. It is null for the other types of areas.
    */
    CPNumber _defaultMetric @accessors(property=defaultMetric);
    /*!
        Specifies whether an NSSA area generates a default route, and if it does, whether it is advertised as type 3 LSA or type 7 LSA. If the attribute is set to 'NONE', no default is generated.
    */
    CPString _defaultOriginateOption @accessors(property=defaultOriginateOption);
    /*!
        Description of OSPFArea
    */
    CPString _description @accessors(property=description);
    /*!
        Routes (type 3 LSAs) that belong to networks listed here will be aggregated.
    */
    CPArrayController _aggregateAreaRange @accessors(property=aggregateAreaRange);
    /*!
        Routes (type 7 LSAs) that belong to networks listed here will be aggregated.
    */
    CPArrayController _aggregateAreaRangeNSSA @accessors(property=aggregateAreaRangeNSSA);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        OSPF Area ID
    */
    CPNumber _areaID @accessors(property=areaID);
    /*!
        Set the OSPF area type. The default value is 'NORMAL', which represents either a backbone area or a standard area. If the areaID is 0, this attribute must be set to 'NORMAL'.
    */
    CPString _areaType @accessors(property=areaType);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        This flag determines whether Summaries (Type 3 LSAs) will be redistributed into the area or not. Applicable only to NSSA and Stub area types. Disabling this will make the area a Totally Stub or Totally NSSA area.
    */
    BOOL _summariesEnabled @accessors(property=summariesEnabled);
    /*!
        Routes (type 3 LSAs) that belong to networks listed here will be suppressed.
    */
    CPArrayController _suppressAreaRange @accessors(property=suppressAreaRange);
    /*!
        Routes (type 7 LSAs) that belong to networks listed here will be suppressed.
    */
    CPArrayController _suppressAreaRangeNSSA @accessors(property=suppressAreaRangeNSSA);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUOSPFInterfacesFetcher _childrenOSPFInterfaces @accessors(property=childrenOSPFInterfaces);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ospfarea";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"redistributeExternalEnabled"];
        [self exposeLocalKeyPathToREST:@"defaultMetric"];
        [self exposeLocalKeyPathToREST:@"defaultOriginateOption"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"aggregateAreaRange"];
        [self exposeLocalKeyPathToREST:@"aggregateAreaRangeNSSA"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"areaID"];
        [self exposeLocalKeyPathToREST:@"areaType"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"summariesEnabled"];
        [self exposeLocalKeyPathToREST:@"suppressAreaRange"];
        [self exposeLocalKeyPathToREST:@"suppressAreaRangeNSSA"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenOSPFInterfaces = [NUOSPFInterfacesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end