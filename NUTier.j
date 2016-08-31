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

@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUTierAssociatedNetworkObjectType_ACLENTRY_LOCATION = @"ACLENTRY_LOCATION";
NUTierAssociatedNetworkObjectType_ADDRESS_RANGE = @"ADDRESS_RANGE";
NUTierAssociatedNetworkObjectType_ADDRESS_RANGE_STATE = @"ADDRESS_RANGE_STATE";
NUTierAssociatedNetworkObjectType_ALARM = @"ALARM";
NUTierAssociatedNetworkObjectType_APPD_APPLICATION = @"APPD_APPLICATION";
NUTierAssociatedNetworkObjectType_APPD_EXTERNAL_APP_SERVICE = @"APPD_EXTERNAL_APP_SERVICE";
NUTierAssociatedNetworkObjectType_APPD_FLOW = @"APPD_FLOW";
NUTierAssociatedNetworkObjectType_APPD_FLOW_FORWARDING_POLICY = @"APPD_FLOW_FORWARDING_POLICY";
NUTierAssociatedNetworkObjectType_APPD_FLOW_SECURITY_POLICY = @"APPD_FLOW_SECURITY_POLICY";
NUTierAssociatedNetworkObjectType_APPD_SERVICE = @"APPD_SERVICE";
NUTierAssociatedNetworkObjectType_APPD_TIER = @"APPD_TIER";
NUTierAssociatedNetworkObjectType_APPLICATION = @"APPLICATION";
NUTierAssociatedNetworkObjectType_AUTO_DISC_GATEWAY = @"AUTO_DISC_GATEWAY";
NUTierAssociatedNetworkObjectType_BACK_HAUL_SERVICE_RESP = @"BACK_HAUL_SERVICE_RESP";
NUTierAssociatedNetworkObjectType_BGPPEER = @"BGPPEER";
NUTierAssociatedNetworkObjectType_BGP_DAMPENING_MED_RESPONSE = @"BGP_DAMPENING_MED_RESPONSE";
NUTierAssociatedNetworkObjectType_BGP_NEIGHBOR = @"BGP_NEIGHBOR";
NUTierAssociatedNetworkObjectType_BGP_NEIGHBOR_MED_RESPONSE = @"BGP_NEIGHBOR_MED_RESPONSE";
NUTierAssociatedNetworkObjectType_BGP_PROFILE = @"BGP_PROFILE";
NUTierAssociatedNetworkObjectType_BGP_PROFILE_MED_RESPONSE = @"BGP_PROFILE_MED_RESPONSE";
NUTierAssociatedNetworkObjectType_BOOTSTRAP = @"BOOTSTRAP";
NUTierAssociatedNetworkObjectType_BOOTSTRAP_ACTIVATION = @"BOOTSTRAP_ACTIVATION";
NUTierAssociatedNetworkObjectType_BRIDGEINTERFACE = @"BRIDGEINTERFACE";
NUTierAssociatedNetworkObjectType_CERTIFICATE = @"CERTIFICATE";
NUTierAssociatedNetworkObjectType_CHILD_ENTITY_POLICY_CHANGE = @"CHILD_ENTITY_POLICY_CHANGE";
NUTierAssociatedNetworkObjectType_CLOUD_MGMT_SYSTEM = @"CLOUD_MGMT_SYSTEM";
NUTierAssociatedNetworkObjectType_CONTAINER_RESYNC = @"CONTAINER_RESYNC";
NUTierAssociatedNetworkObjectType_CUSTOMER_VRF_SEQUENCENO = @"CUSTOMER_VRF_SEQUENCENO";
NUTierAssociatedNetworkObjectType_DC_CONFIG = @"DC_CONFIG";
NUTierAssociatedNetworkObjectType_DHCP_ALLOC_MESSAGE = @"DHCP_ALLOC_MESSAGE";
NUTierAssociatedNetworkObjectType_DHCP_CONFIG_RESP = @"DHCP_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_DHCP_OPTION = @"DHCP_OPTION";
NUTierAssociatedNetworkObjectType_DISKSTATS = @"DISKSTATS";
NUTierAssociatedNetworkObjectType_DOMAIN = @"DOMAIN";
NUTierAssociatedNetworkObjectType_DOMAIN_CONFIG = @"DOMAIN_CONFIG";
NUTierAssociatedNetworkObjectType_DOMAIN_CONFIG_RESP = @"DOMAIN_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE";
NUTierAssociatedNetworkObjectType_DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"DOMAIN_FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_DOMAIN_TEMPLATE = @"DOMAIN_TEMPLATE";
NUTierAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_MAPPING = @"DSCP_FORWARDING_CLASS_MAPPING";
NUTierAssociatedNetworkObjectType_DSCP_FORWARDING_CLASS_TABLE = @"DSCP_FORWARDING_CLASS_TABLE";
NUTierAssociatedNetworkObjectType_EGRESS_ACL = @"EGRESS_ACL";
NUTierAssociatedNetworkObjectType_EGRESS_ACL_ENTRY = @"EGRESS_ACL_ENTRY";
NUTierAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE = @"EGRESS_ACL_TEMPLATE";
NUTierAssociatedNetworkObjectType_EGRESS_ACL_TEMPLATE_ENTRY = @"EGRESS_ACL_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_EGRESS_QOS_MR = @"EGRESS_QOS_MR";
NUTierAssociatedNetworkObjectType_EGRESS_QOS_PRIMITIVE = @"EGRESS_QOS_PRIMITIVE";
NUTierAssociatedNetworkObjectType_EGRESS_QOS_QUEUE_MR = @"EGRESS_QOS_QUEUE_MR";
NUTierAssociatedNetworkObjectType_ENDPOINT = @"ENDPOINT";
NUTierAssociatedNetworkObjectType_ENTERPRISE = @"ENTERPRISE";
NUTierAssociatedNetworkObjectType_ENTERPRISE_CONFIG = @"ENTERPRISE_CONFIG";
NUTierAssociatedNetworkObjectType_ENTERPRISE_CONFIG_RESP = @"ENTERPRISE_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUTierAssociatedNetworkObjectType_ENTERPRISE_PERMISSION = @"ENTERPRISE_PERMISSION";
NUTierAssociatedNetworkObjectType_ENTERPRISE_PROFILE = @"ENTERPRISE_PROFILE";
NUTierAssociatedNetworkObjectType_ENTERPRISE_SECURED_DATA = @"ENTERPRISE_SECURED_DATA";
NUTierAssociatedNetworkObjectType_ENTERPRISE_SECURITY = @"ENTERPRISE_SECURITY";
NUTierAssociatedNetworkObjectType_ENTITY_METADATA_BINDING = @"ENTITY_METADATA_BINDING";
NUTierAssociatedNetworkObjectType_ESI_SEQUENCENO = @"ESI_SEQUENCENO";
NUTierAssociatedNetworkObjectType_EVENT_LOG = @"EVENT_LOG";
NUTierAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_ENTRY = @"EVPN_BGP_COMMUNITY_TAG_ENTRY";
NUTierAssociatedNetworkObjectType_EVPN_BGP_COMMUNITY_TAG_SEQ_NO = @"EVPN_BGP_COMMUNITY_TAG_SEQ_NO";
NUTierAssociatedNetworkObjectType_EXPORTIMPORT = @"EXPORTIMPORT";
NUTierAssociatedNetworkObjectType_EXTERNAL_SERVICE = @"EXTERNAL_SERVICE";
NUTierAssociatedNetworkObjectType_FLOATINGIP = @"FLOATINGIP";
NUTierAssociatedNetworkObjectType_FLOATINGIP_ACL = @"FLOATINGIP_ACL";
NUTierAssociatedNetworkObjectType_FLOATINGIP_ACL_ENTRY = @"FLOATINGIP_ACL_ENTRY";
NUTierAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE = @"FLOATING_IP_ACL_TEMPLATE";
NUTierAssociatedNetworkObjectType_FLOATING_IP_ACL_TEMPLATE_ENTRY = @"FLOATING_IP_ACL_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_GATEWAY = @"GATEWAY";
NUTierAssociatedNetworkObjectType_GATEWAY_CONFIG = @"GATEWAY_CONFIG";
NUTierAssociatedNetworkObjectType_GATEWAY_CONFIG_RESP = @"GATEWAY_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURED_DATA = @"GATEWAY_SECURED_DATA";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURITY = @"GATEWAY_SECURITY";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_REQUEST = @"GATEWAY_SECURITY_PROFILE_REQUEST";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURITY_PROFILE_RESPONSE = @"GATEWAY_SECURITY_PROFILE_RESPONSE";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURITY_REQUEST = @"GATEWAY_SECURITY_REQUEST";
NUTierAssociatedNetworkObjectType_GATEWAY_SECURITY_RESPONSE = @"GATEWAY_SECURITY_RESPONSE";
NUTierAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG = @"GATEWAY_SERVICE_CONFIG";
NUTierAssociatedNetworkObjectType_GATEWAY_SERVICE_CONFIG_RESP = @"GATEWAY_SERVICE_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_GATEWAY_TEMPLATE = @"GATEWAY_TEMPLATE";
NUTierAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG = @"GATEWAY_VPORT_CONFIG";
NUTierAssociatedNetworkObjectType_GATEWAY_VPORT_CONFIG_RESP = @"GATEWAY_VPORT_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_GEO_VM_EVENT = @"GEO_VM_EVENT";
NUTierAssociatedNetworkObjectType_GEO_VM_REQ = @"GEO_VM_REQ";
NUTierAssociatedNetworkObjectType_GEO_VM_RES = @"GEO_VM_RES";
NUTierAssociatedNetworkObjectType_GROUP = @"GROUP";
NUTierAssociatedNetworkObjectType_GROUPKEY_ENCRYPTION_PROFILE = @"GROUPKEY_ENCRYPTION_PROFILE";
NUTierAssociatedNetworkObjectType_HEALTH_REQ = @"HEALTH_REQ";
NUTierAssociatedNetworkObjectType_HOSTINTERFACE = @"HOSTINTERFACE";
NUTierAssociatedNetworkObjectType_HSC = @"HSC";
NUTierAssociatedNetworkObjectType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUTierAssociatedNetworkObjectType_IKE_ENCRYPTION_PROFILE = @"IKE_ENCRYPTION_PROFILE";
NUTierAssociatedNetworkObjectType_IKE_GATEWAY = @"IKE_GATEWAY";
NUTierAssociatedNetworkObjectType_IKE_GATEWAY_CONFIG = @"IKE_GATEWAY_CONFIG";
NUTierAssociatedNetworkObjectType_IKE_GATEWAY_CONNECTION = @"IKE_GATEWAY_CONNECTION";
NUTierAssociatedNetworkObjectType_IKE_GATEWAY_PROFILE = @"IKE_GATEWAY_PROFILE";
NUTierAssociatedNetworkObjectType_IKE_PSK = @"IKE_PSK";
NUTierAssociatedNetworkObjectType_IKE_SUBNET = @"IKE_SUBNET";
NUTierAssociatedNetworkObjectType_INFRASTRUCTURE_CONFIG = @"INFRASTRUCTURE_CONFIG";
NUTierAssociatedNetworkObjectType_INFRASTRUCTURE_GATEWAY_PROFILE = @"INFRASTRUCTURE_GATEWAY_PROFILE";
NUTierAssociatedNetworkObjectType_INFRASTRUCTURE_PORT_PROFILE = @"INFRASTRUCTURE_PORT_PROFILE";
NUTierAssociatedNetworkObjectType_INFRASTRUCTURE_VSC_PROFILE = @"INFRASTRUCTURE_VSC_PROFILE";
NUTierAssociatedNetworkObjectType_INGRESS_ACL = @"INGRESS_ACL";
NUTierAssociatedNetworkObjectType_INGRESS_ACL_ENTRY = @"INGRESS_ACL_ENTRY";
NUTierAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE = @"INGRESS_ACL_TEMPLATE";
NUTierAssociatedNetworkObjectType_INGRESS_ACL_TEMPLATE_ENTRY = @"INGRESS_ACL_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_INGRESS_ADV_FWD = @"INGRESS_ADV_FWD";
NUTierAssociatedNetworkObjectType_INGRESS_ADV_FWD_ENTRY = @"INGRESS_ADV_FWD_ENTRY";
NUTierAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE = @"INGRESS_ADV_FWD_TEMPLATE";
NUTierAssociatedNetworkObjectType_INGRESS_ADV_FWD_TEMPLATE_ENTRY = @"INGRESS_ADV_FWD_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_INGRESS_EXT_SERVICE = @"INGRESS_EXT_SERVICE";
NUTierAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_ENTRY = @"INGRESS_EXT_SERVICE_ENTRY";
NUTierAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE = @"INGRESS_EXT_SERVICE_TEMPLATE";
NUTierAssociatedNetworkObjectType_INGRESS_EXT_SERVICE_TEMPLATE_ENTRY = @"INGRESS_EXT_SERVICE_TEMPLATE_ENTRY";
NUTierAssociatedNetworkObjectType_IP_BINDING = @"IP_BINDING";
NUTierAssociatedNetworkObjectType_JOB = @"JOB";
NUTierAssociatedNetworkObjectType_KEYSERVER_MEMBER = @"KEYSERVER_MEMBER";
NUTierAssociatedNetworkObjectType_KEYSERVER_MONITOR = @"KEYSERVER_MONITOR";
NUTierAssociatedNetworkObjectType_KEYSERVER_MONITOR_ENCRYPTED_SEED = @"KEYSERVER_MONITOR_ENCRYPTED_SEED";
NUTierAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEED = @"KEYSERVER_MONITOR_SEED";
NUTierAssociatedNetworkObjectType_KEYSERVER_MONITOR_SEK = @"KEYSERVER_MONITOR_SEK";
NUTierAssociatedNetworkObjectType_KEYSERVER_NOTIFICATION = @"KEYSERVER_NOTIFICATION";
NUTierAssociatedNetworkObjectType_L2DOMAIN = @"L2DOMAIN";
NUTierAssociatedNetworkObjectType_L2DOMAIN_SHARED = @"L2DOMAIN_SHARED";
NUTierAssociatedNetworkObjectType_L2DOMAIN_TEMPLATE = @"L2DOMAIN_TEMPLATE";
NUTierAssociatedNetworkObjectType_LDAP_CONFIG = @"LDAP_CONFIG";
NUTierAssociatedNetworkObjectType_LIBVIRT_INTERFACE = @"LIBVIRT_INTERFACE";
NUTierAssociatedNetworkObjectType_LICENSE = @"LICENSE";
NUTierAssociatedNetworkObjectType_LOCATION = @"LOCATION";
NUTierAssociatedNetworkObjectType_MC_CHANNEL_MAP = @"MC_CHANNEL_MAP";
NUTierAssociatedNetworkObjectType_MC_LIST = @"MC_LIST";
NUTierAssociatedNetworkObjectType_MC_RANGE = @"MC_RANGE";
NUTierAssociatedNetworkObjectType_METADATA = @"METADATA";
NUTierAssociatedNetworkObjectType_METADATA_TAG = @"METADATA_TAG";
NUTierAssociatedNetworkObjectType_MIRROR_DESTINATION = @"MIRROR_DESTINATION";
NUTierAssociatedNetworkObjectType_MONITORING_PORT = @"MONITORING_PORT";
NUTierAssociatedNetworkObjectType_MULTI_NIC_VPORT = @"MULTI_NIC_VPORT";
NUTierAssociatedNetworkObjectType_NATMAPENTRY = @"NATMAPENTRY";
NUTierAssociatedNetworkObjectType_NETWORK_ELEMENT = @"NETWORK_ELEMENT";
NUTierAssociatedNetworkObjectType_NETWORK_LAYOUT = @"NETWORK_LAYOUT";
NUTierAssociatedNetworkObjectType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUTierAssociatedNetworkObjectType_NETWORK_POLICY_GROUP = @"NETWORK_POLICY_GROUP";
NUTierAssociatedNetworkObjectType_NEXT_HOP_RESP = @"NEXT_HOP_RESP";
NUTierAssociatedNetworkObjectType_NODE_EXECUTION_ERROR = @"NODE_EXECUTION_ERROR";
NUTierAssociatedNetworkObjectType_NSGATEWAY = @"NSGATEWAY";
NUTierAssociatedNetworkObjectType_NSGATEWAY_CONFIG = @"NSGATEWAY_CONFIG";
NUTierAssociatedNetworkObjectType_NSGATEWAY_TEMPLATE = @"NSGATEWAY_TEMPLATE";
NUTierAssociatedNetworkObjectType_NSG_NOTIFICATION = @"NSG_NOTIFICATION";
NUTierAssociatedNetworkObjectType_NSPORT = @"NSPORT";
NUTierAssociatedNetworkObjectType_NSPORT_STATIC_CONFIG = @"NSPORT_STATIC_CONFIG";
NUTierAssociatedNetworkObjectType_NSPORT_TEMPLATE = @"NSPORT_TEMPLATE";
NUTierAssociatedNetworkObjectType_NSPORT_VLAN_CONFIG = @"NSPORT_VLAN_CONFIG";
NUTierAssociatedNetworkObjectType_NSREDUNDANT_GW_GRP = @"NSREDUNDANT_GW_GRP";
NUTierAssociatedNetworkObjectType_NS_REDUNDANT_PORT = @"NS_REDUNDANT_PORT";
NUTierAssociatedNetworkObjectType_PATCONFIG_CONFIG_RESP = @"PATCONFIG_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_PATNATPOOL = @"PATNATPOOL";
NUTierAssociatedNetworkObjectType_PERMISSION = @"PERMISSION";
NUTierAssociatedNetworkObjectType_PERMITTED_ACTION = @"PERMITTED_ACTION";
NUTierAssociatedNetworkObjectType_POLICING_POLICY = @"POLICING_POLICY";
NUTierAssociatedNetworkObjectType_POLICY_DECISION = @"POLICY_DECISION";
NUTierAssociatedNetworkObjectType_POLICY_GROUP = @"POLICY_GROUP";
NUTierAssociatedNetworkObjectType_POLICY_GROUP_TEMPLATE = @"POLICY_GROUP_TEMPLATE";
NUTierAssociatedNetworkObjectType_PORT = @"PORT";
NUTierAssociatedNetworkObjectType_PORT_MR = @"PORT_MR";
NUTierAssociatedNetworkObjectType_PORT_PUSH = @"PORT_PUSH";
NUTierAssociatedNetworkObjectType_PORT_TEMPLATE = @"PORT_TEMPLATE";
NUTierAssociatedNetworkObjectType_PORT_VLAN_CONFIG = @"PORT_VLAN_CONFIG";
NUTierAssociatedNetworkObjectType_PORT_VLAN_CONFIG_RESPONSE = @"PORT_VLAN_CONFIG_RESPONSE";
NUTierAssociatedNetworkObjectType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUTierAssociatedNetworkObjectType_QOS_PRIMITIVE = @"QOS_PRIMITIVE";
NUTierAssociatedNetworkObjectType_RATE_LIMITER = @"RATE_LIMITER";
NUTierAssociatedNetworkObjectType_RD_SEQUENCENO = @"RD_SEQUENCENO";
NUTierAssociatedNetworkObjectType_REDUNDANT_GW_GRP = @"REDUNDANT_GW_GRP";
NUTierAssociatedNetworkObjectType_ROUTING_POLICY = @"ROUTING_POLICY";
NUTierAssociatedNetworkObjectType_ROUTING_POL_MED_RESPONSE = @"ROUTING_POL_MED_RESPONSE";
NUTierAssociatedNetworkObjectType_RTRD_ENTITY = @"RTRD_ENTITY";
NUTierAssociatedNetworkObjectType_RTRD_SEQUENCENO = @"RTRD_SEQUENCENO";
NUTierAssociatedNetworkObjectType_SERVICES_GATEWAY_RESPONSE = @"SERVICES_GATEWAY_RESPONSE";
NUTierAssociatedNetworkObjectType_SERVICE_GATEWAY_RESPONSE = @"SERVICE_GATEWAY_RESPONSE";
NUTierAssociatedNetworkObjectType_SERVICE_VRF_SEQUENCENO = @"SERVICE_VRF_SEQUENCENO";
NUTierAssociatedNetworkObjectType_SHAPING_POLICY = @"SHAPING_POLICY";
NUTierAssociatedNetworkObjectType_SHARED_RESOURCE = @"SHARED_RESOURCE";
NUTierAssociatedNetworkObjectType_SITE = @"SITE";
NUTierAssociatedNetworkObjectType_SITE_REQ = @"SITE_REQ";
NUTierAssociatedNetworkObjectType_SITE_RES = @"SITE_RES";
NUTierAssociatedNetworkObjectType_STATIC_ROUTE = @"STATIC_ROUTE";
NUTierAssociatedNetworkObjectType_STATIC_ROUTE_RESP = @"STATIC_ROUTE_RESP";
NUTierAssociatedNetworkObjectType_STATISTICS = @"STATISTICS";
NUTierAssociatedNetworkObjectType_STATSSERVER = @"STATSSERVER";
NUTierAssociatedNetworkObjectType_STATS_COLLECTOR = @"STATS_COLLECTOR";
NUTierAssociatedNetworkObjectType_STATS_POLICY = @"STATS_POLICY";
NUTierAssociatedNetworkObjectType_STATS_TCA = @"STATS_TCA";
NUTierAssociatedNetworkObjectType_SUBNET = @"SUBNET";
NUTierAssociatedNetworkObjectType_SUBNET_ENTRY = @"SUBNET_ENTRY";
NUTierAssociatedNetworkObjectType_SUBNET_MAC_ENTRY = @"SUBNET_MAC_ENTRY";
NUTierAssociatedNetworkObjectType_SUBNET_POOL_ENTRY = @"SUBNET_POOL_ENTRY";
NUTierAssociatedNetworkObjectType_SUBNET_TEMPLATE = @"SUBNET_TEMPLATE";
NUTierAssociatedNetworkObjectType_SYSTEM_CONFIG = @"SYSTEM_CONFIG";
NUTierAssociatedNetworkObjectType_SYSTEM_CONFIG_REQ = @"SYSTEM_CONFIG_REQ";
NUTierAssociatedNetworkObjectType_SYSTEM_CONFIG_RESP = @"SYSTEM_CONFIG_RESP";
NUTierAssociatedNetworkObjectType_SYSTEM_MONITORING = @"SYSTEM_MONITORING";
NUTierAssociatedNetworkObjectType_UNSUPPORTED = @"UNSUPPORTED";
NUTierAssociatedNetworkObjectType_UPLINK_RD = @"UPLINK_RD";
NUTierAssociatedNetworkObjectType_USER = @"USER";
NUTierAssociatedNetworkObjectType_VIRTUAL_IP = @"VIRTUAL_IP";
NUTierAssociatedNetworkObjectType_VIRTUAL_MACHINE = @"VIRTUAL_MACHINE";
NUTierAssociatedNetworkObjectType_VIRTUAL_MACHINE_REPORT = @"VIRTUAL_MACHINE_REPORT";
NUTierAssociatedNetworkObjectType_VLAN = @"VLAN";
NUTierAssociatedNetworkObjectType_VLAN_CONFIG_RESPONSE = @"VLAN_CONFIG_RESPONSE";
NUTierAssociatedNetworkObjectType_VLAN_TEMPLATE = @"VLAN_TEMPLATE";
NUTierAssociatedNetworkObjectType_VMWARE_RELOAD_CONFIG = @"VMWARE_RELOAD_CONFIG";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER = @"VMWARE_VCENTER";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_CLUSTER = @"VMWARE_VCENTER_CLUSTER";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_DATACENTER = @"VMWARE_VCENTER_DATACENTER";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_EAM_CONFIG = @"VMWARE_VCENTER_EAM_CONFIG";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_HYPERVISOR = @"VMWARE_VCENTER_HYPERVISOR";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_BASE_CONFIG = @"VMWARE_VCENTER_VRS_BASE_CONFIG";
NUTierAssociatedNetworkObjectType_VMWARE_VCENTER_VRS_CONFIG = @"VMWARE_VCENTER_VRS_CONFIG";
NUTierAssociatedNetworkObjectType_VMWARE_VRS_ADDRESS_RANGE = @"VMWARE_VRS_ADDRESS_RANGE";
NUTierAssociatedNetworkObjectType_VM_DESCRIPTION = @"VM_DESCRIPTION";
NUTierAssociatedNetworkObjectType_VM_INTERFACE = @"VM_INTERFACE";
NUTierAssociatedNetworkObjectType_VM_RESYNC = @"VM_RESYNC";
NUTierAssociatedNetworkObjectType_VNID_SEQUENCENO = @"VNID_SEQUENCENO";
NUTierAssociatedNetworkObjectType_VPN_CONNECT = @"VPN_CONNECT";
NUTierAssociatedNetworkObjectType_VPORT = @"VPORT";
NUTierAssociatedNetworkObjectType_VPORTTAG = @"VPORTTAG";
NUTierAssociatedNetworkObjectType_VPORTTAGTEMPLATE = @"VPORTTAGTEMPLATE";
NUTierAssociatedNetworkObjectType_VPORT_GATEWAY_RESPONSE = @"VPORT_GATEWAY_RESPONSE";
NUTierAssociatedNetworkObjectType_VPORT_MEDIATION_REQUEST = @"VPORT_MEDIATION_REQUEST";
NUTierAssociatedNetworkObjectType_VPORT_MIRROR = @"VPORT_MIRROR";
NUTierAssociatedNetworkObjectType_VPORT_TAG_BASE = @"VPORT_TAG_BASE";
NUTierAssociatedNetworkObjectType_VPRN_LABEL_SEQUENCENO = @"VPRN_LABEL_SEQUENCENO";
NUTierAssociatedNetworkObjectType_VRS = @"VRS";
NUTierAssociatedNetworkObjectType_VSC = @"VSC";
NUTierAssociatedNetworkObjectType_VSD = @"VSD";
NUTierAssociatedNetworkObjectType_VSD_COMPONENT = @"VSD_COMPONENT";
NUTierAssociatedNetworkObjectType_VSG_REDUNDANT_PORT = @"VSG_REDUNDANT_PORT";
NUTierAssociatedNetworkObjectType_VSP = @"VSP";
NUTierAssociatedNetworkObjectType_WAN_SERVICE = @"WAN_SERVICE";
NUTierAssociatedNetworkObjectType_ZONE = @"ZONE";
NUTierAssociatedNetworkObjectType_ZONE_TEMPLATE = @"ZONE_TEMPLATE";
NUTierEntityScope_ENTERPRISE = @"ENTERPRISE";
NUTierEntityScope_GLOBAL = @"GLOBAL";
NUTierType_APPLICATION = @"APPLICATION";
NUTierType_APPLICATION_EXTENDED_NETWORK = @"APPLICATION_EXTENDED_NETWORK";
NUTierType_NETWORK_MACRO = @"NETWORK_MACRO";
NUTierType_STANDARD = @"STANDARD";


