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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUEgressAdvFwdEntryTemplateAction_DROP = @"DROP";
NUEgressAdvFwdEntryTemplateAction_FORWARD = @"FORWARD";
NUEgressAdvFwdEntryTemplateAction_REDIRECT = @"REDIRECT";
NUEgressAdvFwdEntryTemplateAction_TRANSPARENT = @"TRANSPARENT";
NUEgressAdvFwdEntryTemplateAssociatedTrafficType_L4_SERVICE = @"L4_SERVICE";
NUEgressAdvFwdEntryTemplateAssociatedTrafficType_L4_SERVICE_GROUP = @"L4_SERVICE_GROUP";
NUEgressAdvFwdEntryTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEgressAdvFwdEntryTemplateEntityScope_GLOBAL = @"GLOBAL";
NUEgressAdvFwdEntryTemplateFCOverride_A = @"A";
NUEgressAdvFwdEntryTemplateFCOverride_B = @"B";
NUEgressAdvFwdEntryTemplateFCOverride_C = @"C";
NUEgressAdvFwdEntryTemplateFCOverride_D = @"D";
NUEgressAdvFwdEntryTemplateFCOverride_E = @"E";
NUEgressAdvFwdEntryTemplateFCOverride_F = @"F";
NUEgressAdvFwdEntryTemplateFCOverride_G = @"G";
NUEgressAdvFwdEntryTemplateFCOverride_H = @"H";
NUEgressAdvFwdEntryTemplateFCOverride_NONE = @"NONE";
NUEgressAdvFwdEntryTemplateFailsafeDatapath_FAIL_TO_BLOCK = @"FAIL_TO_BLOCK";
NUEgressAdvFwdEntryTemplateFailsafeDatapath_FAIL_TO_WIRE = @"FAIL_TO_WIRE";
NUEgressAdvFwdEntryTemplateLocationEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUEgressAdvFwdEntryTemplateLocationEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUEgressAdvFwdEntryTemplateLocationEntityType_POLICYGROUP = @"POLICYGROUP";
NUEgressAdvFwdEntryTemplateLocationEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUEgressAdvFwdEntryTemplateLocationEntityType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUEgressAdvFwdEntryTemplateLocationEntityType_REDIRECTIONTARGETTEMPLATE = @"REDIRECTIONTARGETTEMPLATE";
NUEgressAdvFwdEntryTemplateLocationEntityType_SUBNET = @"SUBNET";
NUEgressAdvFwdEntryTemplateLocationEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUEgressAdvFwdEntryTemplateLocationEntityType_ZONE = @"ZONE";
NUEgressAdvFwdEntryTemplateLocationEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUEgressAdvFwdEntryTemplateLocationType_ANY = @"ANY";
NUEgressAdvFwdEntryTemplateLocationType_PGEXPRESSION = @"PGEXPRESSION";
NUEgressAdvFwdEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUEgressAdvFwdEntryTemplateLocationType_SUBNET = @"SUBNET";
NUEgressAdvFwdEntryTemplateLocationType_ZONE = @"ZONE";
NUEgressAdvFwdEntryTemplateNetworkEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUEgressAdvFwdEntryTemplateNetworkEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUEgressAdvFwdEntryTemplateNetworkEntityType_POLICYGROUP = @"POLICYGROUP";
NUEgressAdvFwdEntryTemplateNetworkEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUEgressAdvFwdEntryTemplateNetworkEntityType_SUBNET = @"SUBNET";
NUEgressAdvFwdEntryTemplateNetworkEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUEgressAdvFwdEntryTemplateNetworkEntityType_ZONE = @"ZONE";
NUEgressAdvFwdEntryTemplateNetworkEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUEgressAdvFwdEntryTemplateNetworkType_ANY = @"ANY";
NUEgressAdvFwdEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUEgressAdvFwdEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUEgressAdvFwdEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUEgressAdvFwdEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUEgressAdvFwdEntryTemplateNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUEgressAdvFwdEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUEgressAdvFwdEntryTemplateNetworkType_PGEXPRESSION = @"PGEXPRESSION";
NUEgressAdvFwdEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUEgressAdvFwdEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUEgressAdvFwdEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUEgressAdvFwdEntryTemplateNetworkType_UNDERLAY_INTERNET_POLICYGROUP = @"UNDERLAY_INTERNET_POLICYGROUP";
NUEgressAdvFwdEntryTemplateNetworkType_ZONE = @"ZONE";
NUEgressAdvFwdEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUEgressAdvFwdEntryTemplatePolicyState_LIVE = @"LIVE";
NUEgressAdvFwdEntryTemplateRedirectionTargetEntityType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUEgressAdvFwdEntryTemplateRedirectionTargetEntityType_REDIRECTIONTARGETTEMPLATE = @"REDIRECTIONTARGETTEMPLATE";
NUEgressAdvFwdEntryTemplateUplinkPreference_DEFAULT = @"DEFAULT";
NUEgressAdvFwdEntryTemplateUplinkPreference_PRIMARY = @"PRIMARY";
NUEgressAdvFwdEntryTemplateUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUEgressAdvFwdEntryTemplateUplinkPreference_SECONDARY = @"SECONDARY";
NUEgressAdvFwdEntryTemplateUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUEgressAdvFwdEntryTemplateUplinkPreference_SYMMETRIC = @"SYMMETRIC";
NUEgressAdvFwdEntryTemplateWebFilterType_WEB_CATEGORY = @"WEB_CATEGORY";
NUEgressAdvFwdEntryTemplateWebFilterType_WEB_DOMAIN_NAME = @"WEB_DOMAIN_NAME";


