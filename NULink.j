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

NULinkAssociatedDestinationType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NULinkAssociatedDestinationType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NULinkAssociatedDestinationType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NULinkAssociatedDestinationType_ALARM = @"ALARM";
NULinkAssociatedDestinationType_APPD_APPLICATION = @"APPD_APPLICATION";
NULinkAssociatedDestinationType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NULinkAssociatedDestinationType_APPD_FLOW = @"APPD_FLOW";
NULinkAssociatedDestinationType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NULinkAssociatedDestinationType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NULinkAssociatedDestinationType_APPD_SERVICE = @"APPD_SERVICE";
NULinkAssociatedDestinationType_APPD_TIER = @"APPD_TIER";
NULinkAssociatedDestinationType_APPLICATION = @"APPLICATION";
NULinkAssociatedDestinationType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NULinkAssociatedDestinationType_AVATAR = @"AVATAR";
NULinkAssociatedDestinationType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NULinkAssociatedDestinationType_BGPPEER = @"BGPPEER";
NULinkAssociatedDestinationType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NULinkAssociatedDestinationType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NULinkAssociatedDestinationType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NULinkAssociatedDestinationType_BGP_PROFILE = @"BGP_PROFILE";
NULinkAssociatedDestinationType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NULinkAssociatedDestinationType_BOOTSTRAP = @"BOOTSTRAP";
NULinkAssociatedDestinationType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NULinkAssociatedDestinationType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NULinkAssociatedDestinationType_BULKSTATISTICS = @"BULKSTATISTICS";
NULinkAssociatedDestinationType_CERTIFICATE = @"CERTIFICATE";
NULinkAssociatedDestinationType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NULinkAssociatedDestinationType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NULinkAssociatedDestinationType_CONTAINER = @"CONTAINER";
NULinkAssociatedDestinationType_CONTAINER_DESCRIPTION = @"CONTAINER_DESCRIPTION";
NULinkAssociatedDestinationType_CONTAINER_INTERFACE = @"CONTAINER_INTERFACE";
NULinkAssociatedDestinationType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NULinkAssociatedDestinationType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NULinkAssociatedDestinationType_DC_CONFIG = @"DC_CONFIG";
NULinkAssociatedDestinationType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NULinkAssociatedDestinationType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NULinkAssociatedDestinationType_DHCP_OPTION = @"DHCP_OPTION";
NULinkAssociatedDestinationType_DISKSTATS = @"DISKSTATS";
NULinkAssociatedDestinationType_DOMAIN = @"DOMAIN";
NULinkAssociatedDestinationType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NULinkAssociatedDestinationType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NULinkAssociatedDestinationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NULinkAssociatedDestinationType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NULinkAssociatedDestinationType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NULinkAssociatedDestinationType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NULinkAssociatedDestinationType_EAM_VRS_METRICS = @"EAM_VRS_METRICS";
NULinkAssociatedDestinationType_EGRESS_ACL = @"EGRESS_ACL";
NULinkAssociatedDestinationType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NULinkAssociatedDestinationType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NULinkAssociatedDestinationType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NULinkAssociatedDestinationType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NULinkAssociatedDestinationType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NULinkAssociatedDestinationType_ENDPOINT = @"ENDPOINT";
NULinkAssociatedDestinationType_ENTERPRISE = @"ENTERPRISE";
NULinkAssociatedDestinationType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NULinkAssociatedDestinationType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NULinkAssociatedDestinationType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NULinkAssociatedDestinationType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NULinkAssociatedDestinationType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NULinkAssociatedDestinationType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NULinkAssociatedDestinationType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NULinkAssociatedDestinationType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NULinkAssociatedDestinationType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NULinkAssociatedDestinationType_EVENT_LOG = @"EVENT_LOG";
NULinkAssociatedDestinationType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NULinkAssociatedDestinationType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NULinkAssociatedDestinationType_EXPORTIMPORT = @"EXPORTIMPORT";
NULinkAssociatedDestinationType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NULinkAssociatedDestinationType_FETCH_HYPERVISOR_PROPERTIES = @"FETCH_HYPERVISOR_PROPERTIES";
NULinkAssociatedDestinationType_FLOATINGIP = @"FLOATINGIP";
NULinkAssociatedDestinationType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NULinkAssociatedDestinationType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NULinkAssociatedDestinationType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NULinkAssociatedDestinationType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_GATEWAY = @"GATEWAY";
NULinkAssociatedDestinationType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NULinkAssociatedDestinationType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NULinkAssociatedDestinationType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NULinkAssociatedDestinationType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NULinkAssociatedDestinationType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NULinkAssociatedDestinationType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NULinkAssociatedDestinationType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NULinkAssociatedDestinationType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NULinkAssociatedDestinationType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NULinkAssociatedDestinationType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NULinkAssociatedDestinationType_GATEWAY_STATE = @"GATEWAY_STATE";
NULinkAssociatedDestinationType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NULinkAssociatedDestinationType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NULinkAssociatedDestinationType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NULinkAssociatedDestinationType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NULinkAssociatedDestinationType_GEO_VM_REQ = @"GEO_VM_REQ";
NULinkAssociatedDestinationType_GEO_VM_RES = @"GEO_VM_RES";
NULinkAssociatedDestinationType_GROUP = @"GROUP";
NULinkAssociatedDestinationType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NULinkAssociatedDestinationType_HEALTH_REQ = @"HEALTH_REQ";
NULinkAssociatedDestinationType_HOSTINTERFACE = @"HOSTINTERFACE";
NULinkAssociatedDestinationType_HSC = @"HSC";
NULinkAssociatedDestinationType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NULinkAssociatedDestinationType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NULinkAssociatedDestinationType_IKE_ENCRYPTION_PROFILE_REQUEST = @"IKE_ENCRYPTION_PROFILE_REQUEST";
NULinkAssociatedDestinationType_IKE_GATEWAY = @"IKE_GATEWAY";
NULinkAssociatedDestinationType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NULinkAssociatedDestinationType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NULinkAssociatedDestinationType_IKE_GATEWAY_CONNECTION_REQUEST = @"IKE_GATEWAY_CONNECTION_REQUEST";
NULinkAssociatedDestinationType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NULinkAssociatedDestinationType_IKE_PSK = @"IKE_PSK";
NULinkAssociatedDestinationType_IKE_SUBNET = @"IKE_SUBNET";
NULinkAssociatedDestinationType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NULinkAssociatedDestinationType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NULinkAssociatedDestinationType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NULinkAssociatedDestinationType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NULinkAssociatedDestinationType_INGRESS_ACL = @"INGRESS_ACL";
NULinkAssociatedDestinationType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NULinkAssociatedDestinationType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NULinkAssociatedDestinationType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NULinkAssociatedDestinationType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NULinkAssociatedDestinationType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NULinkAssociatedDestinationType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NULinkAssociatedDestinationType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NULinkAssociatedDestinationType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NULinkAssociatedDestinationType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NULinkAssociatedDestinationType_IP_BINDING = @"IP_BINDING";
NULinkAssociatedDestinationType_JOB = @"JOB";
NULinkAssociatedDestinationType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NULinkAssociatedDestinationType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NULinkAssociatedDestinationType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NULinkAssociatedDestinationType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NULinkAssociatedDestinationType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NULinkAssociatedDestinationType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NULinkAssociatedDestinationType_L2DOMAIN = @"L2DOMAIN";
NULinkAssociatedDestinationType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NULinkAssociatedDestinationType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NULinkAssociatedDestinationType_LDAP_CONFIG = @"LDAP_CONFIG";
NULinkAssociatedDestinationType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NULinkAssociatedDestinationType_LICENSE = @"LICENSE";
NULinkAssociatedDestinationType_LICENSE_STATUS = @"LICENSE_STATUS";
NULinkAssociatedDestinationType_LINK = @"LINK";
NULinkAssociatedDestinationType_LINKED_DOMAIN_RESP = @"LINKED_DOMAIN_RESP";
NULinkAssociatedDestinationType_LOCATION = @"LOCATION";
NULinkAssociatedDestinationType_MACRO_GROUP_MED = @"MACRO_GROUP_MED";
NULinkAssociatedDestinationType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NULinkAssociatedDestinationType_MC_LIST = @"MC_LIST";
NULinkAssociatedDestinationType_MC_RANGE = @"MC_RANGE";
NULinkAssociatedDestinationType_METADATA = @"METADATA";
NULinkAssociatedDestinationType_METADATA_TAG = @"METADATA_TAG";
NULinkAssociatedDestinationType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NULinkAssociatedDestinationType_MONITORING_PORT = @"MONITORING_PORT";
NULinkAssociatedDestinationType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NULinkAssociatedDestinationType_NATMAPENTRY = @"NATMAPENTRY";
NULinkAssociatedDestinationType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NULinkAssociatedDestinationType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NULinkAssociatedDestinationType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NULinkAssociatedDestinationType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NULinkAssociatedDestinationType_NEXT_HOP = @"NEXT_HOP";
NULinkAssociatedDestinationType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NULinkAssociatedDestinationType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NULinkAssociatedDestinationType_NSGATEWAY = @"NSGATEWAY";
NULinkAssociatedDestinationType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NULinkAssociatedDestinationType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NULinkAssociatedDestinationType_NSG_INFO = @"NSG_INFO";
NULinkAssociatedDestinationType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NULinkAssociatedDestinationType_NSPORT = @"NSPORT";
NULinkAssociatedDestinationType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NULinkAssociatedDestinationType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NULinkAssociatedDestinationType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NULinkAssociatedDestinationType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NULinkAssociatedDestinationType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NULinkAssociatedDestinationType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NULinkAssociatedDestinationType_PATMAPPER = @"PATMAPPER";
NULinkAssociatedDestinationType_PATNATPOOL = @"PATNATPOOL";
NULinkAssociatedDestinationType_PAT_IP_ENTRY = @"PAT_IP_ENTRY";
NULinkAssociatedDestinationType_PERMISSION = @"PERMISSION";
NULinkAssociatedDestinationType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NULinkAssociatedDestinationType_POLICING_POLICY = @"POLICING_POLICY";
NULinkAssociatedDestinationType_POLICY_DECISION = @"POLICY_DECISION";
NULinkAssociatedDestinationType_POLICY_GROUP = @"POLICY_GROUP";
NULinkAssociatedDestinationType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NULinkAssociatedDestinationType_PORT = @"PORT";
NULinkAssociatedDestinationType_PORTMAPPING = @"PORTMAPPING";
NULinkAssociatedDestinationType_PORT_MR = @"PORT_MR";
NULinkAssociatedDestinationType_PORT_PUSH = @"PORT_PUSH";
NULinkAssociatedDestinationType_PORT_RANGE_MED = @"PORT_RANGE_MED";
NULinkAssociatedDestinationType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NULinkAssociatedDestinationType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NULinkAssociatedDestinationType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NULinkAssociatedDestinationType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NULinkAssociatedDestinationType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NULinkAssociatedDestinationType_RATE_LIMITER = @"RATE_LIMITER";
NULinkAssociatedDestinationType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NULinkAssociatedDestinationType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NULinkAssociatedDestinationType_ROUTING_POLICY = @"ROUTING_POLICY";
NULinkAssociatedDestinationType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NULinkAssociatedDestinationType_RTRD_ENTITY = @"RTRD_ENTITY";
NULinkAssociatedDestinationType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NULinkAssociatedDestinationType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NULinkAssociatedDestinationType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NULinkAssociatedDestinationType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NULinkAssociatedDestinationType_SHAPING_POLICY = @"SHAPING_POLICY";
NULinkAssociatedDestinationType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NULinkAssociatedDestinationType_SITE = @"SITE";
NULinkAssociatedDestinationType_SITE_REQ = @"SITE_REQ";
NULinkAssociatedDestinationType_SITE_RES = @"SITE_RES";
NULinkAssociatedDestinationType_STATIC_ROUTE = @"STATIC_ROUTE";
NULinkAssociatedDestinationType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NULinkAssociatedDestinationType_STATISTICS = @"STATISTICS";
NULinkAssociatedDestinationType_STATSSERVER = @"STATSSERVER";
NULinkAssociatedDestinationType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NULinkAssociatedDestinationType_STATS_POLICY = @"STATS_POLICY";
NULinkAssociatedDestinationType_STATS_TCA = @"STATS_TCA";
NULinkAssociatedDestinationType_SUBNET = @"SUBNET";
NULinkAssociatedDestinationType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NULinkAssociatedDestinationType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NULinkAssociatedDestinationType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NULinkAssociatedDestinationType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NULinkAssociatedDestinationType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NULinkAssociatedDestinationType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NULinkAssociatedDestinationType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NULinkAssociatedDestinationType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NULinkAssociatedDestinationType_UNSUPPORTED = @"UNSUPPORTED";
NULinkAssociatedDestinationType_UPLINK_RD = @"UPLINK_RD";
NULinkAssociatedDestinationType_USER = @"USER";
NULinkAssociatedDestinationType_VCENTER_FETCH_CLUSTERS = @"VCENTER_FETCH_CLUSTERS";
NULinkAssociatedDestinationType_VCENTER_FETCH_DATACENTERS = @"VCENTER_FETCH_DATACENTERS";
NULinkAssociatedDestinationType_VIRTUAL_IP = @"VIRTUAL_IP";
NULinkAssociatedDestinationType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NULinkAssociatedDestinationType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NULinkAssociatedDestinationType_VLAN = @"VLAN";
NULinkAssociatedDestinationType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NULinkAssociatedDestinationType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NULinkAssociatedDestinationType_VMWARE_ADD_CLUSTER_INSCOPE = @"VMWARE_ADD_CLUSTER_INSCOPE";
NULinkAssociatedDestinationType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NULinkAssociatedDestinationType_VMWARE_REMOVE_CLUSTER_INSCOPE = @"VMWARE_REMOVE_CLUSTER_INSCOPE";
NULinkAssociatedDestinationType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NULinkAssociatedDestinationType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NULinkAssociatedDestinationType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NULinkAssociatedDestinationType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NULinkAssociatedDestinationType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NULinkAssociatedDestinationType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NULinkAssociatedDestinationType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NULinkAssociatedDestinationType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NULinkAssociatedDestinationType_VMWARE_VRS_REDEPLOYMENT_POLICY = @"VMWARE_VRS_REDEPLOYMENT_POLICY";
NULinkAssociatedDestinationType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NULinkAssociatedDestinationType_VM_INTERFACE = @"VM_INTERFACE";
NULinkAssociatedDestinationType_VM_RESYNC = @"VM_RESYNC";
NULinkAssociatedDestinationType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NULinkAssociatedDestinationType_VPN_CONNECT = @"VPN_CONNECT";
NULinkAssociatedDestinationType_VPORT = @"VPORT";
NULinkAssociatedDestinationType_VPORTTAG = @"VPORTTAG";
NULinkAssociatedDestinationType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NULinkAssociatedDestinationType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NULinkAssociatedDestinationType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NULinkAssociatedDestinationType_VPORT_MIRROR = @"VPORT_MIRROR";
NULinkAssociatedDestinationType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NULinkAssociatedDestinationType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NULinkAssociatedDestinationType_VRS = @"VRS";
NULinkAssociatedDestinationType_VSC = @"VSC";
NULinkAssociatedDestinationType_VSD = @"VSD";
NULinkAssociatedDestinationType_VSD_COMPONENT = @"VSD_COMPONENT";
NULinkAssociatedDestinationType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NULinkAssociatedDestinationType_VSP = @"VSP";
NULinkAssociatedDestinationType_WAN_SERVICE = @"WAN_SERVICE";
NULinkAssociatedDestinationType_ZFB_AUTO_ASSIGNMENT = @"ZFB_AUTO_ASSIGNMENT";
NULinkAssociatedDestinationType_ZFB_AUTO_ASSIGNMENT_VALUE = @"ZFB_AUTO_ASSIGNMENT_VALUE";
NULinkAssociatedDestinationType_ZFB_GLOBAL = @"ZFB_GLOBAL";
NULinkAssociatedDestinationType_ZFB_REQUEST = @"ZFB_REQUEST";
NULinkAssociatedDestinationType_ZONE = @"ZONE";
NULinkAssociatedDestinationType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NULinkEntityScope_ENTERPRISE = @"ENTERPRISE";
NULinkEntityScope_GLOBAL = @"GLOBAL";


