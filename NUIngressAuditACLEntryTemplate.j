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
@import "Fetchers/NUStatisticsFetcher.j"

NUIngressAuditACLEntryTemplateAction_TRANSPARENT = @"TRANSPARENT";
NUIngressAuditACLEntryTemplateAssociatedTrafficType_L4_SERVICE = @"L4_SERVICE";
NUIngressAuditACLEntryTemplateAssociatedTrafficType_L4_SERVICE_GROUP = @"L4_SERVICE_GROUP";
NUIngressAuditACLEntryTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressAuditACLEntryTemplateEntityScope_GLOBAL = @"GLOBAL";
NUIngressAuditACLEntryTemplateLocationEntityType_ENTERPRISENETWORK = @"ENTERPRISENETWORK";
NUIngressAuditACLEntryTemplateLocationEntityType_NETWORKMACROGROUP = @"NETWORKMACROGROUP";
NUIngressAuditACLEntryTemplateLocationEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAuditACLEntryTemplateLocationEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUIngressAuditACLEntryTemplateLocationEntityType_POLICYGROUP = @"POLICYGROUP";
NUIngressAuditACLEntryTemplateLocationEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUIngressAuditACLEntryTemplateLocationEntityType_PUBLICNETWORK = @"PUBLICNETWORK";
NUIngressAuditACLEntryTemplateLocationEntityType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUIngressAuditACLEntryTemplateLocationEntityType_REDIRECTIONTARGETTEMPLATE = @"REDIRECTIONTARGETTEMPLATE";
NUIngressAuditACLEntryTemplateLocationEntityType_SUBNET = @"SUBNET";
NUIngressAuditACLEntryTemplateLocationEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUIngressAuditACLEntryTemplateLocationEntityType_ZONE = @"ZONE";
NUIngressAuditACLEntryTemplateLocationEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUIngressAuditACLEntryTemplateLocationType_ANY = @"ANY";
NUIngressAuditACLEntryTemplateLocationType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAuditACLEntryTemplateLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressAuditACLEntryTemplateLocationType_SUBNET = @"SUBNET";
NUIngressAuditACLEntryTemplateLocationType_ZONE = @"ZONE";
NUIngressAuditACLEntryTemplateNetworkEntityType_ENTERPRISENETWORK = @"ENTERPRISENETWORK";
NUIngressAuditACLEntryTemplateNetworkEntityType_NETWORKMACROGROUP = @"NETWORKMACROGROUP";
NUIngressAuditACLEntryTemplateNetworkEntityType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAuditACLEntryTemplateNetworkEntityType_PGEXPRESSIONTEMPLATE = @"PGEXPRESSIONTEMPLATE";
NUIngressAuditACLEntryTemplateNetworkEntityType_POLICYGROUP = @"POLICYGROUP";
NUIngressAuditACLEntryTemplateNetworkEntityType_POLICYGROUPTEMPLATE = @"POLICYGROUPTEMPLATE";
NUIngressAuditACLEntryTemplateNetworkEntityType_PUBLICNETWORK = @"PUBLICNETWORK";
NUIngressAuditACLEntryTemplateNetworkEntityType_SAASAPPLICATIONGROUP = @"SAASAPPLICATIONGROUP";
NUIngressAuditACLEntryTemplateNetworkEntityType_SUBNET = @"SUBNET";
NUIngressAuditACLEntryTemplateNetworkEntityType_SUBNETTEMPLATE = @"SUBNETTEMPLATE";
NUIngressAuditACLEntryTemplateNetworkEntityType_ZONE = @"ZONE";
NUIngressAuditACLEntryTemplateNetworkEntityType_ZONETEMPLATE = @"ZONETEMPLATE";
NUIngressAuditACLEntryTemplateNetworkType_ANY = @"ANY";
NUIngressAuditACLEntryTemplateNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressAuditACLEntryTemplateNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressAuditACLEntryTemplateNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressAuditACLEntryTemplateNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUIngressAuditACLEntryTemplateNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUIngressAuditACLEntryTemplateNetworkType_PGEXPRESSION = @"PGEXPRESSION";
NUIngressAuditACLEntryTemplateNetworkType_POLICYGROUP = @"POLICYGROUP";
NUIngressAuditACLEntryTemplateNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUIngressAuditACLEntryTemplateNetworkType_SAAS_APPLICATION_GROUP = @"SAAS_APPLICATION_GROUP";
NUIngressAuditACLEntryTemplateNetworkType_SUBNET = @"SUBNET";
NUIngressAuditACLEntryTemplateNetworkType_UNDERLAY_INTERNET_POLICYGROUP = @"UNDERLAY_INTERNET_POLICYGROUP";
NUIngressAuditACLEntryTemplateNetworkType_ZONE = @"ZONE";
NUIngressAuditACLEntryTemplatePolicyState_DRAFT = @"DRAFT";
NUIngressAuditACLEntryTemplatePolicyState_LIVE = @"LIVE";
NUIngressAuditACLEntryTemplateWebFilterType_WEB_CATEGORY = @"WEB_CATEGORY";
NUIngressAuditACLEntryTemplateWebFilterType_WEB_DOMAIN_NAME = @"WEB_DOMAIN_NAME";


