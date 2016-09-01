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

NUDomainFIPAclTemplateEntryAction_DROP = @"DROP";
NUDomainFIPAclTemplateEntryAction_FORWARD = @"FORWARD";
NUDomainFIPAclTemplateEntryAction_REDIRECT = @"REDIRECT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ALARM = @"ALARM";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GROUP = @"GROUP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_HSC = @"HSC";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_JOB = @"JOB";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_METADATA = @"METADATA";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT = @"PORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SITE = @"SITE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_USER = @"USER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VLAN = @"VLAN";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VM_RESYNC = @"VM_RESYNC";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORT = @"VPORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VRS = @"VRS";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VSC = @"VSC";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VSD = @"VSD";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_VSP = @"VSP";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ZONE = @"ZONE";
NUDomainFIPAclTemplateEntryAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUDomainFIPAclTemplateEntryDestinationType_NETWORK = @"NETWORK";
NUDomainFIPAclTemplateEntryDestinationType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUDomainFIPAclTemplateEntryDestinationType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDomainFIPAclTemplateEntryEntityScope_GLOBAL = @"GLOBAL";
NUDomainFIPAclTemplateEntryLocationType_ANY = @"ANY";
NUDomainFIPAclTemplateEntryLocationType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUDomainFIPAclTemplateEntryLocationType_SUBNET = @"SUBNET";
NUDomainFIPAclTemplateEntryLocationType_VPORTTAG = @"VPORTTAG";
NUDomainFIPAclTemplateEntryLocationType_ZONE = @"ZONE";
NUDomainFIPAclTemplateEntryNetworkType_ANY = @"ANY";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUDomainFIPAclTemplateEntryNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUDomainFIPAclTemplateEntryNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUDomainFIPAclTemplateEntryNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUDomainFIPAclTemplateEntryNetworkType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUDomainFIPAclTemplateEntryNetworkType_SUBNET = @"SUBNET";
NUDomainFIPAclTemplateEntryNetworkType_ZONE = @"ZONE";
NUDomainFIPAclTemplateEntryPolicyState_DRAFT = @"DRAFT";
NUDomainFIPAclTemplateEntryPolicyState_LIVE = @"LIVE";
NUDomainFIPAclTemplateEntrySourceType_NETWORK = @"NETWORK";
NUDomainFIPAclTemplateEntrySourceType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUDomainFIPAclTemplateEntrySourceType_POLICYGROUP = @"POLICYGROUP";


/*!
    Defines the template of Egress Domain ACL Template entries
*/
@implementation NUDomainFIPAclTemplateEntry : NURESTObject
{
    /*!
        The name of the parent Template for this acl entry
    */
    CPString _ACLTemplateName @accessors(property=ACLTemplateName);
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
        Type of action to be performed when a ACL match criteria succeeds
    */
    NURESTObject _actionDetails @accessors(property=actionDetails);
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
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgId @accessors(property=destPgId);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgType @accessors(property=destPgType);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Network Type - either PolicyGroup or Network
    */
    CPString _destinationType @accessors(property=destinationType);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destinationValue @accessors(property=destinationValue);
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
        Type of the location entity - ANY or SUBNET or ZONE or VPORTTAG
    */
    CPString _locationType @accessors(property=locationType);
    /*!
        State of the policy. 
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The name of the domain/domain template for the aclTemplateNames parent
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourcePgId @accessors(property=sourcePgId);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourcePgType @accessors(property=sourcePgType);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        Location Type - either PolicyGroup or Network
    */
    CPString _sourceType @accessors(property=sourceType);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourceValue @accessors(property=sourceValue);
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
    return @"egressdomainfloatingipaclentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"DSCP"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"actionDetails"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"reflexive"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destPgId"];
        [self exposeLocalKeyPathToREST:@"destPgType"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"destinationType"];
        [self exposeLocalKeyPathToREST:@"destinationValue"];
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
        [self exposeLocalKeyPathToREST:@"sourcePgId"];
        [self exposeLocalKeyPathToREST:@"sourcePgType"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"sourceType"];
        [self exposeLocalKeyPathToREST:@"sourceValue"];
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