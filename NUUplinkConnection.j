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
@import "Fetchers/NUBFDSessionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUUnderlayTestsFetcher.j"
@import "Fetchers/NUCustomPropertiesFetcher.j"

NUUplinkConnectionAddressFamily_IPV4 = @"IPV4";
NUUplinkConnectionAddressFamily_IPV6 = @"IPV6";
NUUplinkConnectionAdvertisementCriteria_BFD = @"BFD";
NUUplinkConnectionAdvertisementCriteria_CONTROL_SESSION = @"CONTROL_SESSION";
NUUplinkConnectionAdvertisementCriteria_OPERATIONAL_LINK = @"OPERATIONAL_LINK";
NUUplinkConnectionAuxMode_COLD = @"COLD";
NUUplinkConnectionAuxMode_HOT = @"HOT";
NUUplinkConnectionAuxMode_NONE = @"NONE";
NUUplinkConnectionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUUplinkConnectionEntityScope_GLOBAL = @"GLOBAL";
NUUplinkConnectionFecEnabled_ACTIVE = @"ACTIVE";
NUUplinkConnectionFecEnabled_DISABLED = @"DISABLED";
NUUplinkConnectionFecEnabled_PASSIVE = @"PASSIVE";
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
NUUplinkConnectionUplinkType_CONTROL = @"CONTROL";
NUUplinkConnectionUplinkType_DATA = @"DATA";
NUUplinkConnectionUplinkType_SHUNT = @"SHUNT";
NUUplinkConnectionUplinkType_UPLINK = @"UPLINK";


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
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        IP address of the gateway bound to the port
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        The UUID of the NSG on which this uplink connection resides.
    */
    CPString _gatewayID @accessors(property=gatewayID);
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
        Indicates the FEC (Forward Error Correction) setting on this Uplink Connection. Possible values are Active (Encode & Decode on all paths over this uplink), Passive (Encode & Decode only to uplinks with FEC Active) and Disabled (do not Encode or Decode, do not detect or report loss).
    */
    CPString _fecEnabled @accessors(property=fecEnabled);
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
        The UUID of the VLAN on which this uplink connection resides.
    */
    CPString _vlanID @accessors(property=vlanID);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
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
        Determines the order in which uplinks are configured on NSG. It also determines the priority for an Uplink for management traffic. This value will be auto-generated when not provided by user.
    */
    CPNumber _roleOrder @accessors(property=roleOrder);
    /*!
        The UUID of the NSPort on which this uplink connection resides.
    */
    CPString _portID @accessors(property=portID);
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
        The name of the uplink defined by the port name and vlan id (eg. port1.100)
    */
    CPString _uplinkName @accessors(property=uplinkName);
    /*!
        Denotes the Uplink Connection Type on the NSG. Possible values are UPLINK, CONTROL, DATA, SHUNT.
    */
    CPString _uplinkType @accessors(property=uplinkType);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        System generated identifier of an uplink on NSG.
    */
    CPString _primaryDataPathID @accessors(property=primaryDataPathID);
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
        The type of redundancy this Uplink offers when marked as auxiliary link.
    */
    CPString _auxMode @accessors(property=auxMode);
    /*!
        Make this uplink an auxiliary one that will only come up when all other uplinks are disconnected or can't perform their role.
    */
    BOOL _auxiliaryLink @accessors(property=auxiliaryLink);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBFDSessionsFetcher _childrenBFDSessions @accessors(property=childrenBFDSessions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUUnderlayTestsFetcher _childrenUnderlayTests @accessors(property=childrenUnderlayTests);
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
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayV6"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"addressFamily"];
        [self exposeLocalKeyPathToREST:@"addressV6"];
        [self exposeLocalKeyPathToREST:@"advertisementCriteria"];
        [self exposeLocalKeyPathToREST:@"fecEnabled"];
        [self exposeLocalKeyPathToREST:@"secondaryAddress"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"vlan"];
        [self exposeLocalKeyPathToREST:@"vlanID"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"underlayID"];
        [self exposeLocalKeyPathToREST:@"inherited"];
        [self exposeLocalKeyPathToREST:@"installerManaged"];
        [self exposeLocalKeyPathToREST:@"interfaceConnectionType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"roleOrder"];
        [self exposeLocalKeyPathToREST:@"portID"];
        [self exposeLocalKeyPathToREST:@"portName"];
        [self exposeLocalKeyPathToREST:@"downloadRateLimit"];
        [self exposeLocalKeyPathToREST:@"uplinkID"];
        [self exposeLocalKeyPathToREST:@"uplinkName"];
        [self exposeLocalKeyPathToREST:@"uplinkType"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"primaryDataPathID"];
        [self exposeLocalKeyPathToREST:@"username"];
        [self exposeLocalKeyPathToREST:@"assocUnderlayID"];
        [self exposeLocalKeyPathToREST:@"associatedBGPNeighborID"];
        [self exposeLocalKeyPathToREST:@"associatedUnderlayName"];
        [self exposeLocalKeyPathToREST:@"auxMode"];
        [self exposeLocalKeyPathToREST:@"auxiliaryLink"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBFDSessions = [NUBFDSessionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenUnderlayTests = [NUUnderlayTestsFetcher fetcherWithParentObject:self];
        _childrenCustomProperties = [NUCustomPropertiesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end