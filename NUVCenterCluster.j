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

@import "Fetchers/NUVCenterHypervisorsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUVRSAddressRangesFetcher.j"
@import "Fetchers/NUVRSRedeploymentpoliciesFetcher.j"
@import "Fetchers/NUAutoDiscoverHypervisorFromClustersFetcher.j"

NUVCenterClusterEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVCenterClusterEntityScope_GLOBAL = @"GLOBAL";


/*!
    VCenter Clusters.
*/
@implementation NUVCenterCluster : NURESTObject
{
    /*!
        Whether split-activation or not (Openstack/CloudStack)
    */
    BOOL _vRequireNuageMetadata @accessors(property=vRequireNuageMetadata);
    /*!
        Name of the Cluster
    */
    CPString _name @accessors(property=name);
    /*!
        VCenter Managed Object ID of the Cluster.
    */
    CPString _managedObjectID @accessors(property=managedObjectID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
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
        Cluster in scope or not in scope.
    */
    BOOL _scope @accessors(property=scope);
    /*!
        IP address of the secondary Controller (VSC)
    */
    CPString _secondaryNuageController @accessors(property=secondaryNuageController);
    /*!
        Whether split-activation is needed from VRO
    */
    BOOL _genericSplitActivation @accessors(property=genericSplitActivation);
    /*!
        Whether Data will use the management network or not
    */
    BOOL _separateDataNetwork @accessors(property=separateDataNetwork);
    /*!
        VRS/VRS-G
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the Cluster
    */
    CPString _description @accessors(property=description);
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
        To provide IP address of the interface from which you will connect to the DHCP relay server
    */
    CPString _dhcpRelayServer @accessors(property=dhcpRelayServer);
    /*!
        Site ID field for object profiles to support VSD Geo-redundancy
    */
    CPString _siteId @accessors(property=siteId);
    /*!
        Whether to get the Data IP for the VRS VM from DHCP or statically
    */
    BOOL _allowDataDHCP @accessors(property=allowDataDHCP);
    /*!
        Whether to get the management IP for the VRS VM from DHCP or statically.
    */
    BOOL _allowMgmtDHCP @accessors(property=allowMgmtDHCP);
    /*!
        Flow Eviction Threshold
    */
    CPNumber _flowEvictionThreshold @accessors(property=flowEvictionThreshold);
    /*!
        VM Network Port Group Name
    */
    CPString _vmNetworkPortgroup @accessors(property=vmNetworkPortgroup);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Port Group Meta data
    */
    BOOL _portgroupMetadata @accessors(property=portgroupMetadata);
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
        IP address of the primary Controller (VSC)
    */
    CPString _primaryNuageController @accessors(property=primaryNuageController);
    /*!
        VRS password to be used by toolbox to communicate with VRS
    */
    CPString _vrsPassword @accessors(property=vrsPassword);
    /*!
        VRS user name to be used by toolbox to communicate with VRS
    */
    CPString _vrsUserName @accessors(property=vrsUserName);
    /*!
        The ID of the vcenter to which this host is attached
    */
    CPString _assocVCenterDataCenterID @accessors(property=assocVCenterDataCenterID);
    /*!
        ID of the associated VCenter.
    */
    CPString _assocVCenterID @accessors(property=assocVCenterID);
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
        IP of the NTP server 1
    */
    CPString _ntpServer1 @accessors(property=ntpServer1);
    /*!
        IP of the NTP server 1
    */
    CPString _ntpServer2 @accessors(property=ntpServer2);
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
        To provide a URL to install a custom app on VRS
    */
    CPString _customizedScriptURL @accessors(property=customizedScriptURL);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUVCenterHypervisorsFetcher _childrenVCenterHypervisors @accessors(property=childrenVCenterHypervisors);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUVRSAddressRangesFetcher _childrenVRSAddressRanges @accessors(property=childrenVRSAddressRanges);
    NUVRSRedeploymentpoliciesFetcher _childrenVRSRedeploymentpolicies @accessors(property=childrenVRSRedeploymentpolicies);
    NUAutoDiscoverHypervisorFromClustersFetcher _childrenAutoDiscoverHypervisorFromClusters @accessors(property=childrenAutoDiscoverHypervisorFromClusters);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vcentercluster";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"vRequireNuageMetadata"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managedObjectID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"dataDNS1"];
        [self exposeLocalKeyPathToREST:@"dataDNS2"];
        [self exposeLocalKeyPathToREST:@"dataGateway"];
        [self exposeLocalKeyPathToREST:@"dataNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"scope"];
        [self exposeLocalKeyPathToREST:@"secondaryNuageController"];
        [self exposeLocalKeyPathToREST:@"genericSplitActivation"];
        [self exposeLocalKeyPathToREST:@"separateDataNetwork"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metadataServerIP"];
        [self exposeLocalKeyPathToREST:@"metadataServerListenPort"];
        [self exposeLocalKeyPathToREST:@"metadataServerPort"];
        [self exposeLocalKeyPathToREST:@"metadataServiceEnabled"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterface"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceGateway"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceIp"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceNetmask"];
        [self exposeLocalKeyPathToREST:@"nfsLogServer"];
        [self exposeLocalKeyPathToREST:@"nfsMountPath"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS1"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS2"];
        [self exposeLocalKeyPathToREST:@"mgmtGateway"];
        [self exposeLocalKeyPathToREST:@"mgmtNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"dhcpRelayServer"];
        [self exposeLocalKeyPathToREST:@"siteId"];
        [self exposeLocalKeyPathToREST:@"allowDataDHCP"];
        [self exposeLocalKeyPathToREST:@"allowMgmtDHCP"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"vmNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"portgroupMetadata"];
        [self exposeLocalKeyPathToREST:@"novaClientVersion"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceAuthUrl"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceEndpoint"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServicePassword"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceTenant"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceUsername"];
        [self exposeLocalKeyPathToREST:@"novaMetadataSharedSecret"];
        [self exposeLocalKeyPathToREST:@"novaRegionName"];
        [self exposeLocalKeyPathToREST:@"primaryNuageController"];
        [self exposeLocalKeyPathToREST:@"vrsPassword"];
        [self exposeLocalKeyPathToREST:@"vrsUserName"];
        [self exposeLocalKeyPathToREST:@"assocVCenterDataCenterID"];
        [self exposeLocalKeyPathToREST:@"assocVCenterID"];
        [self exposeLocalKeyPathToREST:@"staticRoute"];
        [self exposeLocalKeyPathToREST:@"staticRouteGateway"];
        [self exposeLocalKeyPathToREST:@"staticRouteNetmask"];
        [self exposeLocalKeyPathToREST:@"ntpServer1"];
        [self exposeLocalKeyPathToREST:@"ntpServer2"];
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
        [self exposeLocalKeyPathToREST:@"customizedScriptURL"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenVCenterHypervisors = [NUVCenterHypervisorsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenVRSAddressRanges = [NUVRSAddressRangesFetcher fetcherWithParentObject:self];
        _childrenVRSRedeploymentpolicies = [NUVRSRedeploymentpoliciesFetcher fetcherWithParentObject:self];
        _childrenAutoDiscoverHypervisorFromClusters = [NUAutoDiscoverHypervisorFromClustersFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end