/*!
    Security Policy Entries defines what action to take for a particular type of traffic, based on its origin and its destination, its protocol, EtherType, eventual ports, DSCP value and other information.
*/
@implementation NUIngressAuditACLEntryTemplate : NURESTObject
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
        Overrides the source IPv6 for Ingress and destination IPv6 for Egress, MAC entries will use this address as the match criteria.
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
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The action of the ACL entry is only TRANSPARENT.
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
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
        The ID of the destination endpoint (Subnet/Zone/Macro/MacroGroup/PolicyGroup/PolicyGroupExpression)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the destination endpoint (Subnet/Zone/Macro/MacroGroup/PolicyGroup/PolicyGroupExpression)
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
        Indicates whether the Location Entity of ACL Entry was derived from a L2/L3 Domain template or instance. Possible Values: ENTERPRISENETWORK, NETWORKMACROGROUP, PGEXPRESSION, PGEXPRESSIONTEMPLATE, POLICYGROUP, POLICYGROUPTEMPLATE, PUBLICNETWORK, REDIRECTIONTARGET, REDIRECTIONTARGETTEMPLATE, SUBNET, SUBNETTEMPLATE, ZONE, ZONETEMPLATE.
    */
    CPString _locationEntityType @accessors(property=locationEntityType);
    /*!
        The ID of the source endpoint (Subnet/Zone/VportTag/PortGroup/PolicyGroupExpression)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the source endpoint (Subnet/Zone/VportTag/PortGroup/PolicyGroupExpression)
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
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        The UUID of the associated L7 Application signature
    */
    CPString _associatedL7ApplicationSignatureID @accessors(property=associatedL7ApplicationSignatureID);
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
        The ID of the Virtual Firewall Rule, if this was derived as part of the Virtual Firewall Rule creation
    */
    CPString _associatedVirtualFirewallRuleID @accessors(property=associatedVirtualFirewallRuleID);
    /*!
        True means that this ACL entry is stateful, so there will be a corresponding rule that will be created by OVS in the network. False means that there is no corresponding rule created by OVS in the network.
    */
    BOOL _stateful @accessors(property=stateful);
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
        ID of the overlay mirror destination
    */
    CPString _overlayMirrorDestinationID @accessors(property=overlayMirrorDestinationID);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ingressauditaclentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
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
        [self exposeLocalKeyPathToREST:@"policyState"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedL7ApplicationSignatureID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveTemplateID"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficType"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficTypeID"];
        [self exposeLocalKeyPathToREST:@"associatedVirtualFirewallRuleID"];
        [self exposeLocalKeyPathToREST:@"stateful"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"overlayMirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end