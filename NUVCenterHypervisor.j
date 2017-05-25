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
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUVRSAddressRangesFetcher.j"
@import "Fetchers/NUVRSMetricsFetcher.j"
@import "Fetchers/NUVRSRedeploymentpoliciesFetcher.j"

NUVCenterHypervisorDestinationMirrorPort_ENS160 = @"ens160";
NUVCenterHypervisorDestinationMirrorPort_ENS161 = @"ens161";
NUVCenterHypervisorDestinationMirrorPort_ENS224 = @"ens224";
NUVCenterHypervisorDestinationMirrorPort_ENS256 = @"ens256";
NUVCenterHypervisorDestinationMirrorPort_NO_MIRROR = @"no_mirror";
NUVCenterHypervisorEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVCenterHypervisorEntityScope_GLOBAL = @"GLOBAL";
NUVCenterHypervisorVRSState_DEPLOYED = @"DEPLOYED";
NUVCenterHypervisorVRSState_DEPLOYING = @"DEPLOYING";
NUVCenterHypervisorVRSState_NOT_DEPLOYED = @"NOT_DEPLOYED";
NUVCenterHypervisorVRSState_TIMEDOUT = @"TIMEDOUT";
NUVCenterHypervisorVRSState_UPGRADING = @"UPGRADING";


