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

@import "Fetchers/NUNATMapEntriesFetcher.j"
@import "Fetchers/NUAddressMapsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUBulkStatisticsFetcher.j"

NUPATNATPoolAssociatedGatewayType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUPATNATPoolAssociatedGatewayType_GATEWAY = @"GATEWAY";
NUPATNATPoolAssociatedGatewayType_IKE_GATEWAY = @"IKE_GATEWAY";
NUPATNATPoolAssociatedGatewayType_NSGATEWAY = @"NSGATEWAY";
NUPATNATPoolEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPATNATPoolEntityScope_GLOBAL = @"GLOBAL";
NUPATNATPoolPermittedAction_ALL = @"ALL";
NUPATNATPoolPermittedAction_DEPLOY = @"DEPLOY";
NUPATNATPoolPermittedAction_EXTEND = @"EXTEND";
NUPATNATPoolPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUPATNATPoolPermittedAction_READ = @"READ";
NUPATNATPoolPermittedAction_USE = @"USE";


/*!
    Represents a PAT NAT Pool object.
*/
@implementation NUPATNATPool : NURESTObject
{
    /*!
        Name of the PATNATPool
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Default PAT IP Address, must belong to the pool above
    */
    CPString _addressRange @accessors(property=addressRange);
    /*!
        Default PAT IP Address, must belong to the pool above
    */
    CPString _defaultPATIP @accessors(property=defaultPATIP);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the PATNATPool
    */
    CPString _description @accessors(property=description);
    /*!
        Ending IP Address for the pool of available addresses for use
    */
    CPString _endAddressRange @accessors(property=endAddressRange);
    /*!
        Ending Source IP Address for the pool. (Dynamic Source NAT)
    */
    CPString _endSourceAddress @accessors(property=endSourceAddress);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        UUID of the NSG instance this Pool is assocated with. This attribute may be auto-populated when the pool is assigned to a Network VLAN instance.
    */
    CPString _associatedGatewayId @accessors(property=associatedGatewayId);
    /*!
        None
    */
    CPString _associatedGatewayType @accessors(property=associatedGatewayType);
    /*!
        ID of the Subnet for which the information will be used to populate Source Address Range (Dynamic Source NAT).
    */
    CPString _associatedSubnetId @accessors(property=associatedSubnetId);
    /*!
        ID of the network port VLAN on which the pool is associated.
    */
    CPString _associatedVlanId @accessors(property=associatedVlanId);
    /*!
        Starting IP Address for the pool of available addresses for use
    */
    CPString _startAddressRange @accessors(property=startAddressRange);
    /*!
        Starting Source IP Address for the pool. (Dynamic Source NAT)
    */
    CPString _startSourceAddress @accessors(property=startSourceAddress);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Set to True if the address translation pool at the address translation pool definition level
    */
    BOOL _dynamicSourceEnabled @accessors(property=dynamicSourceEnabled);
    
    NUNATMapEntriesFetcher _childrenNATMapEntries @accessors(property=childrenNATMapEntries);
    NUAddressMapsFetcher _childrenAddressMaps @accessors(property=childrenAddressMaps);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUBulkStatisticsFetcher _childrenBulkStatistics @accessors(property=childrenBulkStatistics);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"patnatpool";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"addressRange"];
        [self exposeLocalKeyPathToREST:@"defaultPATIP"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"endAddressRange"];
        [self exposeLocalKeyPathToREST:@"endSourceAddress"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayId"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayType"];
        [self exposeLocalKeyPathToREST:@"associatedSubnetId"];
        [self exposeLocalKeyPathToREST:@"associatedVlanId"];
        [self exposeLocalKeyPathToREST:@"startAddressRange"];
        [self exposeLocalKeyPathToREST:@"startSourceAddress"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"dynamicSourceEnabled"];
        
        _childrenNATMapEntries = [NUNATMapEntriesFetcher fetcherWithParentObject:self];
        _childrenAddressMaps = [NUAddressMapsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenBulkStatistics = [NUBulkStatisticsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end