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
@import "Fetchers/NUEventLogsFetcher.j"

NUFlowForwardingPolicyAssociatedNetworkObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ALARM = @"ALARM";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_FLOW = @"APPD_FLOW";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPD_TIER = @"APPD_TIER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_APPLICATION = @"APPLICATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGPPEER = @"BGPPEER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_CERTIFICATE = @"CERTIFICATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUFlowForwardingPolicyAssociatedNetworkObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DC_CONFIG = @"DC_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DISKSTATS = @"DISKSTATS";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN = @"DOMAIN";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUFlowForwardingPolicyAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENDPOINT = @"ENDPOINT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE = @"ENTERPRISE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EVENT_LOG = @"EVENT_LOG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_FLOATINGIP = @"FLOATINGIP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUFlowForwardingPolicyAssociatedNetworkObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY = @"GATEWAY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GROUP = @"GROUP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUFlowForwardingPolicyAssociatedNetworkObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_HSC = @"HSC";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_PSK = @"IKE_PSK";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_IP_BINDING = @"IP_BINDING";
NUFlowForwardingPolicyAssociatedNetworkObjectType_JOB = @"JOB";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUFlowForwardingPolicyAssociatedNetworkObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_L2DOMAIN = @"L2DOMAIN";
NUFlowForwardingPolicyAssociatedNetworkObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUFlowForwardingPolicyAssociatedNetworkObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_LICENSE = @"LICENSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_LOCATION = @"LOCATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MC_LIST = @"MC_LIST";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MC_RANGE = @"MC_RANGE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_METADATA = @"METADATA";
NUFlowForwardingPolicyAssociatedNetworkObjectType_METADATA_TAG = @"METADATA_TAG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSGATEWAY = @"NSGATEWAY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSPORT = @"NSPORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PATNATPOOL = @"PATNATPOOL";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PERMISSION = @"PERMISSION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT = @"PORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT_MR = @"PORT_MR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT_PUSH = @"PORT_PUSH";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUFlowForwardingPolicyAssociatedNetworkObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_RESYNC = @"RESYNC";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SITE = @"SITE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SITE_REQ = @"SITE_REQ";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SITE_RES = @"SITE_RES";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATISTICS = @"STATISTICS";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATSSERVER = @"STATSSERVER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATS_POLICY = @"STATS_POLICY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_STATS_TCA = @"STATS_TCA";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SUBNET = @"SUBNET";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUFlowForwardingPolicyAssociatedNetworkObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUFlowForwardingPolicyAssociatedNetworkObjectType_UPLINK_RD = @"UPLINK_RD";
NUFlowForwardingPolicyAssociatedNetworkObjectType_USER = @"USER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VLAN = @"VLAN";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORT = @"VPORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORTTAG = @"VPORTTAG";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VRS = @"VRS";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VSC = @"VSC";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VSD = @"VSD";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUFlowForwardingPolicyAssociatedNetworkObjectType_VSP = @"VSP";
NUFlowForwardingPolicyAssociatedNetworkObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ZONE = @"ZONE";
NUFlowForwardingPolicyAssociatedNetworkObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUFlowForwardingPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUFlowForwardingPolicyEntityScope_GLOBAL = @"GLOBAL";
NUFlowForwardingPolicyType_SERVICECHAIN = @"SERVICECHAIN";
NUFlowForwardingPolicyType_SERVICEPROVIDER = @"SERVICEPROVIDER";


/*!
    The redirect policy on the flow.
*/
@implementation NUFlowForwardingPolicy : NURESTObject
{
    /*!
        The associated service id.
    */
    CPString _redirectTargetID @accessors(property=redirectTargetID);
    /*!
        The destination address overwrite. Needs to be in CIDR format x.x.x.x/n
    */
    CPString _destinationAddressOverwrite @accessors(property=destinationAddressOverwrite);
    /*!
        The associated service id.
    */
    CPString _flowID @accessors(property=flowID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The source address overwrite. Needs to be in CIDR format x.x.x.x/n
    */
    CPString _sourceAddressOverwrite @accessors(property=sourceAddressOverwrite);
    /*!
        The associated service id.
    */
    CPString _associatedApplicationServiceID @accessors(property=associatedApplicationServiceID);
    /*!
        The associated network object id.
    */
    CPString _associatedNetworkObjectID @accessors(property=associatedNetworkObjectID);
    /*!
        The associated network object type. Refer to API section for supported types.
    */
    CPString _associatedNetworkObjectType @accessors(property=associatedNetworkObjectType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The redirect type.
    */
    CPString _type @accessors(property=type);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"flowforwardingpolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"redirectTargetID"];
        [self exposeLocalKeyPathToREST:@"destinationAddressOverwrite"];
        [self exposeLocalKeyPathToREST:@"flowID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"sourceAddressOverwrite"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationServiceID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end