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

NUVirtualFirewallRuleAction_DROP = @"DROP";
NUVirtualFirewallRuleAction_FORWARD = @"FORWARD";
NUVirtualFirewallRuleAction_REDIRECT = @"REDIRECT";
NUVirtualFirewallRuleAssociatedTrafficType_L4_SERVICE = @"L4_SERVICE";
NUVirtualFirewallRuleAssociatedTrafficType_L4_SERVICE_GROUP = @"L4_SERVICE_GROUP";
NUVirtualFirewallRuleEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVirtualFirewallRuleEntityScope_GLOBAL = @"GLOBAL";
NUVirtualFirewallRuleLocationType_ANY = @"ANY";
NUVirtualFirewallRuleLocationType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUVirtualFirewallRuleLocationType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUVirtualFirewallRuleLocationType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUVirtualFirewallRuleLocationType_PGEXPRESSION = @"PGEXPRESSION";
NUVirtualFirewallRuleLocationType_POLICYGROUP = @"POLICYGROUP";
NUVirtualFirewallRuleLocationType_SUBNET = @"SUBNET";
NUVirtualFirewallRuleLocationType_ZONE = @"ZONE";
NUVirtualFirewallRuleNetworkType_ANY = @"ANY";
NUVirtualFirewallRuleNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUVirtualFirewallRuleNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUVirtualFirewallRuleNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUVirtualFirewallRuleNetworkType_PGEXPRESSION = @"PGEXPRESSION";
NUVirtualFirewallRuleNetworkType_POLICYGROUP = @"POLICYGROUP";
NUVirtualFirewallRuleNetworkType_SUBNET = @"SUBNET";
NUVirtualFirewallRuleNetworkType_ZONE = @"ZONE";
NUVirtualFirewallRulePolicyState_DRAFT = @"DRAFT";
NUVirtualFirewallRulePolicyState_LIVE = @"LIVE";


/*!
    Defines the Virtual Firewall rules
*/
@implementation NUVirtualFirewallRule : NURESTObject
{
    /*!
        The name of the parent template for this rule entry
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
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the rule, DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry Possible values are DROP, FORWARD, REDIRECT, .
    */
    CPString _action @accessors(property=action);
    /*!
        Description of the rule entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or a single port number or a port range like 1,2.. or 1 - 10
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        The ID of the destination endpoint (Subnet/Zone/PortGroup/PolicyGroupExpression/NetworkMacro/Internet Policy Group/Enterprise Network)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the destination endpoint (Subnet/Zone/PortGroup/PolicyGroupExpression/NetworkMacro/Internet Policy Group/Enterprise Network)
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
        The name of the enterprise for the domain's parent
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The ID of the source endpoint (Subnet/Zone/PortGroup/PolicyGroupExpression/NetworkMacro/Internet Policy Group/Enterprise Network)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the source endpoint (Subnet/Zone/PortGroup/PolicyGroupExpression/NetworkMacro/Internet Policy Group/Enterprise Network)
    */
    CPString _locationType @accessors(property=locationType);
    /*!
        State of the policy.
    */
    CPString _policyState @accessors(property=policyState);
    /*!
        The name of the domain/domain template for the Rule TemplateName.
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value should be either * or a single port number or a port range like 1,2.. or 1 - 10
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        The priority of the rule entry that determines the order of entries
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        The UUID of the associated L7 Application Signature
    */
    CPString _associatedL7ApplicationSignatureID @accessors(property=associatedL7ApplicationSignatureID);
    /*!
        In the draft mode, the rule entry refers to this LiveEntity. In live mode, this is null.
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
    /*!
        This property reflects the type of traffic in case a rule entry is created using an L4 Service or L4 Service Group. In case a protocol and port are specified for the ACL entry, this property has to be empty (null). Supported values are L4_SERVICE, L4_SERVICE_GROUP and empty.
    */
    CPString _associatedTrafficType @accessors(property=associatedTrafficType);
    /*!
        If a traffic type is specified as L4 Service or Service Group, then the associated Id of  Service / Service Group should be specifed here
    */
    CPString _associatedTrafficTypeID @accessors(property=associatedTrafficTypeID);
    /*!
        The statsID that is created in the VSD and identifies this Rule Template Entry. This is auto-generated by VSD
    */
    CPString _statsID @accessors(property=statsID);
    /*!
        Is stats logging enabled for this particular template
    */
    BOOL _statsLoggingEnabled @accessors(property=statsLoggingEnabled);
    /*!
        ID of the overlay mirror destination
    */
    CPString _overlayMirrorDestinationID @accessors(property=overlayMirrorDestinationID);
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
    return @"virtualfirewallrule";
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
        [self exposeLocalKeyPathToREST:@"associatedL7ApplicationSignatureID"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficType"];
        [self exposeLocalKeyPathToREST:@"associatedTrafficTypeID"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"overlayMirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end