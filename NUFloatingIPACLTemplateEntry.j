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

NUFloatingIPACLTemplateEntryAction_DROP = @"DROP";
NUFloatingIPACLTemplateEntryAction_FORWARD = @"FORWARD";
NUFloatingIPACLTemplateEntryAction_REDIRECT = @"REDIRECT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ALARM = @"ALARM";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GROUP = @"GROUP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_HSC = @"HSC";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_JOB = @"JOB";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_METADATA = @"METADATA";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT = @"PORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_RESYNC = @"RESYNC";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SITE = @"SITE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_USER = @"USER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VLAN = @"VLAN";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORT = @"VPORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VRS = @"VRS";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VSC = @"VSC";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VSD = @"VSD";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_VSP = @"VSP";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ZONE = @"ZONE";
NUFloatingIPACLTemplateEntryAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUFloatingIPACLTemplateEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUFloatingIPACLTemplateEntryEntityScope_GLOBAL = @"GLOBAL";
NUFloatingIPACLTemplateEntryLocationType_ANY = @"ANY";
NUFloatingIPACLTemplateEntryLocationType_POLICYGROUP = @"POLICYGROUP";
NUFloatingIPACLTemplateEntryLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUFloatingIPACLTemplateEntryLocationType_SUBNET = @"SUBNET";
NUFloatingIPACLTemplateEntryLocationType_VPORTTAG = @"VPORTTAG";
NUFloatingIPACLTemplateEntryLocationType_ZONE = @"ZONE";
NUFloatingIPACLTemplateEntryNetworkType_ANY = @"ANY";
NUFloatingIPACLTemplateEntryNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUFloatingIPACLTemplateEntryNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUFloatingIPACLTemplateEntryNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUFloatingIPACLTemplateEntryNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUFloatingIPACLTemplateEntryNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUFloatingIPACLTemplateEntryNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUFloatingIPACLTemplateEntryNetworkType_POLICYGROUP = @"POLICYGROUP";
NUFloatingIPACLTemplateEntryNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUFloatingIPACLTemplateEntryNetworkType_SUBNET = @"SUBNET";
NUFloatingIPACLTemplateEntryNetworkType_ZONE = @"ZONE";
NUFloatingIPACLTemplateEntryPolicyState_DRAFT = @"DRAFT";
NUFloatingIPACLTemplateEntryPolicyState_LIVE = @"LIVE";


/*!
    Defines the template of Egress ACL Template entries
*/
@implementation NUFloatingIPACLTemplateEntry : NURESTObject
{
    /*!
        The ICMP Code when protocol selected is ICMP
    */
    CPString _ICMPCode @accessors(property=ICMPCode);
    /*!
        The ICMP Type when protocol selected is ICMP
    */
    CPString _ICMPType @accessors(property=ICMPType);
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, macentries will use this adress as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        True means that this ACL entry is reflexive, so there will be a corresponding rule that will be created by OVS in the network. False means that there is no corresponding rule created by OVS in the network.
    */
    BOOL _reflexive @accessors(property=reflexive);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        The destination network entity that is referenced(subnet/zone/macro)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network -    VM_SUBNET or VM_ZONE or VM_DOMAIN or SUBNET or ZONE or ENTERPRISE_NETWORK or PUBLIC_NETWORK or ANY
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        This is the ID of the mirrorDestination entity associated with this entity
    */
    CPString _mirrorDestinationID @accessors(property=mirrorDestinationID);
    /*!
        Is flow logging enabled for this particular template
    */
    BOOL _flowLoggingEnabled @accessors(property=flowLoggingEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The ID of the location entity (Subnet/Zone/VportTag)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the location entity - ANY or SUBNET or ZONE or VPORTTAG
    */
    CPString _locationType @accessors(property=locationType);
    /*!
        State of the policy. 
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        The associated application ID
    */
    CPString _associatedApplicationID @accessors(property=associatedApplicationID);
    /*!
        The associated application object ID
    */
    CPString _associatedApplicationObjectID @accessors(property=associatedApplicationObjectID);
    /*!
        The associated application object type
    */
    CPString _associatedApplicationObjectType @accessors(property=associatedApplicationObjectType);
    /*!
        ID of the associated live entity
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        True means that this ACL entry is stateful, so there will be a corresponding rule that will be created by OVS in the network. False means that there is no corresponding rule created by OVS in the network.
    */
    BOOL _stateful @accessors(property=stateful);
    /*!
        The statsID that is created in the VSD and identifies this ACL Template Entry. This is auto-generated by VSD
    */
    CPString _statsID @accessors(property=statsID);
    /*!
        Is stats logging enabled for this particular template
    */
    BOOL _statsLoggingEnabled @accessors(property=statsLoggingEnabled);
    /*!
        Ether type of the packet to be matched. etherType can be * or a valid hexadecimal value
    */
    CPString _etherType @accessors(property=etherType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressfloatingipaclentrytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ICMPCode"];
        [self exposeLocalKeyPathToREST:@"ICMPType"];
        [self exposeLocalKeyPathToREST:@"DSCP"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"reflexive"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectType"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"stateful"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end