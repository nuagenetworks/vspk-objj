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

NUIKEGatewayProfileAssociatedIKEAuthenticationType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ALARM = @"ALARM";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_APPLICATION = @"APPD_APPLICATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_FLOW = @"APPD_FLOW";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_SERVICE = @"APPD_SERVICE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPD_TIER = @"APPD_TIER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_APPLICATION = @"APPLICATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGPPEER = @"BGPPEER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGP_PROFILE = @"BGP_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BOOTSTRAP = @"BOOTSTRAP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_CERTIFICATE = @"CERTIFICATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DC_CONFIG = @"DC_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DHCP_OPTION = @"DHCP_OPTION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DISKSTATS = @"DISKSTATS";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN = @"DOMAIN";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_ACL = @"EGRESS_ACL";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENDPOINT = @"ENDPOINT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EVENT_LOG = @"EVENT_LOG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EXPORTIMPORT = @"EXPORTIMPORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_FLOATINGIP = @"FLOATINGIP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY = @"GATEWAY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GEO_VM_REQ = @"GEO_VM_REQ";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GEO_VM_RES = @"GEO_VM_RES";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GROUP = @"GROUP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_HEALTH_REQ = @"HEALTH_REQ";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_HOSTINTERFACE = @"HOSTINTERFACE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_HSC = @"HSC";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_GATEWAY = @"IKE_GATEWAY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_PSK = @"IKE_PSK";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_SUBNET = @"IKE_SUBNET";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ACL = @"INGRESS_ACL";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IP_BINDING = @"IP_BINDING";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_JOB = @"JOB";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_L2DOMAIN = @"L2DOMAIN";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_LDAP_CONFIG = @"LDAP_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_LICENSE = @"LICENSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_LOCATION = @"LOCATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MC_LIST = @"MC_LIST";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MC_RANGE = @"MC_RANGE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_METADATA = @"METADATA";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_METADATA_TAG = @"METADATA_TAG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MONITORING_PORT = @"MONITORING_PORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NATMAPENTRY = @"NATMAPENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSGATEWAY = @"NSGATEWAY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSPORT = @"NSPORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PATNATPOOL = @"PATNATPOOL";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PERMISSION = @"PERMISSION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_POLICING_POLICY = @"POLICING_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_POLICY_DECISION = @"POLICY_DECISION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_POLICY_GROUP = @"POLICY_GROUP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT = @"PORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT_MR = @"PORT_MR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT_PUSH = @"PORT_PUSH";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_RATE_LIMITER = @"RATE_LIMITER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_RESYNC = @"RESYNC";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ROUTING_POLICY = @"ROUTING_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_RTRD_ENTITY = @"RTRD_ENTITY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SHAPING_POLICY = @"SHAPING_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SITE = @"SITE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SITE_REQ = @"SITE_REQ";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SITE_RES = @"SITE_RES";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATIC_ROUTE = @"STATIC_ROUTE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATISTICS = @"STATISTICS";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATSSERVER = @"STATSSERVER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATS_POLICY = @"STATS_POLICY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_STATS_TCA = @"STATS_TCA";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SUBNET = @"SUBNET";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_UNSUPPORTED = @"UNSUPPORTED";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_UPLINK_RD = @"UPLINK_RD";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_USER = @"USER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VIRTUAL_IP = @"VIRTUAL_IP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VLAN = @"VLAN";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VM_INTERFACE = @"VM_INTERFACE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPN_CONNECT = @"VPN_CONNECT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORT = @"VPORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORTTAG = @"VPORTTAG";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORT_MIRROR = @"VPORT_MIRROR";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VRS = @"VRS";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VSC = @"VSC";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VSD = @"VSD";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VSD_COMPONENT = @"VSD_COMPONENT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_VSP = @"VSP";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_WAN_SERVICE = @"WAN_SERVICE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ZONE = @"ZONE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUIKEGatewayProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayProfileEntityScope_GLOBAL = @"GLOBAL";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_DER_ASN1_DN = @"ID_DER_ASN1_DN";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_FQDN = @"ID_FQDN";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_IPV4_ADDR = @"ID_IPV4_ADDR";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_KEY_ID = @"ID_KEY_ID";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_RFC822_ADDR = @"ID_RFC822_ADDR";
NUIKEGatewayProfileServiceClass_A = @"A";
NUIKEGatewayProfileServiceClass_B = @"B";
NUIKEGatewayProfileServiceClass_C = @"C";
NUIKEGatewayProfileServiceClass_D = @"D";
NUIKEGatewayProfileServiceClass_E = @"E";
NUIKEGatewayProfileServiceClass_F = @"F";
NUIKEGatewayProfileServiceClass_G = @"G";
NUIKEGatewayProfileServiceClass_H = @"H";
NUIKEGatewayProfileServiceClass_NONE = @"NONE";


/*!
    Represents an IKE Gateway
*/
@implementation NUIKEGatewayProfile : NURESTObject
{
    /*!
        IKE Gateway Identifier. Null to take on the default 'ipaddress'
    */
    CPString _IKEGatewayIdentifier @accessors(property=IKEGatewayIdentifier);
    /*!
        IKE Gateway Identifier Type.
    */
    CPString _IKEGatewayIdentifierType @accessors(property=IKEGatewayIdentifierType);
    /*!
        Allow any local subnets to be used
    */
    BOOL _antiReplayCheck @accessors(property=antiReplayCheck);
    /*!
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        Associated IKE Authentication ID
    */
    CPString _associatedIKEAuthenticationID @accessors(property=associatedIKEAuthenticationID);
    /*!
        Associated IKE Authentication Type
    */
    CPString _associatedIKEAuthenticationType @accessors(property=associatedIKEAuthenticationType);
    /*!
        The ID of the associated IKE Encryption Profile
    */
    CPString _associatedIKEEncryptionProfileID @accessors(property=associatedIKEEncryptionProfileID);
    /*!
        The IKE Gateway associated with this Profile. This is a read only attribute
    */
    CPString _associatedIKEGatewayID @accessors(property=associatedIKEGatewayID);
    /*!
        Description of the IKEv2 Gateway Profile
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the IKEv2 Gateway Profile
    */
    CPString _name @accessors(property=name);
    /*!
        Class of service to be used.  Service classes in order of priority are A, B, C, D, E, F, G, and H.
    */
    CPString _serviceClass @accessors(property=serviceClass);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ikegatewayprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"IKEGatewayIdentifier"];
        [self exposeLocalKeyPathToREST:@"IKEGatewayIdentifierType"];
        [self exposeLocalKeyPathToREST:@"antiReplayCheck"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationType"];
        [self exposeLocalKeyPathToREST:@"associatedIKEEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEGatewayID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"serviceClass"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end