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

NUVNFInterfaceAttachedNetworkType_L2DOMAIN = @"L2DOMAIN";
NUVNFInterfaceAttachedNetworkType_SUBNET = @"SUBNET";
NUVNFInterfaceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVNFInterfaceEntityScope_GLOBAL = @"GLOBAL";
NUVNFInterfaceType_LAN = @"LAN";
NUVNFInterfaceType_MANAGEMENT = @"MANAGEMENT";
NUVNFInterfaceType_WAN = @"WAN";


/*!
    Represent VNF interface, This can not be created directly, it will be generated from VNF Interface Descriptor when VNF instance is created.
*/
@implementation NUVNFInterface : NURESTObject
{
    /*!
        MAC address of the  interface
    */
    CPString _MAC @accessors(property=MAC);
    /*!
        UUID of the associated VNF
    */
    CPString _VNFUUID @accessors(property=VNFUUID);
    /*!
        IP address of the interface
    */
    CPString _IPAddress @accessors(property=IPAddress);
    /*!
        ID of the vport that the interface is attached to
    */
    CPString _VPortID @accessors(property=VPortID);
    /*!
        Name of the vport that the interface is attached to
    */
    CPString _VPortName @accessors(property=VPortName);
    /*!
        IPv6 address of the  interface
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        IPV6 Gateway of the subnet that the VNF is connected to.
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        Device name associated with this interface
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Gateway of the subnet that the interface is connected to
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        Netmask of the subnet that the interface is attached to
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Name of the network that the interface is attached to
    */
    CPString _networkName @accessors(property=networkName);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The policy decision ID for this particular interface
    */
    CPString _policyDecisionID @accessors(property=policyDecisionID);
    /*!
        ID of the domain that the interface is attached to
    */
    CPString _domainID @accessors(property=domainID);
    /*!
        Name of the domain that the interface is attached to
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        ID of the zone that the interface is attached to
    */
    CPString _zoneID @accessors(property=zoneID);
    /*!
        Name of the zone that the VM is attached to
    */
    CPString _zoneName @accessors(property=zoneName);
    /*!
        ID of the Subnet that the interface is attached to
    */
    CPString _attachedNetworkID @accessors(property=attachedNetworkID);
    /*!
        network type that the interface is attached to
    */
    CPString _attachedNetworkType @accessors(property=attachedNetworkType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of VNF interface
    */
    CPString _type @accessors(property=type);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vnfinterface";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MAC"];
        [self exposeLocalKeyPathToREST:@"VNFUUID"];
        [self exposeLocalKeyPathToREST:@"IPAddress"];
        [self exposeLocalKeyPathToREST:@"VPortID"];
        [self exposeLocalKeyPathToREST:@"VPortName"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"networkName"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyDecisionID"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"zoneID"];
        [self exposeLocalKeyPathToREST:@"zoneName"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkID"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end