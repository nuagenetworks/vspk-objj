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

@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"

NUFlowSecurityPolicyAction_DROP = @"DROP";
NUFlowSecurityPolicyAction_FORWARD = @"FORWARD";
NUFlowSecurityPolicyAction_REDIRECT = @"REDIRECT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ALARM = @"ALARM";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_FLOW = @"APPD_FLOW";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPD_TIER = @"APPD_TIER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_APPLICATION = @"APPLICATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGPPEER = @"BGPPEER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_CERTIFICATE = @"CERTIFICATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUFlowSecurityPolicyAssociatedNetworkObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DC_CONFIG = @"DC_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DISKSTATS = @"DISKSTATS";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN = @"DOMAIN";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUFlowSecurityPolicyAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENDPOINT = @"ENDPOINT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE = @"ENTERPRISE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EVENT_LOG = @"EVENT_LOG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_FLOATINGIP = @"FLOATINGIP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUFlowSecurityPolicyAssociatedNetworkObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY = @"GATEWAY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GROUP = @"GROUP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUFlowSecurityPolicyAssociatedNetworkObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_HSC = @"HSC";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_PSK = @"IKE_PSK";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_IP_BINDING = @"IP_BINDING";
NUFlowSecurityPolicyAssociatedNetworkObjectType_JOB = @"JOB";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUFlowSecurityPolicyAssociatedNetworkObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_L2DOMAIN = @"L2DOMAIN";
NUFlowSecurityPolicyAssociatedNetworkObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUFlowSecurityPolicyAssociatedNetworkObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_LICENSE = @"LICENSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_LOCATION = @"LOCATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MC_LIST = @"MC_LIST";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MC_RANGE = @"MC_RANGE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_METADATA = @"METADATA";
NUFlowSecurityPolicyAssociatedNetworkObjectType_METADATA_TAG = @"METADATA_TAG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSGATEWAY = @"NSGATEWAY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSPORT = @"NSPORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PATNATPOOL = @"PATNATPOOL";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PERMISSION = @"PERMISSION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT = @"PORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT_MR = @"PORT_MR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT_PUSH = @"PORT_PUSH";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUFlowSecurityPolicyAssociatedNetworkObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_RESYNC = @"RESYNC";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SITE = @"SITE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SITE_REQ = @"SITE_REQ";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SITE_RES = @"SITE_RES";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATISTICS = @"STATISTICS";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATSSERVER = @"STATSSERVER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATS_POLICY = @"STATS_POLICY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_STATS_TCA = @"STATS_TCA";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SUBNET = @"SUBNET";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUFlowSecurityPolicyAssociatedNetworkObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUFlowSecurityPolicyAssociatedNetworkObjectType_UPLINK_RD = @"UPLINK_RD";
NUFlowSecurityPolicyAssociatedNetworkObjectType_USER = @"USER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VLAN = @"VLAN";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORT = @"VPORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORTTAG = @"VPORTTAG";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VRS = @"VRS";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VSC = @"VSC";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VSD = @"VSD";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUFlowSecurityPolicyAssociatedNetworkObjectType_VSP = @"VSP";
NUFlowSecurityPolicyAssociatedNetworkObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ZONE = @"ZONE";
NUFlowSecurityPolicyAssociatedNetworkObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUFlowSecurityPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUFlowSecurityPolicyEntityScope_GLOBAL = @"GLOBAL";


/*!
    The security policy on the flow.
*/
@implementation NUFlowSecurityPolicy : NURESTObject
{
    /*!
        The flow action. The action can be either FORWARD or DROP.
    */
    CPString _action @accessors(property=action);
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
        The destination address overwrite. Needs to be in CIDR format x.x.x.x/n
    */
    CPString _destinationAddressOverwrite @accessors(property=destinationAddressOverwrite);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The associated service id.
    */
    CPString _flowID @accessors(property=flowID);
    /*!
        The priority of the flow security policy that determines the order of entries.
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        The source address overwrite. Needs to be in CIDR format x.x.x.x/n
    */
    CPString _sourceAddressOverwrite @accessors(property=sourceAddressOverwrite);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"flowsecuritypolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationServiceID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectType"];
        [self exposeLocalKeyPathToREST:@"destinationAddressOverwrite"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"flowID"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"sourceAddressOverwrite"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        _action = @"FORWARD";
        
    }

    return self;
}

@end