/*!
    Egress forwarding policy rules define what action to take for a particular type of traffic, based on its origin, destination, protocol, EtherType, ports, DSCP value and other information. Supported actions are to redirect traffic, change the forwarding class of the traffic or to allow traffic to pass untouched.
*/
@implementation NUEgressAdvFwdEntryTemplate : NURESTObject
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
        Overrides the source IPv6 for Egress and destination IPv6 for Egress, mac entries will use this address as the match criteria.
    */
    CPString _IPv6AddressOverride @accessors(property=IPv6AddressOverride);
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        Backup datapath option if VNF/VM is down
    */
    CPString _failsafeDatapath @accessors(property=failsafeDatapath);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry. Possible values are DROP, FORWARD, REDIRECT. Action REDIRECT is allowed only for EgressAdvancedForwardingEntry.
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Egress and destination IP for Ingress, mac entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        ID of web filter category or web domain name entity used
    */
    CPString _webFilterID @accessors(property=webFilterID);
    /*!
        Indicates if web filter statistics logging is enabled for this particular template
    */
    BOOL _webFilterStatsLoggingEnabled @accessors(property=webFilterStatsLoggingEnabled);
    /*!
        Indicates type of web filter being set
    */
    CPString _webFilterType @accessors(property=webFilterType);
    /*!
        VPort tag to which traffic will be redirected to, when ACL entry match criteria succeeds
    */
    CPString _redirectVPortTagID @accessors(property=redirectVPortTagID);
    /*!
        Indicates whether the Redirection Target of ACL Entry was derived from a L3 Domain template or instance. Possible Values: REDIRECTIONTARGET, REDIRECTIONTARGETTEMPLATE.
    */
    CPString _redirectionTargetEntityType @accessors(property=redirectionTargetEntityType);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Indicates whether the Network Entity of ACL Entry was derived from a L2/L3 Domain template or instance. Possible Values: SUBNETTEMPLATE, ZONETEMPLATE, POLICYGROUPTEMPLATE, PGEXPRESSIONTEMPLATE, SUBNET, ZONE, POLICYGROUP, PGEXPRESSION.
    */
    CPString _networkEntityType @accessors(property=networkEntityType);
    /*!
        The source network entity id that is referenced(subnet/zone/macro/PolicyGroupExpression)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network.
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        ID of the associated Mirror Destination Group.
    */
    CPString _mirrorDestinationGroupID @accessors(property=mirrorDestinationGroupID);
    /*!
        Destination ID of the mirror destination object.
    */
    CPString _mirrorDestinationID @accessors(property=mirrorDestinationID);
    /*!
        Is flow logging enabled for this particular template
    */
    BOOL _flowLoggingEnabled @accessors(property=flowLoggingEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The name of the enterprise for the domains parent
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Indicates whether the Location Entity of ACL Entry was derived from a L2/L3 Domain template or instance. Possible Values: SUBNETTEMPLATE, ZONETEMPLATE, POLICYGROUPTEMPLATE, PGEXPRESSIONTEMPLATE, REDIRECTIONTARGETTEMPLATE, SUBNET, ZONE, POLICYGROUP, PGEXPRESSION, REDIRECTIONTARGET.
    */
    CPString _locationEntityType @accessors(property=locationEntityType);
    /*!
        The ID of the destination location entity (Subnet/Zone/VportTag/PolicyGroupExpression)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the destination location entity.
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
        In the draft mode, the ACL entry refers to this LiveEntity. In non-drafted mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        In the draft mode, the ACL entity refers to this live entity parent. In non-drafted mode, this is null
    */
    CPString _associatedLiveTemplateID @accessors(property=associatedLiveTemplateID);
    /*!
        The associated Traffic type. L4 Service / L4 Service Group
    */
    CPString _associatedTrafficType @accessors(property=associatedTrafficType);
    /*!
        The associated Traffic Type ID
    */
    CPString _associatedTrafficTypeID @accessors(property=associatedTrafficTypeID);
    /*!
        The ID of the Virtual Firewall Rule, if this was derived as part of the Virtual Firewall Rule creation
    */
    CPString _associatedVirtualFirewallRuleID @accessors(property=associatedVirtualFirewallRuleID);
    /*!
        The statsID that is created in the VSD and identifies this ACL Template Entry. This is auto-generated by VSD
    */
    CPString _statsID @accessors(property=statsID);
    /*!
        Indicates if stats logging is enabled for this particular template
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
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressadvfwdentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"failsafeDatapath"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"webFilterID"];
        [self exposeLocalKeyPathToREST:@"webFilterStatsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"webFilterType"];
        [self exposeLocalKeyPathToREST:@"redirectVPortTagID"];
        [self exposeLocalKeyPathToREST:@"redirectionTargetEntityType"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"networkEntityType"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationGroupID"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationEntityType"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficType"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficTypeID"];
        [self exposeLocalKeyPathToREST:@"associatedVirtualFirewallRuleID"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end