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
@import "Fetchers/NUBFDSessionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUCustomPropertiesFetcher.j"

NUUplinkConnectionAddressFamily_IPV4 = @"IPV4";
NUUplinkConnectionAddressFamily_IPV6 = @"IPV6";
NUUplinkConnectionAdvertisementCriteria_BFD = @"BFD";
NUUplinkConnectionAdvertisementCriteria_CONTROL_SESSION = @"CONTROL_SESSION";
NUUplinkConnectionAdvertisementCriteria_OPERATIONAL_LINK = @"OPERATIONAL_LINK";
NUUplinkConnectionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUUplinkConnectionEntityScope_GLOBAL = @"GLOBAL";
NUUplinkConnectionInterfaceConnectionType_AUTOMATIC = @"AUTOMATIC";
NUUplinkConnectionInterfaceConnectionType_EMBEDDED = @"EMBEDDED";
NUUplinkConnectionInterfaceConnectionType_PCI_EXPRESS = @"PCI_EXPRESS";
NUUplinkConnectionInterfaceConnectionType_USB_ETHERNET = @"USB_ETHERNET";
NUUplinkConnectionInterfaceConnectionType_USB_MODEM = @"USB_MODEM";
NUUplinkConnectionMode_ANY = @"Any";
NUUplinkConnectionMode_DYNAMIC = @"Dynamic";
NUUplinkConnectionMode_LTE = @"LTE";
NUUplinkConnectionMode_PPPOE = @"PPPoE";
NUUplinkConnectionMode_STATIC = @"Static";
NUUplinkConnectionRole_NONE = @"NONE";
NUUplinkConnectionRole_PRIMARY = @"PRIMARY";
NUUplinkConnectionRole_SECONDARY = @"SECONDARY";
NUUplinkConnectionRole_TERTIARY = @"TERTIARY";
NUUplinkConnectionRole_UNKNOWN = @"UNKNOWN";


