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

NUDomainKindSummaryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDomainKindSummaryEntityScope_GLOBAL = @"GLOBAL";


/*!
    Represents a readonly domain summary object - various attributes of this object are gathered from Domain, Zones, SubNetwork, NSGInfo objects
*/
@implementation NUDomainKindSummary : NURESTObject
{
    /*!
        Total count of alarms at MAJOR severity
    */
    CPNumber _majorAlarmsCount @accessors(property=majorAlarmsCount);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Total count of gateways in this domain
    */
    CPNumber _gatewayCount @accessors(property=gatewayCount);
    /*!
        Total count of mesh groups in this domain
    */
    CPNumber _meshGroupCount @accessors(property=meshGroupCount);
    /*!
        Total count of alarms with MINOR severity
    */
    CPNumber _minorAlarmsCount @accessors(property=minorAlarmsCount);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Total count of alarms with INFO severity
    */
    CPNumber _infoAlarmsCount @accessors(property=infoAlarmsCount);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        A description string of the domain that is provided by the user
    */
    CPString _domainKindDescription @accessors(property=domainKindDescription);
    /*!
        The name of the domain. Valid characters are  alphabets, numbers, space and hyphen( - ).
    */
    CPString _domainKindName @accessors(property=domainKindName);
    /*!
        Total count of zones in this domain
    */
    CPNumber _zoneCount @accessors(property=zoneCount);
    /*!
        Traffic volume within the domain in GB indicating whether the network is running ZERO, light, medium or heavy traffic based on last 24 hours traffic stats
    */
    CPNumber _trafficVolume @accessors(property=trafficVolume);
    /*!
        Total count of alarms with CRITICAL severity
    */
    CPNumber _criticalAlarmsCount @accessors(property=criticalAlarmsCount);
    /*!
        Total count of nsg in this domain
    */
    CPNumber _nsgCount @accessors(property=nsgCount);
    /*!
        Total count of sub networks in this domain
    */
    CPNumber _subNetworkCount @accessors(property=subNetworkCount);
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
    return @"domainkindsummary";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"majorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayCount"];
        [self exposeLocalKeyPathToREST:@"meshGroupCount"];
        [self exposeLocalKeyPathToREST:@"minorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"infoAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainKindDescription"];
        [self exposeLocalKeyPathToREST:@"domainKindName"];
        [self exposeLocalKeyPathToREST:@"zoneCount"];
        [self exposeLocalKeyPathToREST:@"trafficVolume"];
        [self exposeLocalKeyPathToREST:@"criticalAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"nsgCount"];
        [self exposeLocalKeyPathToREST:@"subNetworkCount"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end