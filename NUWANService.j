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
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUWANServiceConfigType_DYNAMIC = @"DYNAMIC";
NUWANServiceConfigType_STATIC = @"STATIC";
NUWANServiceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUWANServiceEntityScope_GLOBAL = @"GLOBAL";
NUWANServicePermittedAction_ALL = @"ALL";
NUWANServicePermittedAction_DEPLOY = @"DEPLOY";
NUWANServicePermittedAction_EXTEND = @"EXTEND";
NUWANServicePermittedAction_INSTANTIATE = @"INSTANTIATE";
NUWANServicePermittedAction_READ = @"READ";
NUWANServicePermittedAction_USE = @"USE";
NUWANServiceServiceType_L2 = @"L2";
NUWANServiceServiceType_L3 = @"L3";
NUWANServiceTunnelType_DC_DEFAULT = @"DC_DEFAULT";
NUWANServiceTunnelType_GRE = @"GRE";
NUWANServiceTunnelType_VXLAN = @"VXLAN";


/*!
    Represents a WAN Service Object.
*/
@implementation NUWANService : NURESTObject
{
    /*!
        Identifier of the WAN Service
    */
    CPString _WANServiceIdentifier @accessors(property=WANServiceIdentifier);
    /*!
        Determines whether Integrated Routing and Bridging is enabled on the WAN Service
    */
    BOOL _IRBEnabled @accessors(property=IRBEnabled);
    /*!
        Name of the WAN Service
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
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Name of 7X50 Policy associated with the service
    */
    CPString _servicePolicy @accessors(property=servicePolicy);
    /*!
        Type of the service.
    */
    CPString _serviceType @accessors(property=serviceType);
    /*!
        A description of the WAN Service
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        VNID of the BackHaul Subnet of L3Domain /L2Domain to which this WANService is associated
    */
    CPNumber _vnId @accessors(property=vnId);
    /*!
        The associated enterprise name.
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The associated domain name.
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        Type of the CONFIG.
    */
    CPString _configType @accessors(property=configType);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Indicates if this WAN Service is orphan or not.
    */
    BOOL _orphan @accessors(property=orphan);
    /*!
        Determines whether to use user mnemonic of the WAN Service
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        user mnemonic of the WAN Service
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    /*!
        ID of the entity to which the WAN Service is attached to. This could be ID DOMAIN/L2DOMAIN
    */
    CPString _associatedDomainID @accessors(property=associatedDomainID);
    /*!
        The associated vpn connect ID.
    */
    CPString _associatedVPNConnectID @accessors(property=associatedVPNConnectID);
    /*!
        Type of the tunnel.
    */
    CPString _tunnelType @accessors(property=tunnelType);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Route target associated with the WAN. It is an optional parameterthat can be provided by the user
    */
    CPString _externalRouteTarget @accessors(property=externalRouteTarget);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"service";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"WANServiceIdentifier"];
        [self exposeLocalKeyPathToREST:@"IRBEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"servicePolicy"];
        [self exposeLocalKeyPathToREST:@"serviceType"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"configType"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"orphan"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedDomainID"];
        [self exposeLocalKeyPathToREST:@"associatedVPNConnectID"];
        [self exposeLocalKeyPathToREST:@"tunnelType"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"externalRouteTarget"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _configType = @"STATIC";
        _serviceType = @"L3";
        
    }

    return self;
}

@end