/*!
    Configuration of VNS Gateway uplinks
*/
@implementation NUUplinkConnection : NURESTObject
{
    /*!
        Indicates whether PAT is enabled on the underlay for this uplink connection.
    */
    BOOL _PATEnabled @accessors(property=PATEnabled);
    /*!
        DNS server address.
    */
    CPString _DNSAddress @accessors(property=DNSAddress);
    /*!
        IPv6 DNS server address.
    */
    CPString _DNSAddressV6 @accessors(property=DNSAddressV6);
    /*!
        PPPoE password.
    */
    CPString _password @accessors(property=password);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        IP address of the gateway bound to the port
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        IPv6 address of the gateway bound to the port.
    */
    CPString _gatewayV6 @accessors(property=gatewayV6);
    /*!
        IP address for static configuration
    */
    CPString _address @accessors(property=address);
    /*!
        IP address family of this UplinkConnection
    */
    CPString _addressFamily @accessors(property=addressFamily);
    /*!
        IPv6 address for static configuration
    */
    CPString _addressV6 @accessors(property=addressV6);
    /*!
        Advertisement Criteria for Traffic Flow
    */
    CPString _advertisementCriteria @accessors(property=advertisementCriteria);
    /*!
        Secondary IP Address (Control IP Address) for Loopback. 
    */
    CPString _secondaryAddress @accessors(property=secondaryAddress);
    /*!
        Subnet mask of the uplink connection if mode is set to Static.
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        VLAN Id of this uplink
    */
    CPNumber _vlan @accessors(property=vlan);
    /*!
        Indicated whether route to underlay is enabled on this uplink connection.
    */
    BOOL _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Underlay Identifier of underlay associated with this uplink.
    */
    CPNumber _underlayID @accessors(property=underlayID);
    /*!
        This flag will determine if the abstract connection is inherited from the instance template
    */
    BOOL _inherited @accessors(property=inherited);
    /*!
        Boolean flag to indicate that connection parameters will be configured by the installer onsite. Limited to ConnectionMode: PPPoE
    */
    BOOL _installerManaged @accessors(property=installerManaged);
    /*!
        The way the interface is connected via the NSG.  This value depends on if the interface internal or external to the NSG.
    */
    CPString _interfaceConnectionType @accessors(property=interfaceConnectionType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Specify how to connect to the network. Possible values: Dynamic (DHCP), Static (static configuration is required), PPPoE (pppoe configuration required), LTE (LTE configuration required). Default: Dynamic
    */
    CPString _mode @accessors(property=mode);
    /*!
        To allow prioritisation of traffic, the NSG network ports must be configured with an uplink type or tag value which will be used in the identification of packets being forwarded.  That identification is at the base of the selection of which network port will serve in sending packets to the outside world.  The default value is PRIMARY. Possible values are PRIMARY, SECONDARY, TERTIARY, UNKNOWN, 
    */
    CPString _role @accessors(property=role);
    /*!
        Role order: Primary 1, Primary 2, Secondary 3. Note: Order will be calculated when all uplink connections fetched for gateway
    */
    CPNumber _roleOrder @accessors(property=roleOrder);
    /*!
        Physical port name this uplink belongs to.
    */
    CPString _portName @accessors(property=portName);
    /*!
        Download rate limit for this uplink in Mb/s.
    */
    CPNumber _downloadRateLimit @accessors(property=downloadRateLimit);
    /*!
        ID that unqiuely identifies the uplink.
    */
    CPNumber _uplinkID @accessors(property=uplinkID);
    /*!
        PPPoE username if uplink mode is set to PPPoE.
    */
    CPString _username @accessors(property=username);
    /*!
        UUID of the underlay associated to the uplink.
    */
    CPString _assocUnderlayID @accessors(property=assocUnderlayID);
    /*!
        UUID of BGP Neighbor associated to the Uplink which will be used for Bootstrap. This is mandatory if a secondaryAddress is defined.
    */
    CPString _associatedBGPNeighborID @accessors(property=associatedBGPNeighborID);
    /*!
        The display name of the Underlay instance associated with this uplink connection.
    */
    CPString _associatedUnderlayName @accessors(property=associatedUnderlayName);
    /*!
        Make this uplink an auxiliary one that will only come up when all other uplinks are disconnected or can't perform their role.
    */
    BOOL _auxiliaryLink @accessors(property=auxiliaryLink);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBFDSessionsFetcher _childrenBFDSessions @accessors(property=childrenBFDSessions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUCustomPropertiesFetcher _childrenCustomProperties @accessors(property=childrenCustomProperties);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"uplinkconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"PATEnabled"];
        [self exposeLocalKeyPathToREST:@"DNSAddress"];
        [self exposeLocalKeyPathToREST:@"DNSAddressV6"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayV6"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"addressFamily"];
        [self exposeLocalKeyPathToREST:@"addressV6"];
        [self exposeLocalKeyPathToREST:@"advertisementCriteria"];
        [self exposeLocalKeyPathToREST:@"secondaryAddress"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"vlan"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"underlayID"];
        [self exposeLocalKeyPathToREST:@"inherited"];
        [self exposeLocalKeyPathToREST:@"installerManaged"];
        [self exposeLocalKeyPathToREST:@"interfaceConnectionType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"roleOrder"];
        [self exposeLocalKeyPathToREST:@"portName"];
        [self exposeLocalKeyPathToREST:@"downloadRateLimit"];
        [self exposeLocalKeyPathToREST:@"uplinkID"];
        [self exposeLocalKeyPathToREST:@"username"];
        [self exposeLocalKeyPathToREST:@"assocUnderlayID"];
        [self exposeLocalKeyPathToREST:@"associatedBGPNeighborID"];
        [self exposeLocalKeyPathToREST:@"associatedUnderlayName"];
        [self exposeLocalKeyPathToREST:@"auxiliaryLink"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBFDSessions = [NUBFDSessionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenCustomProperties = [NUCustomPropertiesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end