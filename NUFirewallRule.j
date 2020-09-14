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

NUFirewallRuleAction_DROP = @"DROP";
NUFirewallRuleAction_FORWARD = @"FORWARD";
NUFirewallRuleAction_FORWARDING_PATH_LIST = @"FORWARDING_PATH_LIST";
NUFirewallRuleAction_REDIRECT = @"REDIRECT";
NUFirewallRuleAssociatedTrafficType_L4_SERVICE = @"L4_SERVICE";
NUFirewallRuleAssociatedTrafficType_L4_SERVICE_GROUP = @"L4_SERVICE_GROUP";
NUFirewallRuleEntityScope_ENTERPRISE = @"ENTERPRISE";
NUFirewallRuleEntityScope_GLOBAL = @"GLOBAL";
NUFirewallRuleLocationEntityType_ENTERPRISENETWORK = @"ENTERPRISENETWORK";
NUFirewallRuleLocationEntityType_NETWORKMACROGROUP = @"NETWORKMACROGROUP";
NUFirewallRuleLocationEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUFirewallRuleLocationEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUFirewallRuleLocationEntityType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleLocationEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUFirewallRuleLocationEntityType_PUBLICNETWORK = @"PUBLICNETWORK";
NUFirewallRuleLocationEntityType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUFirewallRuleLocationEntityType_REDIRECTIONTARGETTEMPLATE = @"REDIRECTIONTARGETTEMPLATE";
NUFirewallRuleLocationEntityType_SUBNET = @"SUBNET";
NUFirewallRuleLocationEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUFirewallRuleLocationEntityType_ZONE = @"ZONE";
NUFirewallRuleLocationEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUFirewallRuleLocationType_ANY = @"ANY";
NUFirewallRuleLocationType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUFirewallRuleLocationType_SUBNET = @"SUBNET";
NUFirewallRuleLocationType_VPORTTAG = @"VPORTTAG";
NUFirewallRuleLocationType_ZONE = @"ZONE";
NUFirewallRuleNetworkEntityType_ENTERPRISENETWORK = @"ENTERPRISENETWORK";
NUFirewallRuleNetworkEntityType_NETWORKMACROGROUP = @"NETWORKMACROGROUP";
NUFirewallRuleNetworkEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUFirewallRuleNetworkEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUFirewallRuleNetworkEntityType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleNetworkEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUFirewallRuleNetworkEntityType_PUBLICNETWORK = @"PUBLICNETWORK";
NUFirewallRuleNetworkEntityType_SAASAPPLICATIONGROUP = @"SAASAPPLICATIONGROUP";
NUFirewallRuleNetworkEntityType_SUBNET = @"SUBNET";
NUFirewallRuleNetworkEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUFirewallRuleNetworkEntityType_ZONE = @"ZONE";
NUFirewallRuleNetworkEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUFirewallRuleNetworkType_ANY = @"ANY";
NUFirewallRuleNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUFirewallRuleNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUFirewallRuleNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUFirewallRuleNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUFirewallRuleNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUFirewallRuleNetworkType_NETWORK = @"NETWORK";
NUFirewallRuleNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUFirewallRuleNetworkType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUFirewallRuleNetworkType_SUBNET = @"SUBNET";
NUFirewallRuleNetworkType_ZONE = @"ZONE";
NUFirewallRuleWebFilterType_WEB_CATEGORY = @"WEB_CATEGORY";
NUFirewallRuleWebFilterType_WEB_DOMAIN_NAME = @"WEB_DOMAIN_NAME";


/*!
    None
*/
@implementation NUFirewallRule : NURESTObject
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
        Overrides the source IPV6 for Ingress and destination IPV6 for Egress, MAC entries will use this address as the match criteria.
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
        The action of the ACL entry DROP or FORWARD or REDIRECT.
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        ID of web filter
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
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Indicates whether the Network Entity of ACL Entry was derived from a L2/L3 Domain template or instance. Possible Values: ENTERPRISENETWORK, NETWORKMACROGROUP, PGEXPRESSION, PGEXPRESSIONTEMPLATE, POLICYGROUP, POLICYGROUPTEMPLATE, PUBLICNETWORK, SAASAPPLICATIONGROUP, SUBNET, SUBNETTEMPLATE, ZONE, ZONETEMPLATE.
    */
    CPString _networkEntityType @accessors(property=networkEntityType);
    /*!
        The destination network entity that is referenced(subnet/zone/macro)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network -  VM_SUBNET or VM_ZONE or VM_DOMAIN or SUBNET or ZONE or ENTERPRISE_NETWORK or PUBLIC_NETWORK or ANY
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        ID of the associated Mirror Destination Group.
    */
    CPString _mirrorDestinationGroupID @accessors(property=mirrorDestinationGroupID);
    /*!
        This is the ID of the mirrorDestrination entity associated with this entity
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
        Indicates whether the Location Entity of ACL Entry was derived from a L2/L3 Domain template or instance. Possible Values: ENTERPRISENETWORK, NETWORKMACROGROUP, PGEXPRESSION, PGEXPRESSIONTEMPLATE, POLICYGROUP, POLICYGROUPTEMPLATE, PUBLICNETWORK, REDIRECTIONTARGET, REDIRECTIONTARGETTEMPLATE, SUBNET, SUBNETTEMPLATE, ZONE, ZONETEMPLATE.
    */
    CPString _locationEntityType @accessors(property=locationEntityType);
    /*!
        The ID of the location entity (Subnet/Zone/VportTag)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the location entity - ANY or SUBNET or ZONE or VPORTTAG
    */
    CPString _locationType @accessors(property=locationType);
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
        Associated Firewall Acl ID
    */
    CPString _associatedfirewallACLID @accessors(property=associatedfirewallACLID);
    /*!
        true means that this ACL entry is stateful, so there will be a corresponding rule that will be created by OVS in the network. false means that there is no correspondingrule created by OVS in the network 
    */
    BOOL _stateful @accessors(property=stateful);
    /*!
        The statsID that is created in the VSD and identifies this ACL Template Entry..  This is auto-generated by VSD
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
    return @"firewallrule";
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
        [self exposeLocalKeyPathToREST:@"webFilterID"];
        [self exposeLocalKeyPathToREST:@"webFilterStatsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"webFilterType"];
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
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedLiveTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficType"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficTypeID"];
        [self exposeLocalKeyPathToREST:@"associatedfirewallACLID"];
        [self exposeLocalKeyPathToREST:@"stateful"];
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