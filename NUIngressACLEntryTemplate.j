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

NUIngressACLEntryTemplateAction_DROP = @"DROP";
NUIngressACLEntryTemplateAction_FORWARD = @"FORWARD";
NUIngressACLEntryTemplateAction_REDIRECT = @"REDIRECT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ALARM = @"ALARM";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GROUP = @"GROUP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_HSC = @"HSC";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_JOB = @"JOB";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_METADATA = @"METADATA";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT = @"PORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SITE = @"SITE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_USER = @"USER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VLAN = @"VLAN";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VM_RESYNC = @"VM_RESYNC";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORT = @"VPORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VRS = @"VRS";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VSC = @"VSC";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VSD = @"VSD";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_VSP = @"VSP";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ZONE = @"ZONE";
NUIngressACLEntryTemplateAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUIngressACLEntryTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressACLEntryTemplateEntityScope_GLOBAL = @"GLOBAL";
NUIngressACLEntryTemplateLocationType_ANY = @"ANY";
NUIngressACLEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressACLEntryTemplateLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUIngressACLEntryTemplateLocationType_SUBNET = @"SUBNET";
NUIngressACLEntryTemplateLocationType_VPORTTAG = @"VPORTTAG";
NUIngressACLEntryTemplateLocationType_ZONE = @"ZONE";
NUIngressACLEntryTemplateNetworkType_ANY = @"ANY";
NUIngressACLEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressACLEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressACLEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressACLEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressACLEntryTemplateNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUIngressACLEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressACLEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUIngressACLEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressACLEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUIngressACLEntryTemplateNetworkType_ZONE = @"ZONE";
NUIngressACLEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUIngressACLEntryTemplatePolicyState_LIVE = @"LIVE";


/*!
    Defines the template of Ingress ACL entries
*/
@implementation NUIngressACLEntryTemplate : NURESTObject
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
        Overrides the source IPv6 for Ingress and destination IPv6 for Egress, macentries will use this adress as the match criteria.
    */
    CPString _IPv6AddressOverride @accessors(property=IPv6AddressOverride);
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry Possible values are DROP, FORWARD, REDIRECT, .
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
        The ID of the destination endpoint (Subnet/Zone/Macro/MacroGroup/PolicyGroup)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the destination endpoint (Subnet/Zone/Macro/MacroGroup/PolicyGroup)
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
        The ID of the source endpoint (Subnet/Zone/VportTag/PortGroup)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the source endpoint (Subnet/Zone/VportTag/PortGroup)
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
        The associated application object type Refer to API section for supported types.
    */
    CPString _associatedApplicationObjectType @accessors(property=associatedApplicationObjectType);
    /*!
        In the draft mode, the ACL entry refers to this LiveEntity. In non-drafted mode, this is null.
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
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ingressaclentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"IPv6AddressOverride"];
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
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"domainName"];
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