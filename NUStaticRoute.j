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

@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUStaticRouteEntityScope_ENTERPRISE = @"ENTERPRISE";
NUStaticRouteEntityScope_GLOBAL = @"GLOBAL";
NUStaticRouteIPType_IPV4 = @"IPV4";
NUStaticRouteIPType_IPV6 = @"IPV6";
NUStaticRouteType_EXIT_DOMAIN = @"EXIT_DOMAIN";
NUStaticRouteType_NETCONF = @"NETCONF";
NUStaticRouteType_OVERLAY = @"OVERLAY";
NUStaticRouteType_OVERLAY_ADDRESS_TRANSLATION = @"OVERLAY_ADDRESS_TRANSLATION";


/*!
    Static routes allow end users to define how traffic is routed through the dVRS in addition to the routes learned by VSC through VM activation. By using static routes, end users can define for example that all traffic with a destination address towards a specific subnet must be forwarded to a specific VM attached in the dVRS and this VM could be a firewall
*/
@implementation NUStaticRoute : NURESTObject
{
    /*!
        Enable or disable Bidirectional Forwarding Detection for this static route
    */
    BOOL _BFDEnabled @accessors(property=BFDEnabled);
    /*!
        IPv4 or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPv6 address of the route
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        IP address of the route
    */
    CPString _address @accessors(property=address);
    /*!
        Netmask associated with the route
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        IP address of the next hop. This must be a VM attached to the dVRS
    */
    CPString _nextHopIp @accessors(property=nextHopIp);
    /*!
        Indicates if this is a black hole static route. Applicable only when the static route type is 'NETCONF'.
    */
    BOOL _blackHoleEnabled @accessors(property=blackHoleEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Route distinguisher associated with the nexthop. System generates this identifier automatically
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        List of associated gateway IDs for static route, returned as a JSON list of strings
    */
    CPArrayController _associatedGatewayIDs @accessors(property=associatedGatewayIDs);
    /*!
        UUID of Do Not Advertise Subnet
    */
    CPString _associatedSubnetID @accessors(property=associatedSubnetID);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type flag for static-route provisioning for exit-domain (break-to-underlay) prefixes.
    */
    CPString _type @accessors(property=type);
    
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"staticroute";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"BFDEnabled"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"nextHopIp"];
        [self exposeLocalKeyPathToREST:@"blackHoleEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayIDs"];
        [self exposeLocalKeyPathToREST:@"associatedSubnetID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end