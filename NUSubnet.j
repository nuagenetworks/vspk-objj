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
@import "Fetchers/NUAddressRangesFetcher.j"
@import "Fetchers/NUVMResyncsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUIKEGatewayConnectionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUContainerResyncsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUIPReservationsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUSubnetAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUSubnetAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUSubnetAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUSubnetAssociatedApplicationObjectType_ALARM = @"ALARM";
NUSubnetAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUSubnetAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUSubnetAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUSubnetAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUSubnetAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUSubnetAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUSubnetAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUSubnetAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUSubnetAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUSubnetAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUSubnetAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUSubnetAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUSubnetAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUSubnetAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUSubnetAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUSubnetAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUSubnetAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUSubnetAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUSubnetAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUSubnetAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUSubnetAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUSubnetAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUSubnetAssociatedApplicationObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUSubnetAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUSubnetAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUSubnetAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUSubnetAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUSubnetAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUSubnetAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUSubnetAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUSubnetAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUSubnetAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUSubnetAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUSubnetAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUSubnetAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUSubnetAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUSubnetAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUSubnetAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUSubnetAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUSubnetAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUSubnetAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUSubnetAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUSubnetAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUSubnetAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUSubnetAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUSubnetAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUSubnetAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUSubnetAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUSubnetAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUSubnetAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUSubnetAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUSubnetAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUSubnetAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUSubnetAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUSubnetAssociatedApplicationObjectType_GROUP = @"GROUP";
NUSubnetAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUSubnetAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUSubnetAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUSubnetAssociatedApplicationObjectType_HSC = @"HSC";
NUSubnetAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUSubnetAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUSubnetAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUSubnetAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUSubnetAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUSubnetAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUSubnetAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUSubnetAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUSubnetAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUSubnetAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUSubnetAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUSubnetAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUSubnetAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUSubnetAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUSubnetAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUSubnetAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUSubnetAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUSubnetAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUSubnetAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUSubnetAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUSubnetAssociatedApplicationObjectType_JOB = @"JOB";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUSubnetAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUSubnetAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUSubnetAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUSubnetAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUSubnetAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUSubnetAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUSubnetAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUSubnetAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUSubnetAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUSubnetAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUSubnetAssociatedApplicationObjectType_METADATA = @"METADATA";
NUSubnetAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUSubnetAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUSubnetAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUSubnetAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUSubnetAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUSubnetAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUSubnetAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUSubnetAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUSubnetAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUSubnetAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUSubnetAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUSubnetAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUSubnetAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUSubnetAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUSubnetAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUSubnetAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUSubnetAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUSubnetAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUSubnetAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUSubnetAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUSubnetAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUSubnetAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUSubnetAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUSubnetAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUSubnetAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUSubnetAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_PORT = @"PORT";
NUSubnetAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUSubnetAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUSubnetAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUSubnetAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUSubnetAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUSubnetAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUSubnetAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUSubnetAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUSubnetAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUSubnetAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUSubnetAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUSubnetAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUSubnetAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUSubnetAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUSubnetAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUSubnetAssociatedApplicationObjectType_SITE = @"SITE";
NUSubnetAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUSubnetAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUSubnetAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUSubnetAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUSubnetAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUSubnetAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUSubnetAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUSubnetAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUSubnetAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUSubnetAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUSubnetAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUSubnetAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUSubnetAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUSubnetAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUSubnetAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUSubnetAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUSubnetAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUSubnetAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUSubnetAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUSubnetAssociatedApplicationObjectType_USER = @"USER";
NUSubnetAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUSubnetAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUSubnetAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUSubnetAssociatedApplicationObjectType_VLAN = @"VLAN";
NUSubnetAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUSubnetAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUSubnetAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUSubnetAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUSubnetAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUSubnetAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUSubnetAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUSubnetAssociatedApplicationObjectType_VM_RESYNC = @"VM_RESYNC";
NUSubnetAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUSubnetAssociatedApplicationObjectType_VPORT = @"VPORT";
NUSubnetAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUSubnetAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUSubnetAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUSubnetAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUSubnetAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUSubnetAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUSubnetAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUSubnetAssociatedApplicationObjectType_VRS = @"VRS";
NUSubnetAssociatedApplicationObjectType_VSC = @"VSC";
NUSubnetAssociatedApplicationObjectType_VSD = @"VSD";
NUSubnetAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUSubnetAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUSubnetAssociatedApplicationObjectType_VSP = @"VSP";
NUSubnetAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUSubnetAssociatedApplicationObjectType_ZONE = @"ZONE";
NUSubnetAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUSubnetDHCPRelayStatus_DISABLED = @"DISABLED";
NUSubnetDHCPRelayStatus_ENABLED = @"ENABLED";
NUSubnetDPI_DISABLED = @"DISABLED";
NUSubnetDPI_ENABLED = @"ENABLED";
NUSubnetDPI_INHERITED = @"INHERITED";
NUSubnetDefaultAction_DROP_TRAFFIC = @"DROP_TRAFFIC";
NUSubnetDefaultAction_USE_UNDERLAY = @"USE_UNDERLAY";
NUSubnetEncryption_DISABLED = @"DISABLED";
NUSubnetEncryption_ENABLED = @"ENABLED";
NUSubnetEncryption_INHERITED = @"INHERITED";
NUSubnetEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSubnetEntityScope_GLOBAL = @"GLOBAL";
NUSubnetIPType_DUALSTACK = @"DUALSTACK";
NUSubnetIPType_IPV4 = @"IPV4";
NUSubnetMaintenanceMode_DISABLED = @"DISABLED";
NUSubnetMaintenanceMode_ENABLED = @"ENABLED";
NUSubnetMaintenanceMode_ENABLED_INHERITED = @"ENABLED_INHERITED";
NUSubnetMulticast_DISABLED = @"DISABLED";
NUSubnetMulticast_ENABLED = @"ENABLED";
NUSubnetMulticast_INHERITED = @"INHERITED";
NUSubnetPATEnabled_DISABLED = @"DISABLED";
NUSubnetPATEnabled_ENABLED = @"ENABLED";
NUSubnetPATEnabled_INHERITED = @"INHERITED";
NUSubnetUnderlayEnabled_DISABLED = @"DISABLED";
NUSubnetUnderlayEnabled_ENABLED = @"ENABLED";
NUSubnetUnderlayEnabled_INHERITED = @"INHERITED";
NUSubnetUseGlobalMAC_DISABLED = @"DISABLED";
NUSubnetUseGlobalMAC_ENABLED = @"ENABLED";


