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
@import "Fetchers/NUSubnetsFetcher.j"

NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ALARM = @"ALARM";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_APPLICATION = @"APPD_APPLICATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_FLOW = @"APPD_FLOW";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_SERVICE = @"APPD_SERVICE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPD_TIER = @"APPD_TIER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_APPLICATION = @"APPLICATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGPPEER = @"BGPPEER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGP_PROFILE = @"BGP_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BOOTSTRAP = @"BOOTSTRAP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_CERTIFICATE = @"CERTIFICATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DC_CONFIG = @"DC_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DHCP_OPTION = @"DHCP_OPTION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DISKSTATS = @"DISKSTATS";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN = @"DOMAIN";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_ACL = @"EGRESS_ACL";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENDPOINT = @"ENDPOINT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EVENT_LOG = @"EVENT_LOG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EXPORTIMPORT = @"EXPORTIMPORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_FLOATINGIP = @"FLOATINGIP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY = @"GATEWAY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GEO_VM_REQ = @"GEO_VM_REQ";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GEO_VM_RES = @"GEO_VM_RES";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GROUP = @"GROUP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_HEALTH_REQ = @"HEALTH_REQ";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_HOSTINTERFACE = @"HOSTINTERFACE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_HSC = @"HSC";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_GATEWAY = @"IKE_GATEWAY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_PSK = @"IKE_PSK";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_SUBNET = @"IKE_SUBNET";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ACL = @"INGRESS_ACL";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IP_BINDING = @"IP_BINDING";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_JOB = @"JOB";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_L2DOMAIN = @"L2DOMAIN";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_LDAP_CONFIG = @"LDAP_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_LICENSE = @"LICENSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_LOCATION = @"LOCATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MC_LIST = @"MC_LIST";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MC_RANGE = @"MC_RANGE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_METADATA = @"METADATA";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_METADATA_TAG = @"METADATA_TAG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MONITORING_PORT = @"MONITORING_PORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NATMAPENTRY = @"NATMAPENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSGATEWAY = @"NSGATEWAY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSPORT = @"NSPORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PATNATPOOL = @"PATNATPOOL";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PERMISSION = @"PERMISSION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_POLICING_POLICY = @"POLICING_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_POLICY_DECISION = @"POLICY_DECISION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_POLICY_GROUP = @"POLICY_GROUP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT = @"PORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT_MR = @"PORT_MR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT_PUSH = @"PORT_PUSH";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_RATE_LIMITER = @"RATE_LIMITER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_RESYNC = @"RESYNC";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ROUTING_POLICY = @"ROUTING_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_RTRD_ENTITY = @"RTRD_ENTITY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SHAPING_POLICY = @"SHAPING_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SITE = @"SITE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SITE_REQ = @"SITE_REQ";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SITE_RES = @"SITE_RES";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATIC_ROUTE = @"STATIC_ROUTE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATISTICS = @"STATISTICS";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATSSERVER = @"STATSSERVER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATS_POLICY = @"STATS_POLICY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_STATS_TCA = @"STATS_TCA";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SUBNET = @"SUBNET";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_UNSUPPORTED = @"UNSUPPORTED";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_UPLINK_RD = @"UPLINK_RD";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_USER = @"USER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VIRTUAL_IP = @"VIRTUAL_IP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VLAN = @"VLAN";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VM_INTERFACE = @"VM_INTERFACE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPN_CONNECT = @"VPN_CONNECT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORT = @"VPORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORTTAG = @"VPORTTAG";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORT_MIRROR = @"VPORT_MIRROR";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VRS = @"VRS";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VSC = @"VSC";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VSD = @"VSD";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VSD_COMPONENT = @"VSD_COMPONENT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_VSP = @"VSP";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_WAN_SERVICE = @"WAN_SERVICE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ZONE = @"ZONE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUIKEGatewayConnectionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayConnectionEntityScope_GLOBAL = @"GLOBAL";
NUIKEGatewayConnectionNSGIdentifierType_ID_DER_ASN1_DN = @"ID_DER_ASN1_DN";
NUIKEGatewayConnectionNSGIdentifierType_ID_FQDN = @"ID_FQDN";
NUIKEGatewayConnectionNSGIdentifierType_ID_IPV4_ADDR = @"ID_IPV4_ADDR";
NUIKEGatewayConnectionNSGIdentifierType_ID_KEY_ID = @"ID_KEY_ID";
NUIKEGatewayConnectionNSGIdentifierType_ID_RFC822_ADDR = @"ID_RFC822_ADDR";
NUIKEGatewayConnectionNSGRole_INITIATOR = @"INITIATOR";
NUIKEGatewayConnectionNSGRole_RESPONDER = @"RESPONDER";


/*!
    Represents an IKE Gateway Connection object
*/
@implementation NUIKEGatewayConnection : NURESTObject
{
    /*!
        NSG Identifier. Null to take on the default 'uuid'
    */
    CPString _NSGIdentifier @accessors(property=NSGIdentifier);
    /*!
        NSG Identifier Type. 
    */
    CPString _NSGIdentifierType @accessors(property=NSGIdentifierType);
    /*!
        NSG role
    */
    CPString _NSGRole @accessors(property=NSGRole);
    /*!
        Optional Name of the connection
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        
    */
    CPNumber _sequence @accessors(property=sequence);
    /*!
        Allow any local subnets to be used
    */
    BOOL _allowAnySubnet @accessors(property=allowAnySubnet);
    /*!
        Unencrypted PSK
    */
    CPString _unencryptedPSK @accessors(property=unencryptedPSK);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The Name of the Port and Vlan the IKEv2 Connection is on
    */
    CPString _portVLANName @accessors(property=portVLANName);
    /*!
        Priority of the IKEv2 Gateway Connection
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Associated Authentication ID
    */
    CPString _associatedIKEAuthenticationID @accessors(property=associatedIKEAuthenticationID);
    /*!
        Associated Authentication Type
    */
    CPString _associatedIKEAuthenticationType @accessors(property=associatedIKEAuthenticationType);
    /*!
        The ID of the associated IKEEncryptionProfile
    */
    CPString _associatedIKEEncryptionProfileID @accessors(property=associatedIKEEncryptionProfileID);
    /*!
        The ID of the associated IKEGatewayProfile
    */
    CPString _associatedIKEGatewayProfileID @accessors(property=associatedIKEGatewayProfileID);
    /*!
        The ID of the associated Vlan
    */
    CPString _associatedVLANID @accessors(property=associatedVLANID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ikegatewayconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"NSGIdentifier"];
        [self exposeLocalKeyPathToREST:@"NSGIdentifierType"];
        [self exposeLocalKeyPathToREST:@"NSGRole"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"sequence"];
        [self exposeLocalKeyPathToREST:@"allowAnySubnet"];
        [self exposeLocalKeyPathToREST:@"unencryptedPSK"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"portVLANName"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationType"];
        [self exposeLocalKeyPathToREST:@"associatedIKEEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEGatewayProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedVLANID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end