/*!
    Host or Hypervisors.
*/
@implementation NUVCenterHypervisor : NURESTObject
{
    /*!
        IP Address of the VCenter.
    */
    CPString _vCenterIP @accessors(property=vCenterIP);
    /*!
        Password for VCenter.
    */
    CPString _vCenterPassword @accessors(property=vCenterPassword);
    /*!
        Username for VCenter.
    */
    CPString _vCenterUser @accessors(property=vCenterUser);
    /*!
        The maximum wait time limit in minutes to get VRS configured at cluster level
    */
    CPNumber _VRSConfigurationTimeLimit @accessors(property=VRSConfigurationTimeLimit);
    /*!
        ID of the VRS metrics object.
    */
    CPString _VRSMetricsID @accessors(property=VRSMetricsID);
    /*!
        Current state of the VRS VM on the hypervisor
    */
    CPString _VRSState @accessors(property=VRSState);
    /*!
        Whether split-activation or not (Openstack/CloudStack)
    */
    BOOL _vRequireNuageMetadata @accessors(property=vRequireNuageMetadata);
    /*!
        Name of the Hypervisor
    */
    CPString _name @accessors(property=name);
    /*!
        managed Object ID of hypervisor
    */
    CPString _managedObjectID @accessors(property=managedObjectID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Determines the time the vrs vm was last deployed.
    */
    CPNumber _lastVRSDeployedDate @accessors(property=lastVRSDeployedDate);
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
        Data IP Address
    */
    CPString _dataIPAddress @accessors(property=dataIPAddress);
    /*!
        Data NetMask
    */
    CPString _dataNetmask @accessors(property=dataNetmask);
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
        Set to true if the hypervisor is removed from Vcenter inventory datacenter or cluster
    */
    BOOL _removedFromVCenterInventory @accessors(property=removedFromVCenterInventory);
    /*!
        Whether split-activation is needed from VRO
    */
    BOOL _genericSplitActivation @accessors(property=genericSplitActivation);
    /*!
        Whether Data will use the management network or not
    */
    BOOL _separateDataNetwork @accessors(property=separateDataNetwork);
    /*!
        The number of times the vrs was deployed on this hypervisor
    */
    CPNumber _deploymentCount @accessors(property=deploymentCount);
    /*!
        VRS/VRS-G
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the Hypervisor
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
        The Mangement IP address for VRS VM if needed to be given statically
    */
    CPString _mgmtIPAddress @accessors(property=mgmtIPAddress);
    /*!
        Netmask of the IP address above
    */
    CPString _mgmtNetmask @accessors(property=mgmtNetmask);
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
        Site ID field for object profiles to support VSD Geo-redundancy
    */
    CPString _siteId @accessors(property=siteId);
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
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Flag to specify if VRS is deployed using tool box.
    */
    BOOL _toolboxDeploymentMode @accessors(property=toolboxDeploymentMode);
    /*!
        Deployment Toolbox Group.
    */
    CPString _toolboxGroup @accessors(property=toolboxGroup);
    /*!
        Deployment Toolbox IP.
    */
    CPString _toolboxIP @accessors(property=toolboxIP);
    /*!
        Deployment Toolbox password.
    */
    CPString _toolboxPassword @accessors(property=toolboxPassword);
    /*!
        Deployment Toolbox username.
    */
    CPString _toolboxUserName @accessors(property=toolboxUserName);
    /*!
        Port Group Meta data
    */
    BOOL _portgroupMetadata @accessors(property=portgroupMetadata);
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
        Upgrade package password used for script based upgrades
    */
    CPString _upgradePackagePassword @accessors(property=upgradePackagePassword);
    /*!
        Upgrade package URL used for script based upgrades
    */
    CPString _upgradePackageURL @accessors(property=upgradePackageURL);
    /*!
        Upgrade package username  used for script based upgrades
    */
    CPString _upgradePackageUsername @accessors(property=upgradePackageUsername);
    /*!
        upgradeScriptTimeLimit
    */
    CPNumber _upgradeScriptTimeLimit @accessors(property=upgradeScriptTimeLimit);
    /*!
        Script based upgrade Status
    */
    CPString _upgradeStatus @accessors(property=upgradeStatus);
    /*!
        Time limit for the patch based upgrade functionality. If the upgrade process of a VRS has not returned a success or failure status within this time limit, the status will be changed to TIMEOUT. Specified in seconds
    */
    BOOL _upgradeTimedout @accessors(property=upgradeTimedout);
    /*!
        IP address of the primary Controller (VSC)
    */
    CPString _primaryNuageController @accessors(property=primaryNuageController);
    /*!
        VCenter Name or Id used by toolbox to identify the VRS virtual machine
    */
    CPString _vrsId @accessors(property=vrsId);
    /*!
        VRS password to be used by toolbox to communicate with VRS
    */
    CPString _vrsPassword @accessors(property=vrsPassword);
    /*!
        VRS user name to be used by toolbox to communicate with VRS
    */
    CPString _vrsUserName @accessors(property=vrsUserName);
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
        The upgrade package Password that was successfully applied
    */
    CPString _successfullyAppliedUpgradePackagePassword @accessors(property=successfullyAppliedUpgradePackagePassword);
    /*!
        The upgrade package URL that was successfully applied
    */
    CPString _successfullyAppliedUpgradePackageURL @accessors(property=successfullyAppliedUpgradePackageURL);
    /*!
        The upgrade package Username that was successfully applied
    */
    CPString _successfullyAppliedUpgradePackageUsername @accessors(property=successfullyAppliedUpgradePackageUsername);
    /*!
        successfully Applied Version of the VRS VM
    */
    CPString _successfullyAppliedVersion @accessors(property=successfullyAppliedVersion);
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
        List of the available network list for the hypervisor.
    */
    CPArrayController _availableNetworks @accessors(property=availableNetworks);
    /*!
        ovf url
    */
    CPString _ovfURL @accessors(property=ovfURL);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        IP Address of the Hypervisor
    */
    CPString _hypervisorIP @accessors(property=hypervisorIP);
    /*!
        Hypervisor username
    */
    CPString _hypervisorPassword @accessors(property=hypervisorPassword);
    /*!
        Hypervisor username
    */
    CPString _hypervisorUser @accessors(property=hypervisorUser);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUVRSAddressRangesFetcher _childrenVRSAddressRanges @accessors(property=childrenVRSAddressRanges);
    NUVRSMetricsFetcher _childrenVRSMetrics @accessors(property=childrenVRSMetrics);
    NUVRSRedeploymentpoliciesFetcher _childrenVRSRedeploymentpolicies @accessors(property=childrenVRSRedeploymentpolicies);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vcenterhypervisor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"vCenterIP"];
        [self exposeLocalKeyPathToREST:@"vCenterPassword"];
        [self exposeLocalKeyPathToREST:@"vCenterUser"];
        [self exposeLocalKeyPathToREST:@"VRSConfigurationTimeLimit"];
        [self exposeLocalKeyPathToREST:@"VRSMetricsID"];
        [self exposeLocalKeyPathToREST:@"VRSState"];
        [self exposeLocalKeyPathToREST:@"vRequireNuageMetadata"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managedObjectID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastVRSDeployedDate"];
        [self exposeLocalKeyPathToREST:@"dataDNS1"];
        [self exposeLocalKeyPathToREST:@"dataDNS2"];
        [self exposeLocalKeyPathToREST:@"dataGateway"];
        [self exposeLocalKeyPathToREST:@"dataIPAddress"];
        [self exposeLocalKeyPathToREST:@"dataNetmask"];
        [self exposeLocalKeyPathToREST:@"dataNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"scope"];
        [self exposeLocalKeyPathToREST:@"secondaryNuageController"];
        [self exposeLocalKeyPathToREST:@"removedFromVCenterInventory"];
        [self exposeLocalKeyPathToREST:@"genericSplitActivation"];
        [self exposeLocalKeyPathToREST:@"separateDataNetwork"];
        [self exposeLocalKeyPathToREST:@"deploymentCount"];
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
        [self exposeLocalKeyPathToREST:@"nfsLogServer"];
        [self exposeLocalKeyPathToREST:@"nfsMountPath"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS1"];
        [self exposeLocalKeyPathToREST:@"mgmtDNS2"];
        [self exposeLocalKeyPathToREST:@"mgmtGateway"];
        [self exposeLocalKeyPathToREST:@"mgmtIPAddress"];
        [self exposeLocalKeyPathToREST:@"mgmtNetmask"];
        [self exposeLocalKeyPathToREST:@"mgmtNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"dhcpRelayServer"];
        [self exposeLocalKeyPathToREST:@"mirrorNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"siteId"];
        [self exposeLocalKeyPathToREST:@"allowDataDHCP"];
        [self exposeLocalKeyPathToREST:@"allowMgmtDHCP"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"vmNetworkPortgroup"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"toolboxDeploymentMode"];
        [self exposeLocalKeyPathToREST:@"toolboxGroup"];
        [self exposeLocalKeyPathToREST:@"toolboxIP"];
        [self exposeLocalKeyPathToREST:@"toolboxPassword"];
        [self exposeLocalKeyPathToREST:@"toolboxUserName"];
        [self exposeLocalKeyPathToREST:@"portgroupMetadata"];
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
        [self exposeLocalKeyPathToREST:@"upgradePackagePassword"];
        [self exposeLocalKeyPathToREST:@"upgradePackageURL"];
        [self exposeLocalKeyPathToREST:@"upgradePackageUsername"];
        [self exposeLocalKeyPathToREST:@"upgradeScriptTimeLimit"];
        [self exposeLocalKeyPathToREST:@"upgradeStatus"];
        [self exposeLocalKeyPathToREST:@"upgradeTimedout"];
        [self exposeLocalKeyPathToREST:@"primaryNuageController"];
        [self exposeLocalKeyPathToREST:@"vrsId"];
        [self exposeLocalKeyPathToREST:@"vrsPassword"];
        [self exposeLocalKeyPathToREST:@"vrsUserName"];
        [self exposeLocalKeyPathToREST:@"staticRoute"];
        [self exposeLocalKeyPathToREST:@"staticRouteGateway"];
        [self exposeLocalKeyPathToREST:@"staticRouteNetmask"];
        [self exposeLocalKeyPathToREST:@"ntpServer1"];
        [self exposeLocalKeyPathToREST:@"ntpServer2"];
        [self exposeLocalKeyPathToREST:@"mtu"];
        [self exposeLocalKeyPathToREST:@"successfullyAppliedUpgradePackagePassword"];
        [self exposeLocalKeyPathToREST:@"successfullyAppliedUpgradePackageURL"];
        [self exposeLocalKeyPathToREST:@"successfullyAppliedUpgradePackageUsername"];
        [self exposeLocalKeyPathToREST:@"successfullyAppliedVersion"];
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
        [self exposeLocalKeyPathToREST:@"availableNetworks"];
        [self exposeLocalKeyPathToREST:@"ovfURL"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hypervisorIP"];
        [self exposeLocalKeyPathToREST:@"hypervisorPassword"];
        [self exposeLocalKeyPathToREST:@"hypervisorUser"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenVRSAddressRanges = [NUVRSAddressRangesFetcher fetcherWithParentObject:self];
        _childrenVRSMetrics = [NUVRSMetricsFetcher fetcherWithParentObject:self];
        _childrenVRSRedeploymentpolicies = [NUVRSRedeploymentpoliciesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end