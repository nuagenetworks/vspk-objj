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

@import "Fetchers/NUVCenterDataCentersFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUVRSAddressRangesFetcher.j"
@import "Fetchers/NUVRSRedeploymentpoliciesFetcher.j"
@import "Fetchers/NUAutodiscovereddatacentersFetcher.j"

NUVCenterAvrsProfile_AVRS_25G = @"AVRS_25G";
NUVCenterCpuCount_DEFAULT_2 = @"DEFAULT_2";
NUVCenterCpuCount_LARGE_6 = @"LARGE_6";
NUVCenterCpuCount_MEDIUM_4 = @"MEDIUM_4";
NUVCenterCpuCount_XLARGE_8 = @"XLARGE_8";
NUVCenterDestinationMirrorPort_ENS160 = @"ens160";
NUVCenterDestinationMirrorPort_ENS161 = @"ens161";
NUVCenterDestinationMirrorPort_ENS224 = @"ens224";
NUVCenterDestinationMirrorPort_ENS256 = @"ens256";
NUVCenterDestinationMirrorPort_NO_MIRROR = @"no_mirror";
NUVCenterEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVCenterEntityScope_GLOBAL = @"GLOBAL";
NUVCenterMemorySizeInGB_DEFAULT_4 = @"DEFAULT_4";
NUVCenterMemorySizeInGB_LARGE_8 = @"LARGE_8";
NUVCenterMemorySizeInGB_MEDIUM_6 = @"MEDIUM_6";
NUVCenterPersonality_VDF = @"VDF";
NUVCenterPersonality_VRS = @"VRS";
NUVCenterRemoteSyslogServerType_NONE = @"NONE";
NUVCenterRemoteSyslogServerType_TCP = @"TCP";
NUVCenterRemoteSyslogServerType_UDP = @"UDP";


