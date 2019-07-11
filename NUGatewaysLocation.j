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

NUGatewaysLocationEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGatewaysLocationEntityScope_GLOBAL = @"GLOBAL";


/*!
    Gateway location details
*/
@implementation NUGatewaysLocation : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Latitude in decimal format.
    */
    CPNumber _latitude @accessors(property=latitude);
    /*!
        Formatted address including property number, street name, suite or office number, ...
    */
    CPString _address @accessors(property=address);
    /*!
        Request BSS to perform a geocode on the address - If no value passed, 'ignoreGeocode' will be set to true.
    */
    BOOL _ignoreGeocode @accessors(property=ignoreGeocode);
    /*!
        Time zone in which the Gateway is located.    This can be in the form of a UTC/GMT offset, continent/city location, or country/region.    The available time zones can be found in /usr/share/zoneinfo on a Linux machine or retrieved with TimeZone.getAvailableIDs() in Java.    Refer to the IANA (Internet Assigned Numbers Authority) for a list of time zones.    URL :    http://www.iana.org/time-zones    Default value is UTC (translating to Etc/Zulu)
    */
    CPString _timeZoneID @accessors(property=timeZoneID);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Locality, City, or County information about where the gateway is installed.
    */
    CPString _locality @accessors(property=locality);
    /*!
        Longitude in decimal format.
    */
    CPNumber _longitude @accessors(property=longitude);
    /*!
        Country in which the gateway is instantiated (VM) or installed (Physical).
    */
    CPString _country @accessors(property=country);
    /*!
        The name of the Entity to which a Location instance is tied to.
    */
    CPString _associatedEntityName @accessors(property=associatedEntityName);
    /*!
        Type of the gateway entity to which the Location instance is attached.
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        State, Province, or Region to which the locality in which the gateway is installed belongs.
    */
    CPString _state @accessors(property=state);
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
    return @"gatewayslocation";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"latitude"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"ignoreGeocode"];
        [self exposeLocalKeyPathToREST:@"timeZoneID"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locality"];
        [self exposeLocalKeyPathToREST:@"longitude"];
        [self exposeLocalKeyPathToREST:@"country"];
        [self exposeLocalKeyPathToREST:@"associatedEntityName"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"state"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end