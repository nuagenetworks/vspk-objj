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

NUIngressExternalServiceTemplateEntryAction_DROP = @"DROP";
NUIngressExternalServiceTemplateEntryAction_FORWARD = @"FORWARD";
NUIngressExternalServiceTemplateEntryAction_REDIRECT = @"REDIRECT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ALARM = @"ALARM";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_FLOW = @"APPD_FLOW";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPD_TIER = @"APPD_TIER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_APPLICATION = @"APPLICATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_BGPPEER = @"BGPPEER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_CERTIFICATE = @"CERTIFICATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DC_CONFIG = @"DC_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DISKSTATS = @"DISKSTATS";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN = @"DOMAIN";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENDPOINT = @"ENDPOINT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE = @"ENTERPRISE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EVENT_LOG = @"EVENT_LOG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_FLOATINGIP = @"FLOATINGIP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY = @"GATEWAY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GROUP = @"GROUP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_HSC = @"HSC";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_IKEV2_ENCRYPTION_PROFILE = @"IKEV2_ENCRYPTION_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_IKEV2_GATEWAY = @"IKEV2_GATEWAY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_IP_BINDING = @"IP_BINDING";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_JOB = @"JOB";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_L2DOMAIN = @"L2DOMAIN";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_LICENSE = @"LICENSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_LOCATION = @"LOCATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MC_LIST = @"MC_LIST";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MC_RANGE = @"MC_RANGE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_METADATA = @"METADATA";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_METADATA_TAG = @"METADATA_TAG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSGATEWAY = @"NSGATEWAY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSPORT = @"NSPORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PATNATPOOL = @"PATNATPOOL";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PERMISSION = @"PERMISSION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PORT = @"PORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PORT_MR = @"PORT_MR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_RESYNC = @"RESYNC";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SITE = @"SITE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SITE_REQ = @"SITE_REQ";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SITE_RES = @"SITE_RES";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATISTICS = @"STATISTICS";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATSSERVER = @"STATSSERVER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATS_POLICY = @"STATS_POLICY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_STATS_TCA = @"STATS_TCA";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SUBNET = @"SUBNET";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_UPLINK_RD = @"UPLINK_RD";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_USER = @"USER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VLAN = @"VLAN";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORT = @"VPORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORTTAG = @"VPORTTAG";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VRS = @"VRS";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VSC = @"VSC";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VSD = @"VSD";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_VSP = @"VSP";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ZONE = @"ZONE";
NUIngressExternalServiceTemplateEntryAssociatedApplicationObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUIngressExternalServiceTemplateEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressExternalServiceTemplateEntryEntityScope_GLOBAL = @"GLOBAL";
NUIngressExternalServiceTemplateEntryLocationType_ANY = @"ANY";
NUIngressExternalServiceTemplateEntryLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressExternalServiceTemplateEntryLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUIngressExternalServiceTemplateEntryLocationType_SUBNET = @"SUBNET";
NUIngressExternalServiceTemplateEntryLocationType_VPORTTAG = @"VPORTTAG";
NUIngressExternalServiceTemplateEntryLocationType_ZONE = @"ZONE";
NUIngressExternalServiceTemplateEntryNetworkType_ANY = @"ANY";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressExternalServiceTemplateEntryNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressExternalServiceTemplateEntryNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUIngressExternalServiceTemplateEntryNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressExternalServiceTemplateEntryNetworkType_POLICYGROUP = @"POLICYGROUP";
NUIngressExternalServiceTemplateEntryNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressExternalServiceTemplateEntryNetworkType_SUBNET = @"SUBNET";
NUIngressExternalServiceTemplateEntryNetworkType_ZONE = @"ZONE";
NUIngressExternalServiceTemplateEntryPolicyState_DRAFT = @"DRAFT";
NUIngressExternalServiceTemplateEntryPolicyState_LIVE = @"LIVE";


/*!
    Defines the template of Ingress External Service ACL entries
*/
@implementation NUIngressExternalServiceTemplateEntry : NURESTObject
{
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry
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
        The destination network entity that is referenced(subnet/zone/macro)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network.
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        State of the policy.
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
        VPort tag to which traffic will be redirected to, when ACL entry match criteria succeeds
    */
    CPString _redirectExternalServiceEndPointID @accessors(property=redirectExternalServiceEndPointID);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
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
    return @"ingressexternalserviceentrytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DSCP"];
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
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"redirectExternalServiceEndPointID"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end