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

@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUVCenterClustersFetcher.j"
@import "Fetchers/NUVRSAddressRangesFetcher.j"

NUVCenterDataCenterEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVCenterDataCenterEntityScope_GLOBAL = @"GLOBAL";


/*!
    VCenter DataCenters.
*/
@implementation NUVCenterDataCenter : NURESTObject
{
    /*!
        Whether to get the Data IP for the VRS VM from DHCP or statically
    */
    BOOL _allowDataDHCP @accessors(property=allowDataDHCP);
    /*!
        Whether to get the management IP for the VRS VM from DHCP or statically
    */
    BOOL _allowMgmtDHCP @accessors(property=allowMgmtDHCP);
    /*!
        The ID of the vcenter to which this host is attached
    */
    CPString _associatedVCenterID @accessors(property=associatedVCenterID);
    /*!
        To provide a URL to install a custom app on VRS
    */
    CPString _customizedScriptURL @accessors(property=customizedScriptURL);
    /*!
        Data DNS 1
    */
    CPString _dataDNS1 @accessors(property=dataDNS1);
    /*!
        Data DNS 2
    */
    CPString _dataDNS2 @accessors(property=dataDNS2);
    /*!
        Data Gateway
    */
    CPString _dataGateway @accessors(property=dataGateway);
    /*!
        Data Network Port Group
    */
    CPString _dataNetworkPortgroup @accessors(property=dataNetworkPortgroup);
    /*!
        Datapath Sync Timeout
    */
    CPNumber _datapathSyncTimeout @accessors(property=datapathSyncTimeout);
    /*!
        Description of the Datacenter
    */
    CPString _description @accessors(property=description);
    /*!
        To provide IP address of the interface from which you will connect to the DHCP relay server
    */
    CPString _dhcpRelayServer @accessors(property=dhcpRelayServer);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Flow Eviction Threshold
    */
    CPNumber _flowEvictionThreshold @accessors(property=flowEvictionThreshold);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Metadata Server IP
    */
    CPString _metadataServerIP @accessors(property=metadataServerIP);
    /*!
        Metadata Server Listen Port
    */
    CPNumber _metadataServerListenPort @accessors(property=metadataServerListenPort);
    /*!
        Metadata Server Port
    */
    CPNumber _metadataServerPort @accessors(property=metadataServerPort);
    /*!
        Metadata Service Enabled
    */
    BOOL _metadataServiceEnabled @accessors(property=metadataServiceEnabled);
    /*!
        DNS server 1
    */
    CPString _mgmtDNS1 @accessors(property=mgmtDNS1);
    /*!
        DNS server 2
    */
    CPString _mgmtDNS2 @accessors(property=mgmtDNS2);
    /*!
        Gateway for the IP address
    */
    CPString _mgmtGateway @accessors(property=mgmtGateway);
    /*!
        Management Network Port group
    */
    CPString _mgmtNetworkPortgroup @accessors(property=mgmtNetworkPortgroup);
    /*!
        Maximum Transmission Unit for eth2 interface
    */
    CPNumber _mtu @accessors(property=mtu);
    /*!
        Whether Multi VM is to be used or not
    */
    BOOL _multiVMSsupport @accessors(property=multiVMSsupport);
    /*!
        Multicast Receive Interface
    */
    CPString _multicastReceiveInterface @accessors(property=multicastReceiveInterface);
    /*!
        IP address for eth3 interface
    */
    CPString _multicastReceiveInterfaceIP @accessors(property=multicastReceiveInterfaceIP);
    /*!
        Multicast Interface netmask
    */
    CPString _multicastReceiveInterfaceNetmask @accessors(property=multicastReceiveInterfaceNetmask);
    /*!
        Allowed Range to receive the Multicast traffic from
    */
    CPString _multicastReceiveRange @accessors(property=multicastReceiveRange);
    /*!
        Multicast Send Interface
    */
    CPString _multicastSendInterface @accessors(property=multicastSendInterface);
    /*!
        IP address for eth3 interface
    */
    CPString _multicastSendInterfaceIP @accessors(property=multicastSendInterfaceIP);
    /*!
        Multicast Interface netmask
    */
    CPString _multicastSendInterfaceNetmask @accessors(property=multicastSendInterfaceNetmask);
    /*!
        Multi Cast Source Port Group Name
    */
    CPString _multicastSourcePortgroup @accessors(property=multicastSourcePortgroup);
    /*!
        Name of the Datacenter
    */
    CPString _name @accessors(property=name);
    /*!
        Network Upling Interface to support PAT/NAT with no tunnels on VRS-VM
    */
    CPString _networkUplinkInterface @accessors(property=networkUplinkInterface);
    /*!
        Network Uplink Interface Gateway
    */
    CPString _networkUplinkInterfaceGateway @accessors(property=networkUplinkInterfaceGateway);
    /*!
        Ip Address to support PAT/NAT with no tunnels on VRS-VM
    */
    CPString _networkUplinkInterfaceIp @accessors(property=networkUplinkInterfaceIp);
    /*!
        Network Uplink Interface Netmask
    */
    CPString _networkUplinkInterfaceNetmask @accessors(property=networkUplinkInterfaceNetmask);
    /*!
        IP address of NFS server to send the VRS log
    */
    CPString _nfsLogServer @accessors(property=nfsLogServer);
    /*!
        Location to mount the NFS server
    */
    CPString _nfsMountPath @accessors(property=nfsMountPath);
    /*!
        Nova client Version 
    */
    CPNumber _novaClientVersion @accessors(property=novaClientVersion);
    /*!
        Nova metadata service auth url
    */
    CPString _novaMetadataServiceAuthUrl @accessors(property=novaMetadataServiceAuthUrl);
    /*!
        Nova metadata service endpoint
    */
    CPString _novaMetadataServiceEndpoint @accessors(property=novaMetadataServiceEndpoint);
    /*!
        Nova metadata service password
    */
    CPString _novaMetadataServicePassword @accessors(property=novaMetadataServicePassword);
    /*!
        Nova metadata service tenant
    */
    CPString _novaMetadataServiceTenant @accessors(property=novaMetadataServiceTenant);
    /*!
        Nova metadata service username
    */
    CPString _novaMetadataServiceUsername @accessors(property=novaMetadataServiceUsername);
    /*!
        Nova metadata shared secret
    */
    CPString _novaMetadataSharedSecret @accessors(property=novaMetadataSharedSecret);
    /*!
        Nova region name
    */
    CPString _novaRegionName @accessors(property=novaRegionName);
    /*!
        IP of the NTP server 1
    */
    CPString _ntpServer1 @accessors(property=ntpServer1);
    /*!
        IP of the NTP server 1
    */
    CPString _ntpServer2 @accessors(property=ntpServer2);
    /*!
        VRS/VRS-G
    */
    CPString _personality @accessors(property=personality);
    /*!
        Port Group Meta data
    */
    BOOL _portgroupMetadata @accessors(property=portgroupMetadata);
    /*!
        IP address of the primary Controller (VSC)
    */
    CPString _primaryNuageController @accessors(property=primaryNuageController);
    /*!
        IP address of the secondary Controller (VSC)
    */
    CPString _secondaryNuageController @accessors(property=secondaryNuageController);
    /*!
        Whether Data will use the management network or not
    */
    BOOL _separateDataNetwork @accessors(property=separateDataNetwork);
    /*!
        Site ID field for object profiles to support VSD Geo-redundancy
    */
    CPString _siteId @accessors(property=siteId);
    /*!
        static route to be configured in the VRS
    */
    CPString _staticRoute @accessors(property=staticRoute);
    /*!
        Gateway for the static route given above
    */
    CPString _staticRouteGateway @accessors(property=staticRouteGateway);
    /*!
        Nova region name
    */
    CPString _staticRouteNetmask @accessors(property=staticRouteNetmask);
    /*!
        Whether split-activation or not (Openstack/CloudStack)
    */
    BOOL _vRequireNuageMetadata @accessors(property=vRequireNuageMetadata);
    /*!
        VM Network Port Group Name
    */
    CPString _vmNetworkPortgroup @accessors(property=vmNetworkPortgroup);
    /*!
        VRS password to be used by toolbox to communicate with VRS
    */
    CPString _vrsPassword @accessors(property=vrsPassword);
    /*!
        VRS user name to be used by toolbox to communicate with VRS
    */
    CPString _vrsUserName @accessors(property=vrsUserName);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVCenterClustersFetcher _childrenVCenterClusters @accessors(property=childrenVCenterClusters);
    NUVRSAddressRangesFetcher _childrenVRSAddressRanges @accessors(property=childrenVRSAddressRanges);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vcenterdatacenter";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"allowDataDHCP"];
        [self exposeLocalKeyPathToREST:@"allowMgmtDHCP"];
        [self exposeLocalKeyPathToREST:@"associatedVCenterID"];
        [self exposeLocalKeyPathToREST:@"customizedScriptURL"];
        [self exposeLocalKeyPathToREST:@"dataDNS1"];
        [self exposeLocalKeyPathToREST:@"dataDNS2"];
        [self exposeLocalKeyPathToREST:@"dataGateway"];
        [self exposeLocalKeyPathToREST:@"dataNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"dhcpRelayServer"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"metadataServerIP"];
        [self exposeLocalKeyPathToREST:@"metadataServerListenPort"];
        [self exposeLocalKeyPathToREST:@"metadataServerPort"];
        [self exposeLocalKeyPathToREST:@"metadataServiceEnabled"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS1"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS2"];
        [self exposeLocalKeyPathToREST:@"mgmtGateway"];
        [self exposeLocalKeyPathToREST:@"mgmtNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"mtu"];
        [self exposeLocalKeyPathToREST:@"multiVMSsupport"];
        [self exposeLocalKeyPathToREST:@"multicastReceiveInterface"];
        [self exposeLocalKeyPathToREST:@"multicastReceiveInterfaceIP"];
        [self exposeLocalKeyPathToREST:@"multicastReceiveInterfaceNetmask"];
        [self exposeLocalKeyPathToREST:@"multicastReceiveRange"];
        [self exposeLocalKeyPathToREST:@"multicastSendInterface"];
        [self exposeLocalKeyPathToREST:@"multicastSendInterfaceIP"];
        [self exposeLocalKeyPathToREST:@"multicastSendInterfaceNetmask"];
        [self exposeLocalKeyPathToREST:@"multicastSourcePortgroup"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterface"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceGateway"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceIp"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceNetmask"];
        [self exposeLocalKeyPathToREST:@"nfsLogServer"];
        [self exposeLocalKeyPathToREST:@"nfsMountPath"];
        [self exposeLocalKeyPathToREST:@"novaClientVersion"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceAuthUrl"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceEndpoint"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServicePassword"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceTenant"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceUsername"];
        [self exposeLocalKeyPathToREST:@"novaMetadataSharedSecret"];
        [self exposeLocalKeyPathToREST:@"novaRegionName"];
        [self exposeLocalKeyPathToREST:@"ntpServer1"];
        [self exposeLocalKeyPathToREST:@"ntpServer2"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"portgroupMetadata"];
        [self exposeLocalKeyPathToREST:@"primaryNuageController"];
        [self exposeLocalKeyPathToREST:@"secondaryNuageController"];
        [self exposeLocalKeyPathToREST:@"separateDataNetwork"];
        [self exposeLocalKeyPathToREST:@"siteId"];
        [self exposeLocalKeyPathToREST:@"staticRoute"];
        [self exposeLocalKeyPathToREST:@"staticRouteGateway"];
        [self exposeLocalKeyPathToREST:@"staticRouteNetmask"];
        [self exposeLocalKeyPathToREST:@"vRequireNuageMetadata"];
        [self exposeLocalKeyPathToREST:@"vmNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"vrsPassword"];
        [self exposeLocalKeyPathToREST:@"vrsUserName"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVCenterClusters = [NUVCenterClustersFetcher fetcherWithParentObject:self];
        _childrenVRSAddressRanges = [NUVRSAddressRangesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end