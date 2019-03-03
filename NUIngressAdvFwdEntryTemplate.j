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
@import "Fetchers/NUStatisticsFetcher.j"

NUIngressAdvFwdEntryTemplateAction_DROP = @"DROP";
NUIngressAdvFwdEntryTemplateAction_FORWARD = @"FORWARD";
NUIngressAdvFwdEntryTemplateAction_FORWARDING_PATH_LIST = @"FORWARDING_PATH_LIST";
NUIngressAdvFwdEntryTemplateAction_REDIRECT = @"REDIRECT";
NUIngressAdvFwdEntryTemplateAddressOverrideType_IPV4 = @"IPV4";
NUIngressAdvFwdEntryTemplateAddressOverrideType_IPV6 = @"IPV6";
NUIngressAdvFwdEntryTemplateAddressOverrideType_MACRO_GROUP = @"MACRO_GROUP";
NUIngressAdvFwdEntryTemplateAppType_ALL = @"ALL";
NUIngressAdvFwdEntryTemplateAppType_APPLICATION = @"APPLICATION";
NUIngressAdvFwdEntryTemplateAppType_NONE = @"NONE";
NUIngressAdvFwdEntryTemplateAssociatedTrafficType_L4_SERVICE = @"L4_SERVICE";
NUIngressAdvFwdEntryTemplateAssociatedTrafficType_L4_SERVICE_GROUP = @"L4_SERVICE_GROUP";
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
NUIngressAdvFwdEntryTemplateFailsafeDatapath_FAIL_TO_BLOCK = @"FAIL_TO_BLOCK";
NUIngressAdvFwdEntryTemplateFailsafeDatapath_FAIL_TO_WIRE = @"FAIL_TO_WIRE";
NUIngressAdvFwdEntryTemplateLocationType_ANY = @"ANY";
NUIngressAdvFwdEntryTemplateLocationType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAdvFwdEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressAdvFwdEntryTemplateLocationType_SUBNET = @"SUBNET";
NUIngressAdvFwdEntryTemplateLocationType_ZONE = @"ZONE";
NUIngressAdvFwdEntryTemplateNetworkType_ANY = @"ANY";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressAdvFwdEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressAdvFwdEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressAdvFwdEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressAdvFwdEntryTemplateNetworkType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAdvFwdEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUIngressAdvFwdEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressAdvFwdEntryTemplateNetworkType_SAAS_APPLICATION_GROUP = @"SAAS_APPLICATION_GROUP";
NUIngressAdvFwdEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUIngressAdvFwdEntryTemplateNetworkType_UNDERLAY_INTERNET_POLICYGROUP = @"UNDERLAY_INTERNET_POLICYGROUP";
NUIngressAdvFwdEntryTemplateNetworkType_ZONE = @"ZONE";
NUIngressAdvFwdEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUIngressAdvFwdEntryTemplatePolicyState_LIVE = @"LIVE";
NUIngressAdvFwdEntryTemplateRedirectRewriteType_VLAN = @"VLAN";
NUIngressAdvFwdEntryTemplateRemoteUplinkPreference_DEFAULT = @"DEFAULT";
NUIngressAdvFwdEntryTemplateRemoteUplinkPreference_PRIMARY = @"PRIMARY";
NUIngressAdvFwdEntryTemplateRemoteUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUIngressAdvFwdEntryTemplateRemoteUplinkPreference_SECONDARY = @"SECONDARY";
NUIngressAdvFwdEntryTemplateRemoteUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_DEFAULT = @"DEFAULT";
NUIngressAdvFwdEntryTemplateUplinkPreference_PRIMARY = @"PRIMARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SECONDARY = @"SECONDARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUIngressAdvFwdEntryTemplateUplinkPreference_SYMMETRIC = @"SYMMETRIC";
NUIngressAdvFwdEntryTemplateWebFilterType_WEB_CATEGORY = @"WEB_CATEGORY";
NUIngressAdvFwdEntryTemplateWebFilterType_WEB_DOMAIN_NAME = @"WEB_DOMAIN_NAME";


