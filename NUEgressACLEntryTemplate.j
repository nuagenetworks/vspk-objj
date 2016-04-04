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
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"

NUEgressACLEntryTemplateAction_DROP = @"DROP";
NUEgressACLEntryTemplateAction_FORWARD = @"FORWARD";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ALARM = @"ALARM";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GROUP = @"GROUP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_HSC = @"HSC";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_PSK = @"IKE_PSK";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_JOB = @"JOB";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_METADATA = @"METADATA";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT = @"PORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT_PUSH = @"PORT_PUSH";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_RESYNC = @"RESYNC";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SITE = @"SITE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_USER = @"USER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VLAN = @"VLAN";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORT = @"VPORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VRS = @"VRS";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VSC = @"VSC";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VSD = @"VSD";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_VSP = @"VSP";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ZONE = @"ZONE";
NUEgressACLEntryTemplateAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUEgressACLEntryTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEgressACLEntryTemplateEntityScope_GLOBAL = @"GLOBAL";
NUEgressACLEntryTemplateLocationType_ANY = @"ANY";
NUEgressACLEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUEgressACLEntryTemplateLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUEgressACLEntryTemplateLocationType_SUBNET = @"SUBNET";
NUEgressACLEntryTemplateLocationType_VPORTTAG = @"VPORTTAG";
NUEgressACLEntryTemplateLocationType_ZONE = @"ZONE";
NUEgressACLEntryTemplateNetworkType_ANY = @"ANY";
NUEgressACLEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUEgressACLEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUEgressACLEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUEgressACLEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUEgressACLEntryTemplateNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUEgressACLEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUEgressACLEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUEgressACLEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUEgressACLEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUEgressACLEntryTemplateNetworkType_ZONE = @"ZONE";
NUEgressACLEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUEgressACLEntryTemplatePolicyState_LIVE = @"LIVE";


/*!
    Defines the template of Egress ACL Template entries
*/
@implementation NUEgressACLEntryTemplate : NURESTObject
{
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        The ICMP Code when selected protocol is ICMP
    */
    CPString _ICMPCode @accessors(property=ICMPCode);
    /*!
        The ICMP Type when selected protocol is ICMP
    */
    CPString _ICMPType @accessors(property=ICMPType);
    /*!
        The action of the ACL entry.
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, macentries will use this adress as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
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
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Ether type of the packet to be matched. etherType can be * or a valid hexadecimal value
    */
    CPString _etherType @accessors(property=etherType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Is flow logging enabled for this particular template
    */
    BOOL _flowLoggingEnabled @accessors(property=flowLoggingEnabled);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The ID of the location entity (Subnet/Zone/VportTag)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the location entity.
    */
    CPString _locationType @accessors(property=locationType);
    /*!
        Destination ID of the mirror destination object.
    */
    CPString _mirrorDestinationID @accessors(property=mirrorDestinationID);
    /*!
        The destination network entity that is referenced(subnet/zone/macro)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network.
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        State of the policy.  Possible values are DRAFT, LIVE, .
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        True means that this ACL entry is reflexive, so there will be a corresponding rule that will be created by OVS in the network. False means that there is no corresponding rule created by OVS in the network.
    */
    BOOL _reflexive @accessors(property=reflexive);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
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
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressaclentrytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DSCP"];
        [self exposeLocalKeyPathToREST:@"ICMPCode"];
        [self exposeLocalKeyPathToREST:@"ICMPType"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectType"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"reflexive"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"stateful"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
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