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
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUSubnetTemplatesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUZoneTemplateDPI_DISABLED = @"DISABLED";
NUZoneTemplateDPI_ENABLED = @"ENABLED";
NUZoneTemplateDPI_INHERITED = @"INHERITED";
NUZoneTemplateEncryption_DISABLED = @"DISABLED";
NUZoneTemplateEncryption_ENABLED = @"ENABLED";
NUZoneTemplateEncryption_INHERITED = @"INHERITED";
NUZoneTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUZoneTemplateEntityScope_GLOBAL = @"GLOBAL";
NUZoneTemplateIPType_IPV4 = @"IPV4";
NUZoneTemplateIPType_IPV6 = @"IPV6";
NUZoneTemplateMulticast_DISABLED = @"DISABLED";
NUZoneTemplateMulticast_ENABLED = @"ENABLED";
NUZoneTemplateMulticast_INHERITED = @"INHERITED";


/*!
    As in domains and subnets, zones are derived from templates. This object provides the definition of the template.
*/
@implementation NUZoneTemplate : NURESTObject
{
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4 or IPv6(only IPv4 is supported in R1.0) Possible values are IPV4, IPV6, .
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPv6 address range of the zone. This is an optional field that allows users to allocate an address range to a zone. The VSD will auto-assign IP ranges to subnets from this range if an IP range is not defined for a subnet.
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        Name of the current entity(Zone or zone template or subnet etc..) Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        IPv4 address range of the zone. This is an optional field that allows users to allocate an address range to a zone. The VSD will auto-assign IP ranges to subnets from this range if an IP range is not defined for a subnet.
    */
    CPString _address @accessors(property=address);
    /*!
        A description of the Zone template
    */
    CPString _description @accessors(property=description);
    /*!
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Determines whether or not IPSEC is enabled.
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        The ID of the Multi Cast Channel Map  this zone/zone template is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        Identifies if the zone is a public zone, in which case any subnets associated with this zone are actually connected to the public subnet of the data center
    */
    BOOL _publicZone @accessors(property=publicZone);
    /*!
        Indicates multicast policy on zone template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Number of hosts in the subnets where IP addresses are automatically assigned from the zone IP pool
    */
    CPNumber _numberOfHostsInSubnets @accessors(property=numberOfHostsInSubnets);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Turn on or off dynamic allocation of IPV6 address
    */
    BOOL _dynamicIpv6Address @accessors(property=dynamicIpv6Address);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUSubnetTemplatesFetcher _childrenSubnetTemplates @accessors(property=childrenSubnetTemplates);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"zonetemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"publicZone"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"numberOfHostsInSubnets"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"dynamicIpv6Address"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenSubnetTemplates = [NUSubnetTemplatesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _multicast = @"INHERITED";
        
    }

    return self;
}

@end