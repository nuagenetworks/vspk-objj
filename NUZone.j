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

@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUGroupsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUZoneAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUZoneAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUZoneAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUZoneAssociatedApplicationObjectType_ALARM = @"ALARM";
NUZoneAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUZoneAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUZoneAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUZoneAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUZoneAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUZoneAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUZoneAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUZoneAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUZoneAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUZoneAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUZoneAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUZoneAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUZoneAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUZoneAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUZoneAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUZoneAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUZoneAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUZoneAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUZoneAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUZoneAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUZoneAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUZoneAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUZoneAssociatedApplicationObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUZoneAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUZoneAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUZoneAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUZoneAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUZoneAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUZoneAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUZoneAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUZoneAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUZoneAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUZoneAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUZoneAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUZoneAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUZoneAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUZoneAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUZoneAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUZoneAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUZoneAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUZoneAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUZoneAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUZoneAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUZoneAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUZoneAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUZoneAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUZoneAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUZoneAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUZoneAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUZoneAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUZoneAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUZoneAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUZoneAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUZoneAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUZoneAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUZoneAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUZoneAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUZoneAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUZoneAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUZoneAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUZoneAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUZoneAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUZoneAssociatedApplicationObjectType_GROUP = @"GROUP";
NUZoneAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUZoneAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUZoneAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUZoneAssociatedApplicationObjectType_HSC = @"HSC";
NUZoneAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUZoneAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUZoneAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUZoneAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUZoneAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUZoneAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUZoneAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUZoneAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUZoneAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUZoneAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUZoneAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUZoneAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUZoneAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUZoneAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUZoneAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUZoneAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUZoneAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUZoneAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUZoneAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUZoneAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUZoneAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUZoneAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUZoneAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUZoneAssociatedApplicationObjectType_JOB = @"JOB";
NUZoneAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUZoneAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUZoneAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUZoneAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUZoneAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUZoneAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUZoneAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUZoneAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUZoneAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUZoneAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUZoneAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUZoneAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUZoneAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUZoneAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUZoneAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUZoneAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUZoneAssociatedApplicationObjectType_METADATA = @"METADATA";
NUZoneAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUZoneAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUZoneAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUZoneAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUZoneAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUZoneAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUZoneAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUZoneAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUZoneAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUZoneAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUZoneAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUZoneAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUZoneAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUZoneAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUZoneAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUZoneAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUZoneAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUZoneAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUZoneAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUZoneAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUZoneAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUZoneAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUZoneAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUZoneAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUZoneAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUZoneAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUZoneAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUZoneAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUZoneAssociatedApplicationObjectType_PORT = @"PORT";
NUZoneAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUZoneAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUZoneAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUZoneAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUZoneAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUZoneAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUZoneAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUZoneAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUZoneAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUZoneAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUZoneAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUZoneAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUZoneAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUZoneAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUZoneAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUZoneAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUZoneAssociatedApplicationObjectType_SITE = @"SITE";
NUZoneAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUZoneAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUZoneAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUZoneAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUZoneAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUZoneAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUZoneAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUZoneAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUZoneAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUZoneAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUZoneAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUZoneAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUZoneAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUZoneAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUZoneAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUZoneAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUZoneAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUZoneAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUZoneAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUZoneAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUZoneAssociatedApplicationObjectType_USER = @"USER";
NUZoneAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUZoneAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUZoneAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUZoneAssociatedApplicationObjectType_VLAN = @"VLAN";
NUZoneAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUZoneAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUZoneAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUZoneAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUZoneAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUZoneAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUZoneAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUZoneAssociatedApplicationObjectType_VM_RESYNC = @"VM_RESYNC";
NUZoneAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUZoneAssociatedApplicationObjectType_VPORT = @"VPORT";
NUZoneAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUZoneAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUZoneAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUZoneAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUZoneAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUZoneAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUZoneAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUZoneAssociatedApplicationObjectType_VRS = @"VRS";
NUZoneAssociatedApplicationObjectType_VSC = @"VSC";
NUZoneAssociatedApplicationObjectType_VSD = @"VSD";
NUZoneAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUZoneAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUZoneAssociatedApplicationObjectType_VSP = @"VSP";
NUZoneAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUZoneAssociatedApplicationObjectType_ZONE = @"ZONE";
NUZoneAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUZoneDPI_DISABLED = @"DISABLED";
NUZoneDPI_ENABLED = @"ENABLED";
NUZoneDPI_INHERITED = @"INHERITED";
NUZoneEncryption_DISABLED = @"DISABLED";
NUZoneEncryption_ENABLED = @"ENABLED";
NUZoneEncryption_INHERITED = @"INHERITED";
NUZoneEntityScope_ENTERPRISE = @"ENTERPRISE";
NUZoneEntityScope_GLOBAL = @"GLOBAL";
NUZoneIPType_IPV4 = @"IPV4";
NUZoneIPType_IPV6 = @"IPV6";
NUZoneMaintenanceMode_DISABLED = @"DISABLED";
NUZoneMaintenanceMode_ENABLED = @"ENABLED";
NUZoneMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUZoneMulticast_DISABLED = @"DISABLED";
NUZoneMulticast_ENABLED = @"ENABLED";
NUZoneMulticast_INHERITED = @"INHERITED";


/*!
    The zone is a collection of subnets attached to a domain. The zone concept enables the definition of policies for collections of subnets.
*/
@implementation NUZone : NURESTObject
{
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4 or IPv6
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        Indicates if the Zone is accepting VM activation requests.
    */
    CPString _maintenanceMode @accessors(property=maintenanceMode);
    /*!
        Name of the current entity(Zone or zone template or subnet etc..) Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        The ID of the template that this zone was derived from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        A description of the zone
    */
    CPString _description @accessors(property=description);
    /*!
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Determines whether or not IPSEC is enabled.
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        PG ID for the subnet. This is unique per domain and will be in the range 1-4095
    */
    CPNumber _policyGroupID @accessors(property=policyGroupID);
    /*!
        The associated application ID.
    */
    CPString _associatedApplicationID @accessors(property=associatedApplicationID);
    /*!
        The associated application object ID.
    */
    CPString _associatedApplicationObjectID @accessors(property=associatedApplicationObjectID);
    /*!
        The associated application object type. Refer to API section for supported types.
    */
    CPString _associatedApplicationObjectType @accessors(property=associatedApplicationObjectType);
    /*!
        The ID of the Multi Cast Channel Map  this zone/zone template is associated with. This has to be set when  enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        If a zone is marked as public, then it is lined to the public network associated with this data center
    */
    BOOL _publicZone @accessors(property=publicZone);
    /*!
        Indicates multicast policy on zone.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Number of hosts in each of the subnets that can be created under a zone and are auto-assigned IP addresses
    */
    CPNumber _numberOfHostsInSubnets @accessors(property=numberOfHostsInSubnets);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUGroupsFetcher _childrenGroups @accessors(property=childrenGroups);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"zone";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyGroupID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectType"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"publicZone"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"numberOfHostsInSubnets"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenGroups = [NUGroupsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _multicast = @"INHERITED";
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end