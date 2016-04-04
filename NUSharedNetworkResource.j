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
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUVPNConnectionsFetcher.j"

NUSharedNetworkResourceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSharedNetworkResourceEntityScope_GLOBAL = @"GLOBAL";
NUSharedNetworkResourcePermittedActionType_ALL = @"ALL";
NUSharedNetworkResourcePermittedActionType_DEPLOY = @"DEPLOY";
NUSharedNetworkResourcePermittedActionType_EXTEND = @"EXTEND";
NUSharedNetworkResourcePermittedActionType_INSTANTIATE = @"INSTANTIATE";
NUSharedNetworkResourcePermittedActionType_READ = @"READ";
NUSharedNetworkResourcePermittedActionType_USE = @"USE";
NUSharedNetworkResourceType_FLOATING = @"FLOATING";
NUSharedNetworkResourceType_L2DOMAIN = @"L2DOMAIN";
NUSharedNetworkResourceType_PUBLIC = @"PUBLIC";
NUSharedNetworkResourceType_UPLINK_SUBNET = @"UPLINK_SUBNET";


/*!
    This defines shared infrastructure resources that are created by user with CSPROOT role. These resources can be used by all the enterprises in the data center for various purposes. Examples of  shared resources are public subnet, floating subnet, public L2 domain, etc.
*/
@implementation NUSharedNetworkResource : NURESTObject
{
    /*!
        true if DHCP is enabled else it is false. This value is always true for network resource of type PUBLIC or FLOATING.
    */
    BOOL _DHCPManaged @accessors(property=DHCPManaged);
    /*!
        Domain specific Equal-cost multi-path routing count, ECMPCount = 1 means no ECMP
    */
    CPNumber _ECMPCount @accessors(property=ECMPCount);
    /*!
        Boolean indicates that this shared network resource is avaiable to everyone by default or not
    */
    BOOL _accessRestrictionEnabled @accessors(property=accessRestrictionEnabled);
    /*!
        Address configured on the shared resource
    */
    CPString _address @accessors(property=address);
    /*!
        The ID of the PatMapper entity to which this pool is associated to.
    */
    CPString _associatedPATMapperID @accessors(property=associatedPATMapperID);
    /*!
        backHaulRouteDistinguisher of the Shared Resource
    */
    CPString _backHaulRouteDistinguisher @accessors(property=backHaulRouteDistinguisher);
    /*!
        backHaulRouteTarget of the Shared Resource
    */
    CPString _backHaulRouteTarget @accessors(property=backHaulRouteTarget);
    /*!
        backHaulVNID of the Shared Resource
    */
    CPNumber _backHaulVNID @accessors(property=backHaulVNID);
    /*!
        Description of the shared resource
    */
    CPString _description @accessors(property=description);
    /*!
        Route distinguisher configured on the shared resource
    */
    CPString _domainRouteDistinguisher @accessors(property=domainRouteDistinguisher);
    /*!
        Route target configured on the shared resource
    */
    CPString _domainRouteTarget @accessors(property=domainRouteTarget);
    /*!
        Indicates if PAT Mapping is enabled for the SharedNetworkResource or not.
    */
    BOOL _dynamicPATAllocationEnabled @accessors(property=dynamicPATAllocationEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Gatemask configured on the shared resource
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the shared resource. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        Netmask configured on the shared resource
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Permitted action on this shared network resource
    */
    CPString _permittedActionType @accessors(property=permittedActionType);
    /*!
        Parent ID of the floating IP subnet to which this FIP subnet must be attached. If empty it will be created in a new domain.
    */
    CPString _sharedResourceParentID @accessors(property=sharedResourceParentID);
    /*!
        Type of the shared resource.
    */
    CPString _type @accessors(property=type);
    /*!
        Indicates whether this shared subnet is in underlay or not.
    */
    BOOL _underlay @accessors(property=underlay);
    /*!
        VLAN ID to which this vport must be attached
    */
    CPString _uplinkGWVlanAttachmentID @accessors(property=uplinkGWVlanAttachmentID);
    /*!
        IP address of the host interface
    */
    CPString _uplinkInterfaceIP @accessors(property=uplinkInterfaceIP);
    /*!
        MAC address of the host interface
    */
    CPString _uplinkInterfaceMAC @accessors(property=uplinkInterfaceMAC);
    /*!
        Name of the uplink vport
    */
    CPString _uplinkVPortName @accessors(property=uplinkVPortName);
    /*!
        VNID of the Shared Resource
    */
    CPNumber _vnID @accessors(property=vnID);
    
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUVPNConnectionsFetcher _childrenVPNConnections @accessors(property=childrenVPNConnections);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"sharednetworkresource";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DHCPManaged"];
        [self exposeLocalKeyPathToREST:@"ECMPCount"];
        [self exposeLocalKeyPathToREST:@"accessRestrictionEnabled"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"associatedPATMapperID"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteDistinguisher"];
        [self exposeLocalKeyPathToREST:@"backHaulRouteTarget"];
        [self exposeLocalKeyPathToREST:@"backHaulVNID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"domainRouteDistinguisher"];
        [self exposeLocalKeyPathToREST:@"domainRouteTarget"];
        [self exposeLocalKeyPathToREST:@"dynamicPATAllocationEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"permittedActionType"];
        [self exposeLocalKeyPathToREST:@"sharedResourceParentID"];
        [self exposeLocalKeyPathToREST:@"type"];
        [self exposeLocalKeyPathToREST:@"underlay"];
        [self exposeLocalKeyPathToREST:@"uplinkGWVlanAttachmentID"];
        [self exposeLocalKeyPathToREST:@"uplinkInterfaceIP"];
        [self exposeLocalKeyPathToREST:@"uplinkInterfaceMAC"];
        [self exposeLocalKeyPathToREST:@"uplinkVPortName"];
        [self exposeLocalKeyPathToREST:@"vnID"];
        
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenVPNConnections = [NUVPNConnectionsFetcher fetcherWithParentObject:self];
        
        _type = @"PUBLIC";
        _DHCPManaged = YES;
        
    }

    return self;
}

@end