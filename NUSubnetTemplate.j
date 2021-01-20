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

@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUSubnetTemplateDPI_DISABLED = @"DISABLED";
NUSubnetTemplateDPI_ENABLED = @"ENABLED";
NUSubnetTemplateDPI_INHERITED = @"INHERITED";
NUSubnetTemplateEncryption_DISABLED = @"DISABLED";
NUSubnetTemplateEncryption_ENABLED = @"ENABLED";
NUSubnetTemplateEncryption_INHERITED = @"INHERITED";
NUSubnetTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSubnetTemplateEntityScope_GLOBAL = @"GLOBAL";
NUSubnetTemplateIPType_DUALSTACK = @"DUALSTACK";
NUSubnetTemplateIPType_IPV4 = @"IPV4";
NUSubnetTemplateIPType_IPV6 = @"IPV6";
NUSubnetTemplateMulticast_DISABLED = @"DISABLED";
NUSubnetTemplateMulticast_ENABLED = @"ENABLED";
NUSubnetTemplateMulticast_INHERITED = @"INHERITED";
NUSubnetTemplateUseGlobalMAC_DISABLED = @"DISABLED";
NUSubnetTemplateUseGlobalMAC_ENABLED = @"ENABLED";
NUSubnetTemplateUseGlobalMAC_ENTERPRISE_DEFAULT = @"ENTERPRISE_DEFAULT";


/*!
    As domain and zone objects, subnet objects are created in VSD as derived by templates. This object describes the subnet template.
*/
@implementation NUSubnetTemplate : NURESTObject
{
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4, DUALSTACK or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPv6 range of the subnet. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        The IPv6 address of the gateway of this subnet
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        Name of the current entity(Zone or zone template or subnet etc..) Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The IP address of the gateway of this subnet
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        A description field provided by the user that identifies the subnet
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
        Determines whether or not IPSEC is enabled. Possible values are INHERITED, ENABLED, DISABLED, .
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Block subnet routes
    */
    BOOL _splitSubnet @accessors(property=splitSubnet);
    /*!
         When set, VRS will act as  ARP Proxy
    */
    BOOL _proxyARP @accessors(property=proxyARP);
    /*!
        if this flag is enabled, the system configured globalMACAddress will be used as the gateway mac address
    */
    CPString _useGlobalMAC @accessors(property=useGlobalMAC);
    /*!
        The ID of the Multi Cast Channel Map  this Subnet/Subnet Template is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        This value indicates whether dynamic address allocation is enabled or not. This will be applicable when subnet template is in dual stack mode
    */
    BOOL _dualStackDynamicIPAllocation @accessors(property=dualStackDynamicIPAllocation);
    /*!
        Indicates multicast policy on Subnet/Subnet Template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"subnettemplate";
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
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"splitSubnet"];
        [self exposeLocalKeyPathToREST:@"proxyARP"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"dualStackDynamicIPAllocation"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _multicast = @"INHERITED";
        _IPType = @"IPV4";
        
    }

    return self;
}

@end