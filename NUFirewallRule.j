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


NUFirewallRuleAction_DROP  = @"DROP ";
NUFirewallRuleAction_FORWARD  = @"FORWARD ";
NUFirewallRuleAction_REDIRECT = @"REDIRECT";
NUFirewallRuleDestinationType_MACROGROUP = @"MACROGROUP";
NUFirewallRuleDestinationType_NETWORK = @"NETWORK";
NUFirewallRuleDestinationType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUFirewallRuleDestinationType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleLocationType_ANY = @"ANY";
NUFirewallRuleLocationType_POLICYGROUP = @"POLICYGROUP";
NUFirewallRuleLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUFirewallRuleLocationType_SUBNET = @"SUBNET";
NUFirewallRuleLocationType_VPORTTAG = @"VPORTTAG";
NUFirewallRuleLocationType_ZONE = @"ZONE";
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
NUFirewallRuleSourceType_MACROGROUP = @"MACROGROUP";
NUFirewallRuleSourceType_NETWORK = @"NETWORK";
NUFirewallRuleSourceType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUFirewallRuleSourceType_POLICYGROUP = @"POLICYGROUP";


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
        Overrides the source IPV6 for Ingress and destination IPV6 for Egress, macentries will use this adress as the match criteria.
    */
    CPString _IPv6AddressOverride @accessors(property=IPv6AddressOverride);
    /*!
        DSCP match condition to be set in the rule. It is either * or from 0-63
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT.
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, macentries will use this adress as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        Destination network - available in version 1.0 api
    */
    CPString _destNetwork @accessors(property=destNetwork);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgId @accessors(property=destPgId);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgType @accessors(property=destPgType);
    /*!
        destination IPV6 address
    */
    CPString _destinationIpv6Value @accessors(property=destinationIpv6Value);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Network Type - either PolicyGroup or Network
    */
    CPString _destinationType @accessors(property=destinationType);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destinationValue @accessors(property=destinationValue);
    /*!
        The destination network entity that is referenced(subnet/zone/macro)
    */
    CPString _networkID @accessors(property=networkID);
    /*!
        Type of the source network -  VM_SUBNET or VM_ZONE or VM_DOMAIN or SUBNET or ZONE or ENTERPRISE_NETWORK or PUBLIC_NETWORK or ANY
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        This is the ID of the mirrorDestrination entity associated with this entity
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
        source IPV6 address
    */
    CPString _sourceIpv6Value @accessors(property=sourceIpv6Value);
    /*!
        Source network - available in version 1.0 api
    */
    CPString _sourceNetwork @accessors(property=sourceNetwork);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourcePgId @accessors(property=sourcePgId);
    /*!
        in case of PG this will be its EVPNBGPCommunity String, incase of network itdomainfip will be network cidr
    */
    CPString _sourcePgType @accessors(property=sourcePgType);
    /*!
        Source port to be matched if protocol is UDP or TCP. Value can be either * or single port number or a port range
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        Location Type - either PolicyGroup or Network
    */
    CPString _sourceType @accessors(property=sourceType);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourceValue @accessors(property=sourceValue);
    /*!
        The priority of the ACL entry that determines the order of entries
    */
    CPString _priority @accessors(property=priority);
    /*!
        The associated application ID
    */
    CPString _associatedApplicationID @accessors(property=associatedApplicationID);
    /*!
        The associated application object ID
    */
    CPString _associatedApplicationObjectID @accessors(property=associatedApplicationObjectID);
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
        Is stats logging enabled for this particular template
    */
    BOOL _statsLoggingEnabled @accessors(property=statsLoggingEnabled);
    /*!
        Ether type of the packet to be matched. etherType can be * or a valid hexadecimal value
    */
    CPString _etherType @accessors(property=etherType);
    
    
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
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destNetwork"];
        [self exposeLocalKeyPathToREST:@"destPgId"];
        [self exposeLocalKeyPathToREST:@"destPgType"];
        [self exposeLocalKeyPathToREST:@"destinationIpv6Value"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"destinationType"];
        [self exposeLocalKeyPathToREST:@"destinationValue"];
        [self exposeLocalKeyPathToREST:@"networkID"];
        [self exposeLocalKeyPathToREST:@"networkType"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"flowLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"locationType"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"sourceIpv6Value"];
        [self exposeLocalKeyPathToREST:@"sourceNetwork"];
        [self exposeLocalKeyPathToREST:@"sourcePgId"];
        [self exposeLocalKeyPathToREST:@"sourcePgType"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"sourceType"];
        [self exposeLocalKeyPathToREST:@"sourceValue"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationID"];
        [self exposeLocalKeyPathToREST:@"associatedApplicationObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedfirewallACLID"];
        [self exposeLocalKeyPathToREST:@"stateful"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        
        
        
    }

    return self;
}

@end