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
@import "Fetchers/NUStatisticsFetcher.j"

NUIngressAdvFwdEntryTemplateAction_DROP = @"DROP";
NUIngressAdvFwdEntryTemplateAction_FORWARD = @"FORWARD";
NUIngressAdvFwdEntryTemplateAction_REDIRECT = @"REDIRECT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ALARM = @"ALARM";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GROUP = @"GROUP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_HSC = @"HSC";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_JOB = @"JOB";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_METADATA = @"METADATA";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NODE_EXECUTION = @"NODE_EXECUTION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT = @"PORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SITE = @"SITE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_USER = @"USER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VLAN = @"VLAN";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VM_RESYNC = @"VM_RESYNC";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORT = @"VPORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VRS = @"VRS";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VSC = @"VSC";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VSD = @"VSD";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_VSP = @"VSP";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ZONE = @"ZONE";
NUIngressAdvFwdEntryTemplateAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUIngressAdvFwdEntryTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressAdvFwdEntryTemplateEntityScope_GLOBAL = @"GLOBAL";
NUIngressAdvFwdEntryTemplateFCOverride_A = @"A";
NUIngressAdvFwdEntryTemplateFCOverride_B = @"B";
NUIngressAdvFwdEntryTemplateFCOverride_C = @"C";
NUIngressAdvFwdEntryTemplateFCOverride_D = @"D";
NUIngressAdvFwdEntryTemplateFCOverride_E = @"E";
NUIngressAdvFwdEntryTemplateFCOverride_F = @"F";
NUIngressAdvFwdEntryTemplateFCOverride_G = @"G";
NUIngressAdvFwdEntryTemplateFCOverride_H = @"H";
NUIngressAdvFwdEntryTemplateFCOverride_NONE = @"NONE";
NUIngressAdvFwdEntryTemplateLocationType_ANY = @"ANY";
NUIngressAdvFwdEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressAdvFwdEntryTemplateLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUIngressAdvFwdEntryTemplateLocationType_SUBNET = @"SUBNET";
NUIngressAdvFwdEntryTemplateLocationType_VPORTTAG = @"VPORTTAG";
NUIngressAdvFwdEntryTemplateLocationType_ZONE = @"ZONE";
NUIngressAdvFwdEntryTemplateNetworkType_ANY = @"ANY";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressAdvFwdEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressAdvFwdEntryTemplateNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUIngressAdvFwdEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressAdvFwdEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUIngressAdvFwdEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressAdvFwdEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUIngressAdvFwdEntryTemplateNetworkType_ZONE = @"ZONE";
NUIngressAdvFwdEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUIngressAdvFwdEntryTemplatePolicyState_LIVE = @"LIVE";
NUIngressAdvFwdEntryTemplateUplinkPreference_DEFAULT = @"DEFAULT";
NUIngressAdvFwdEntryTemplateUplinkPreference_PRIMARY = @"PRIMARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SECONDARY = @"SECONDARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SYMMETRIC = @"SYMMETRIC";


/*!
    Defines the template of Ingress Advanced Forwarding entries
*/
@implementation NUIngressAdvFwdEntryTemplate : NURESTObject
{
    /*!
        The name of the parent Template for this acl entry
    */
    CPString _ACLTemplateName @accessors(property=ACLTemplateName);
    /*!
        The ICMP Code when protocol selected is ICMP.
    */
    CPString _ICMPCode @accessors(property=ICMPCode);
    /*!
        The ICMP Type when protocol selected is ICMP.
    */
    CPString _ICMPType @accessors(property=ICMPType);
    /*!
        Value of the Service Class to be overridden in the packet when the match conditions are satisfied Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPString _FCOverride @accessors(property=FCOverride);
    /*!
        Overrides the source IPv6 for Ingress and destination IPv6 for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _IPv6AddressOverride @accessors(property=IPv6AddressOverride);
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        Name of the entity.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry Possible values are DROP, FORWARD, REDIRECT, .
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        VPort tag to which traffic will be redirected to, when ACL entry match criteria succeeds
    */
    CPString _redirectVPortTagID @accessors(property=redirectVPortTagID);
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
        Type of the source network.
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        Destination ID of the mirror destination object.
    */
    CPString _mirrorDestinationID @accessors(property=mirrorDestinationID);
    /*!
        Is flow logging enabled for this particular template
    */
    BOOL _flowLoggingEnabled @accessors(property=flowLoggingEnabled);
    /*!
        The name of the enterprise for the domains parent
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The ID of the location entity (Subnet/Zone/VportTag)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the location entity.
    */
    CPString _locationType @accessors(property=locationType);
    /*!
        State of the policy.  Possible values are DRAFT, LIVE, .
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The name of the domain/domain template for the aclTemplateNames parent
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        Indicates the preferencial path selection for network traffic for this ACL - default is DEFAULT when the attribute is applicable.
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
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
        The associated application object type Refer to API section for supported types.
    */
    CPString _associatedApplicationObjectType @accessors(property=associatedApplicationObjectType);
    /*!
        In the draft mode, the ACL entry refers to this LiveEntity. In non-drafted mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
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
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ingressadvfwdentrytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ACLTemplateName"];
        [self exposeLocalKeyPathToREST:@"ICMPCode"];
        [self exposeLocalKeyPathToREST:@"ICMPType"];
        [self exposeLocalKeyPathToREST:@"FCOverride"];
        [self exposeLocalKeyPathToREST:@"IPv6AddressOverride"];
        [self exposeLocalKeyPathToREST:@"DSCP"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"redirectVPortTagID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectType"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        
        _protocol = 6;
        _etherType = @"0x0800";
        _DSCP = @"*";
        _locationType = @"ANY";
        _action = @"FORWARD";
        _networkType = @"ANY";
        
    }

    return self;
}

@end