/*!
    This object represents the link between a source and destination domain in service chaining
*/
@implementation NULink : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        a way of filtering routes to be imported from source domain into the destination domain.
    */
    CPString _acceptanceCriteria @accessors(property=acceptanceCriteria);
    /*!
        This is set to true if a link has been created in the opposite direction
    */
    BOOL _readOnly @accessors(property=readOnly);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Associated destination ID
    */
    CPString _associatedDestinationID @accessors(property=associatedDestinationID);
    /*!
        Associated destination name
    */
    CPString _associatedDestinationName @accessors(property=associatedDestinationName);
    /*!
        Type of the entity type for the source
    */
    CPString _associatedDestinationType @accessors(property=associatedDestinationType);
    /*!
        This is the source leaking/exporting the routes to the destination
    */
    CPString _associatedSourceID @accessors(property=associatedSourceID);
    /*!
        Associated destination name
    */
    CPString _associatedSourceName @accessors(property=associatedSourceName);
    /*!
        Type of the entity type for the source
    */
    CPString _associatedSourceType @accessors(property=associatedSourceType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Denotes the type of domain linking via objects: hub-and-spoke domain linking, next hop IPs or VNS border router
    */
    CPString _type @accessors(property=type);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"link";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"acceptanceCriteria"];
        [self exposeLocalKeyPathToREST:@"readOnly"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationID"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationName"];
        [self exposeLocalKeyPathToREST:@"associatedDestinationType"];
        [self exposeLocalKeyPathToREST:@"associatedSourceID"];
        [self exposeLocalKeyPathToREST:@"associatedSourceName"];
        [self exposeLocalKeyPathToREST:@"associatedSourceType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end