/*!
    Security Policy Entries defines what action to take for a particular type of traffic, based on its origin and its destination, its protocol, EtherType, eventual ports, DSCP value and other information.
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
        Remarking value for the DSCP field in IP header of customer packet.DSCP value range from enumeration of 65 values: NONE, 0, 1, ..., 63
    */
    CPString _DSCPRemarking @accessors(property=DSCPRemarking);
    /*!
        Backup datapath option if VNF/VM is down
    */
    CPString _failsafeDatapath @accessors(property=failsafeDatapath);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT or FORWARDING_PATH_LIST. Actions REDIRECT and FORWARDING_PATH_LIST are allowed only for IngressAdvancedForwardingEntry. Possible values are DROP, FORWARD, REDIRECT, FORWARDING_PATH_LIST. If FORWARDING_PATH_LIST is selected in IngressAdvancedForwardingEntry, user will have to attach a ForwardingPathList (list of forwarding action-uplink preference entries) to the ACL.  
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        Address Override Type can be IPV4, IPV6 or MACRO_GROUP.
    */
    CPString _addressOverrideType @accessors(property=addressOverrideType);
    /*!
        ID of web filter category or web domain name entity used
    */
    CPString _webFilterID @accessors(property=webFilterID);
    /*!
        Indicates type of web filter being set
    */
    CPString _webFilterType @accessors(property=webFilterType);
    /*!
        The type of redirection rewrite. Currently only VLAN is supported
    */
    CPString _redirectRewriteType @accessors(property=redirectRewriteType);
    /*!
        The redirect rewrite value. Currently only vlan id is supported
    */
    CPString _redirectRewriteValue @accessors(property=redirectRewriteValue);
    /*!
        VPort tag to which traffic will be redirected to, when ACL entry match criteria succeeds
    */
    CPString _redirectVPortTagID @accessors(property=redirectVPortTagID);
    /*!
        Indicates the preferencial path selection for network traffic for this ACL.
    */
    CPString _remoteUplinkPreference @accessors(property=remoteUplinkPreference);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        The destination network entity that is referenced(subnet/zone/macro/PolicyGroupExpression)
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
        The range can be a single number or a range. Eg : 1,10,15-17
    */
    CPString _vlanRange @accessors(property=vlanRange);
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
        The ID of the location entity (Subnet/Zone/VportTag/PolicyGroupExpression)
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
        Type of application selected, ALL (all applications in match criteria), NONE (no application in match criteria), APPLICATION (specific application in match criteria).
    */
    CPString _appType @accessors(property=appType);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        This flag denotes whether the Uplink Preference configured by the user will work with AAR or will over-ride AAR.
    */
    BOOL _isSLAAware @accessors(property=isSLAAware);
    /*!
        Associated application UUID.
    */
    CPString _associatedApplicationID @accessors(property=associatedApplicationID);
    /*!
        Associated forwarding path list UUID.
    */
    CPString _associatedForwardingPathListID @accessors(property=associatedForwardingPathListID);
    /*!
        In the draft mode, the ACL entry refers to this LiveEntity. In non-drafted mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        In the draft mode, the ACL entity refers to this live entity parent. In non-drafted mode, this is null
    */
    CPString _associatedLiveTemplateID @accessors(property=associatedLiveTemplateID);
    /*!
        This property reflects the type of traffic in case an ACL entry is created using an Service or Service Group. In case a protocol and port are specified for the ACL entry, this property has to be empty (null). Supported values are L4_SERVICE, L4_SERVICE_GROUP and empty.
    */
    CPString _associatedTrafficType @accessors(property=associatedTrafficType);
    /*!
        If a traffic type is specified as Service or Service Group, then the associated Id of  Service / Service Group should be specifed here
    */
    CPString _associatedTrafficTypeID @accessors(property=associatedTrafficTypeID);
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
        [self exposeLocalKeyPathToREST:@"DSCPRemarking"];
        [self exposeLocalKeyPathToREST:@"failsafeDatapath"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"addressOverrideType"];
        [self exposeLocalKeyPathToREST:@"webFilterID"];
        [self exposeLocalKeyPathToREST:@"webFilterType"];
        [self exposeLocalKeyPathToREST:@"redirectRewriteType"];
        [self exposeLocalKeyPathToREST:@"redirectRewriteValue"];
        [self exposeLocalKeyPathToREST:@"redirectVPortTagID"];
        [self exposeLocalKeyPathToREST:@"remoteUplinkPreference"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"vlanRange"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"appType"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"isSLAAware"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedForwardingPathListID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficType"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficTypeID"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
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