/*!
    Represents a VCenter.
*/
@implementation NUVCenter : NURESTObject
{
    /*!
        Name of the Nugae EAM Plugin registered with VCenter for the current instance of VCIN
    */
    CPString _EAMExtensionName @accessors(property=EAMExtensionName);
    /*!
        Whether ARP Reply is enabled/disabled
    */
    BOOL _ARPReply @accessors(property=ARPReply);
    /*!
        The maximum wait time limit in minutes to get VRS configured at cluster level
    */
    CPNumber _VRSConfigurationTimeLimit @accessors(property=VRSConfigurationTimeLimit);
    /*!
        Whether split-activation or not (Openstack/CloudStack)
    */
    BOOL _vRequireNuageMetadata @accessors(property=vRequireNuageMetadata);
    /*!
        Name of the VCenter
    */
    CPString _name @accessors(property=name);
    /*!
        When this is set to true, the vCenter Integration Node will be responsible for marking a VRS Agent as available in the EAM framework. Until a VRS Agent has been marked as available, vCenter will not migrate VMs to the host running the VRS Agent and will not allow VMs to be powered on that host.
    */
    BOOL _manageVRSAvailability @accessors(property=manageVRSAvailability);
    /*!
        Password for the VCenter user
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
        Enable DHCP on the secondary data uplink.
    */
    BOOL _secondaryDataUplinkDHCPEnabled @accessors(property=secondaryDataUplinkDHCPEnabled);
    /*!
        Enable secondary data uplink
    */
    BOOL _secondaryDataUplinkEnabled @accessors(property=secondaryDataUplinkEnabled);
    /*!
        Interface to use for the secondary data uplink. This interface can be a normal interface or a VLAN on an existing interface. Please read the VMware integration guide for more details.
    */
    CPString _secondaryDataUplinkInterface @accessors(property=secondaryDataUplinkInterface);
    /*!
        Secondary data uplink MTU
    */
    CPNumber _secondaryDataUplinkMTU @accessors(property=secondaryDataUplinkMTU);
    /*!
        Secondary data uplink primary controller IP
    */
    CPString _secondaryDataUplinkPrimaryController @accessors(property=secondaryDataUplinkPrimaryController);
    /*!
        Secondary data uplink secondary controller IP
    */
    CPString _secondaryDataUplinkSecondaryController @accessors(property=secondaryDataUplinkSecondaryController);
    /*!
        Secondary data uplink underlay ID
    */
    CPNumber _secondaryDataUplinkUnderlayID @accessors(property=secondaryDataUplinkUnderlayID);
    /*!
        The VLAN for the control communication with VSC on the secondary datapath interface, when VDF is enabled. This VLAN can not be used as a subnet VLAN in the VSD configuration.
    */
    CPNumber _secondaryDataUplinkVDFControlVLAN @accessors(property=secondaryDataUplinkVDFControlVLAN);
    /*!
        IP address of the secondary Controller (VSC)
    */
    CPString _secondaryNuageController @accessors(property=secondaryNuageController);
    /*!
        Memory in Gigabytes
    */
    CPString _memorySizeInGB @accessors(property=memorySizeInGB);
    /*!
        Remote syslog server IP
    */
    CPString _remoteSyslogServerIP @accessors(property=remoteSyslogServerIP);
    /*!
        Remote syslog server port
    */
    CPNumber _remoteSyslogServerPort @accessors(property=remoteSyslogServerPort);
    /*!
        Remote syslog server type (UDP/TCP)
    */
    CPString _remoteSyslogServerType @accessors(property=remoteSyslogServerType);
    /*!
        Whether split-activation is needed from VRO
    */
    BOOL _genericSplitActivation @accessors(property=genericSplitActivation);
    /*!
        Whether Data will use the management network or not
    */
    BOOL _separateDataNetwork @accessors(property=separateDataNetwork);
    /*!
        The personality of the VRS Agent, supported values when deploying through the vCenter Integration Node: VRS, VDF.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the VCenter
    */
    CPString _description @accessors(property=description);
    /*!
        Extra Vnic to mirror access port
    */
    CPString _destinationMirrorPort @accessors(property=destinationMirrorPort);
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
        Network Uplink Interface to support PAT/NAT with no tunnels on VRS-VM
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
        Enable revertive controller behaviour. If this is enabled, OVS will make its primary VSC as its master VSC once it is back up.
    */
    BOOL _revertiveControllerEnabled @accessors(property=revertiveControllerEnabled);
    /*!
        A timer in seconds indicating after how long OVS should retry to connect to the primary VSC as its master after a failure.
    */
    CPNumber _revertiveTimer @accessors(property=revertiveTimer);
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
        Mirror Port Group Name
    */
    CPString _mirrorNetworkPortgroup @accessors(property=mirrorNetworkPortgroup);
    /*!
        Disable GRO on datapath
    */
    BOOL _disableGROOnDatapath @accessors(property=disableGROOnDatapath);
    /*!
        Disable LRO on datapath
    */
    BOOL _disableLROOnDatapath @accessors(property=disableLROOnDatapath);
    /*!
        disable Network Discovery (true - dont fetch portgroups from vcenter, false - fetch portgroups from vcenter)
    */
    BOOL _disableNetworkDiscovery @accessors(property=disableNetworkDiscovery);
    /*!
        Site ID field for object profiles to support VSD Geo-redundancy
    */
    CPString _siteId @accessors(property=siteId);
    /*!
        Old Agency Name
    */
    CPString _oldAgencyName @accessors(property=oldAgencyName);
    /*!
        Whether to get the Data IP for the VRS VM from DHCP or statically
    */
    BOOL _allowDataDHCP @accessors(property=allowDataDHCP);
    /*!
        Whether to get the management IP for the VRS VM from DHCP or statically
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
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Enable resource reservation on the VRS. When this is enabled, all memory and 100% of CPU resources allocated to the VRS will be reserved.
    */
    BOOL _enableVRSResourceReservation @accessors(property=enableVRSResourceReservation);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Configured VRS metrics push interval on VCIN
    */
    CPNumber _configuredMetricsPushInterval @accessors(property=configuredMetricsPushInterval);
    /*!
        VCenter connection status.
    */
    BOOL _connectionStatus @accessors(property=connectionStatus);
    /*!
        Port Group Meta data
    */
    BOOL _portgroupMetadata @accessors(property=portgroupMetadata);
    /*!
        Flag to say if host level management is enabled
    */
    BOOL _hostLevelManagement @accessors(property=hostLevelManagement);
    /*!
        Nova client Version 
    */
    CPNumber _novaClientVersion @accessors(property=novaClientVersion);
    /*!
        Keystone identity version to use for the Nova metadata configuration on the VRS
    */
    CPString _novaIdentityURLVersion @accessors(property=novaIdentityURLVersion);
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
        Keystone username used by nova
    */
    CPString _novaOSKeystoneUsername @accessors(property=novaOSKeystoneUsername);
    /*!
        Name of the project that the Nova service uses, can be determined from the nova.conf on the OpenStack controller
    */
    CPString _novaProjectDomainName @accessors(property=novaProjectDomainName);
    /*!
        Name of the default Nova project (example: services)
    */
    CPString _novaProjectName @accessors(property=novaProjectName);
    /*!
        Nova region name
    */
    CPString _novaRegionName @accessors(property=novaRegionName);
    /*!
        Name of the user domain used by the Nova service, can be determined from the nova.conf on the OpenStack controller
    */
    CPString _novaUserDomainName @accessors(property=novaUserDomainName);
    /*!
        IP Address of the VCenter
    */
    CPString _ipAddress @accessors(property=ipAddress);
    /*!
        Upgrade package password used for script based upgrades
    */
    CPString _upgradePackagePassword @accessors(property=upgradePackagePassword);
    /*!
        Upgrade package URLused for script based upgrades
    */
    CPString _upgradePackageURL @accessors(property=upgradePackageURL);
    /*!
        Upgrade package username used for script based upgrades
    */
    CPString _upgradePackageUsername @accessors(property=upgradePackageUsername);
    /*!
        Time limit for the patch based upgrade functionality. If the upgrade process of a VRS has not returned a success or failure status within this time limit, the status will be changed to TIMEOUT. Specified in seconds
    */
    CPNumber _upgradeScriptTimeLimit @accessors(property=upgradeScriptTimeLimit);
    /*!
        The number of vCPUs that will be assigned to the VRS.
    */
    CPString _cpuCount @accessors(property=cpuCount);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Primary data uplink underlay ID
    */
    CPNumber _primaryDataUplinkUnderlayID @accessors(property=primaryDataUplinkUnderlayID);
    /*!
        The VLAN for the control communication with VSC on the primary datapath interface, when VDF is enabled. This VLAN can not be used as a subnet VLAN in the VSD configuration.
    */
    CPNumber _primaryDataUplinkVDFControlVLAN @accessors(property=primaryDataUplinkVDFControlVLAN);
    /*!
        IP address of the primary Controller (VSC)
    */
    CPString _primaryNuageController @accessors(property=primaryNuageController);
    /*!
        The ID of the template that this Port was created from
    */
    CPString _vrsConfigID @accessors(property=vrsConfigID);
    /*!
        VRS password to be used by toolbox to communicate with VRS
    */
    CPString _vrsPassword @accessors(property=vrsPassword);
    /*!
        VRS user name to be used by toolbox to communicate with VRS
    */
    CPString _vrsUserName @accessors(property=vrsUserName);
    /*!
        User name of the VCenter
    */
    CPString _userName @accessors(property=userName);
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
        Http proxy port for VCenter
    */
    CPNumber _httpPort @accessors(property=httpPort);
    /*!
        Https proxy port of the VCenter
    */
    CPNumber _httpsPort @accessors(property=httpsPort);
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
        Frequency at which VCenter issues are to be resolved
    */
    CPNumber _autoResolveFrequency @accessors(property=autoResolveFrequency);
    /*!
        The url for the ovf
    */
    CPString _ovfURL @accessors(property=ovfURL);
    /*!
        When enabled, the AVRS functionality will be enabled on the VRS during bootstrapping. This feature requires special AVRS licenses and specific configuration which is described in the product documentation.
    */
    BOOL _avrsEnabled @accessors(property=avrsEnabled);
    /*!
        The AVRS configuration profile that needs to be set up. This profile will configure the AVRS services so that it can support a certain type of performance.
    */
    CPString _avrsProfile @accessors(property=avrsProfile);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUVCenterDataCentersFetcher _childrenVCenterDataCenters @accessors(property=childrenVCenterDataCenters);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUVRSAddressRangesFetcher _childrenVRSAddressRanges @accessors(property=childrenVRSAddressRanges);
    NUVRSRedeploymentpoliciesFetcher _childrenVRSRedeploymentpolicies @accessors(property=childrenVRSRedeploymentpolicies);
    NUAutodiscovereddatacentersFetcher _childrenAutodiscovereddatacenters @accessors(property=childrenAutodiscovereddatacenters);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vcenter";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"EAMExtensionName"];
        [self exposeLocalKeyPathToREST:@"ARPReply"];
        [self exposeLocalKeyPathToREST:@"VRSConfigurationTimeLimit"];
        [self exposeLocalKeyPathToREST:@"vRequireNuageMetadata"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"manageVRSAvailability"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"dataDNS1"];
        [self exposeLocalKeyPathToREST:@"dataDNS2"];
        [self exposeLocalKeyPathToREST:@"dataGateway"];
        [self exposeLocalKeyPathToREST:@"dataNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkDHCPEnabled"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkEnabled"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkInterface"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkMTU"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkPrimaryController"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkSecondaryController"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkUnderlayID"];
        [self exposeLocalKeyPathToREST:@"secondaryDataUplinkVDFControlVLAN"];
        [self exposeLocalKeyPathToREST:@"secondaryNuageController"];
        [self exposeLocalKeyPathToREST:@"memorySizeInGB"];
        [self exposeLocalKeyPathToREST:@"remoteSyslogServerIP"];
        [self exposeLocalKeyPathToREST:@"remoteSyslogServerPort"];
        [self exposeLocalKeyPathToREST:@"remoteSyslogServerType"];
        [self exposeLocalKeyPathToREST:@"genericSplitActivation"];
        [self exposeLocalKeyPathToREST:@"separateDataNetwork"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationMirrorPort"];
        [self exposeLocalKeyPathToREST:@"metadataServerIP"];
        [self exposeLocalKeyPathToREST:@"metadataServerListenPort"];
        [self exposeLocalKeyPathToREST:@"metadataServerPort"];
        [self exposeLocalKeyPathToREST:@"metadataServiceEnabled"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterface"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceGateway"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceIp"];
        [self exposeLocalKeyPathToREST:@"networkUplinkInterfaceNetmask"];
        [self exposeLocalKeyPathToREST:@"revertiveControllerEnabled"];
        [self exposeLocalKeyPathToREST:@"revertiveTimer"];
        [self exposeLocalKeyPathToREST:@"nfsLogServer"];
        [self exposeLocalKeyPathToREST:@"nfsMountPath"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS1"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS2"];
        [self exposeLocalKeyPathToREST:@"mgmtGateway"];
        [self exposeLocalKeyPathToREST:@"mgmtNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"dhcpRelayServer"];
        [self exposeLocalKeyPathToREST:@"mirrorNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"disableGROOnDatapath"];
        [self exposeLocalKeyPathToREST:@"disableLROOnDatapath"];
        [self exposeLocalKeyPathToREST:@"disableNetworkDiscovery"];
        [self exposeLocalKeyPathToREST:@"siteId"];
        [self exposeLocalKeyPathToREST:@"oldAgencyName"];
        [self exposeLocalKeyPathToREST:@"allowDataDHCP"];
        [self exposeLocalKeyPathToREST:@"allowMgmtDHCP"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"vmNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableVRSResourceReservation"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"configuredMetricsPushInterval"];
        [self exposeLocalKeyPathToREST:@"connectionStatus"];
        [self exposeLocalKeyPathToREST:@"portgroupMetadata"];
        [self exposeLocalKeyPathToREST:@"hostLevelManagement"];
        [self exposeLocalKeyPathToREST:@"novaClientVersion"];
        [self exposeLocalKeyPathToREST:@"novaIdentityURLVersion"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceAuthUrl"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceEndpoint"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServicePassword"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceTenant"];
        [self exposeLocalKeyPathToREST:@"novaMetadataServiceUsername"];
        [self exposeLocalKeyPathToREST:@"novaMetadataSharedSecret"];
        [self exposeLocalKeyPathToREST:@"novaOSKeystoneUsername"];
        [self exposeLocalKeyPathToREST:@"novaProjectDomainName"];
        [self exposeLocalKeyPathToREST:@"novaProjectName"];
        [self exposeLocalKeyPathToREST:@"novaRegionName"];
        [self exposeLocalKeyPathToREST:@"novaUserDomainName"];
        [self exposeLocalKeyPathToREST:@"ipAddress"];
        [self exposeLocalKeyPathToREST:@"upgradePackagePassword"];
        [self exposeLocalKeyPathToREST:@"upgradePackageURL"];
        [self exposeLocalKeyPathToREST:@"upgradePackageUsername"];
        [self exposeLocalKeyPathToREST:@"upgradeScriptTimeLimit"];
        [self exposeLocalKeyPathToREST:@"cpuCount"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"primaryDataUplinkUnderlayID"];
        [self exposeLocalKeyPathToREST:@"primaryDataUplinkVDFControlVLAN"];
        [self exposeLocalKeyPathToREST:@"primaryNuageController"];
        [self exposeLocalKeyPathToREST:@"vrsConfigID"];
        [self exposeLocalKeyPathToREST:@"vrsPassword"];
        [self exposeLocalKeyPathToREST:@"vrsUserName"];
        [self exposeLocalKeyPathToREST:@"userName"];
        [self exposeLocalKeyPathToREST:@"staticRoute"];
        [self exposeLocalKeyPathToREST:@"staticRouteGateway"];
        [self exposeLocalKeyPathToREST:@"staticRouteNetmask"];
        [self exposeLocalKeyPathToREST:@"ntpServer1"];
        [self exposeLocalKeyPathToREST:@"ntpServer2"];
        [self exposeLocalKeyPathToREST:@"httpPort"];
        [self exposeLocalKeyPathToREST:@"httpsPort"];
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
        [self exposeLocalKeyPathToREST:@"autoResolveFrequency"];
        [self exposeLocalKeyPathToREST:@"ovfURL"];
        [self exposeLocalKeyPathToREST:@"avrsEnabled"];
        [self exposeLocalKeyPathToREST:@"avrsProfile"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenVCenterDataCenters = [NUVCenterDataCentersFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenVRSAddressRanges = [NUVRSAddressRangesFetcher fetcherWithParentObject:self];
        _childrenVRSRedeploymentpolicies = [NUVRSRedeploymentpoliciesFetcher fetcherWithParentObject:self];
        _childrenAutodiscovereddatacenters = [NUAutodiscovereddatacentersFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end