/*!
    Tier represents a portion of an Application.
*/
@implementation NUTier : NURESTObject
{
    /*!
        Name of the application tier.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The IP address of the gateway for this tier.
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        IP address of the tier defined.
    */
    CPString _address @accessors(property=address);
    /*!
        Description of the application tier.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata field to store tier related data.
    */
    CPString _metadata @accessors(property=metadata);
    /*!
        Netmask for the tier.
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The associated network macro ID.
    */
    CPString _associatedApplicationID @accessors(property=associatedApplicationID);
    /*!
        The associated floating IP Pool ID.
    */
    CPString _associatedFloatingIPPoolID @accessors(property=associatedFloatingIPPoolID);
    /*!
        The associated network macro ID.
    */
    CPString _associatedNetworkMacroID @accessors(property=associatedNetworkMacroID);
    /*!
        The associated network object id.
    */
    CPString _associatedNetworkObjectID @accessors(property=associatedNetworkObjectID);
    /*!
        The associated network object type. Refer to API section for supported types.
    */
    CPString _associatedNetworkObjectType @accessors(property=associatedNetworkObjectType);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of the application tier.
    */
    CPString _type @accessors(property=type);
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"tier";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metadata"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedFloatingIPPoolID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkMacroID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _type = @"STANDARD";
        
    }

    return self;
}

@end