/*!
    This is the definition of a subnet associated with a Zone.
*/
@implementation NUSubnet : NURESTObject
{
    /*!
        None
    */
    CPString _PATEnabled @accessors(property=PATEnabled);
    /*!
        None
    */
    CPString _DHCPRelayStatus @accessors(property=DHCPRelayStatus);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        IPv4 or DUALSTACK
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        The IPv6 address of the gateway of this subnet
    */
    CPString _IPv6Gateway @accessors(property=IPv6Gateway);
    /*!
        maintenanceMode is an enum that indicates if the SubNetwork is accepting VM activation requests.
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
        The IP address of the gateway of this subnet
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        None
    */
    CPString _gatewayMACAddress @accessors(property=gatewayMACAddress);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        If PAT is disabled then this flag indicates what to do if routes don't exist in overlay, will default to drop | possible values USE_UNDERLAY, DROP_TRAFFIC Possible values are USE_UNDERLAY, DROP_TRAFFIC, .
    */
    CPString _defaultAction @accessors(property=defaultAction);
    /*!
        The ID of the subnet template that this subnet object was derived from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The service ID used by the VSCs to identify this subnet
    */
    CPNumber _serviceID @accessors(property=serviceID);
    /*!
        A description field provided by the user that identifies the subnet
    */
    CPString _description @accessors(property=description);
    /*!
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Current Network's  globally unique  VXLAN network identifier generated by VSD
    */
    CPNumber _vnId @accessors(property=vnId);
    /*!
        Determines whether or not IPSEC is enabled.
    */
    CPString _encryption @accessors(property=encryption);
    /*!
        Read Only Boolean flag to indicate whether underlay is enabled directly or indirectly
    */
    BOOL _underlay @accessors(property=underlay);
    /*!
        Indicates whether UNDERLAY is enabled for the subnets in this domain
    */
    CPString _underlayEnabled @accessors(property=underlayEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        PG ID for the subnet. This is unique per domain and will be in the range 1-4095
    */
    CPNumber _policyGroupID @accessors(property=policyGroupID);
    /*!
        Route distinguisher for this subnet that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Route target for this subnet that is used by the BGP-EVPN protocol in VSC. Supported formats are: [2-byte ASN]:[4-byte value] or [4-byte ASN]:[2-byte value]
    */
    CPString _routeTarget @accessors(property=routeTarget);
    /*!
        Need to add correct description
    */
    BOOL _splitSubnet @accessors(property=splitSubnet);
    /*!
         when set VRS will act as  ARP Proxy
    */
    BOOL _proxyARP @accessors(property=proxyARP);
    /*!
        if this flag is enabled, the system configured globalMACAddress will be used as the gateway mac address
    */
    CPString _useGlobalMAC @accessors(property=useGlobalMAC);
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
        The ID of the Multi Cast Channel Map  this Subnet/Subnet Template is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of public subnet that is associated with this subnet
    */
    CPString _associatedSharedNetworkResourceID @accessors(property=associatedSharedNetworkResourceID);
    /*!
        when set to true means public subnet under a public zone
    */
    BOOL _public @accessors(property=public);
    /*!
        multicast is enum that indicates multicast policy on Subnet/Subnet Template.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUAddressRangesFetcher _childrenAddressRanges @accessors(property=childrenAddressRanges);
    NUVMResyncsFetcher _childrenVMResyncs @accessors(property=childrenVMResyncs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUIKEGatewayConnectionsFetcher _childrenIKEGatewayConnections @accessors(property=childrenIKEGatewayConnections);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUContainerResyncsFetcher _childrenContainerResyncs @accessors(property=childrenContainerResyncs);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUIPReservationsFetcher _childrenIPReservations @accessors(property=childrenIPReservations);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"subnet";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"PATEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPRelayStatus"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"IPv6Gateway"];
        [self exposeLocalKeyPathToREST:@"maintenanceMode"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayMACAddress"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"defaultAction"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"serviceID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"vnId"];
        [self exposeLocalKeyPathToREST:@"encryption"];
        [self exposeLocalKeyPathToREST:@"underlay"];
        [self exposeLocalKeyPathToREST:@"underlayEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyGroupID"];
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"routeTarget"];
        [self exposeLocalKeyPathToREST:@"splitSubnet"];
        [self exposeLocalKeyPathToREST:@"proxyARP"];
        [self exposeLocalKeyPathToREST:@"useGlobalMAC"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectType"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSharedNetworkResourceID"];
        [self exposeLocalKeyPathToREST:@"public"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenAddressRanges = [NUAddressRangesFetcher fetcherWithParentObject:self];
        _childrenVMResyncs = [NUVMResyncsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayConnections = [NUIKEGatewayConnectionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenContainerResyncs = [NUContainerResyncsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenIPReservations = [NUIPReservationsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _PATEnabled = @"INHERITED";
        _multicast = @"INHERITED";
        _IPType = @"IPV4";
        _maintenanceMode = @"DISABLED";
        
    }

    return self;
}

@end