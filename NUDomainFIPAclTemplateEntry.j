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

NUDomainFIPAclTemplateEntryAction_DROP = @"DROP";
NUDomainFIPAclTemplateEntryAction_FORWARD = @"FORWARD";
NUDomainFIPAclTemplateEntryAction_REDIRECT = @"REDIRECT";
NUDomainFIPAclTemplateEntryDestinationType_NETWORK = @"NETWORK";
NUDomainFIPAclTemplateEntryDestinationType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUDomainFIPAclTemplateEntryDestinationType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDomainFIPAclTemplateEntryEntityScope_GLOBAL = @"GLOBAL";
NUDomainFIPAclTemplateEntryLocationType_ANY = @"ANY";
NUDomainFIPAclTemplateEntryLocationType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryLocationType_REDIRECTIONTARGET = @"REDIRECTIONTARGET";
NUDomainFIPAclTemplateEntryLocationType_SUBNET = @"SUBNET";
NUDomainFIPAclTemplateEntryLocationType_VPORTTAG = @"VPORTTAG";
NUDomainFIPAclTemplateEntryLocationType_ZONE = @"ZONE";
NUDomainFIPAclTemplateEntryNetworkType_ANY = @"ANY";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUDomainFIPAclTemplateEntryNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUDomainFIPAclTemplateEntryNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
NUDomainFIPAclTemplateEntryNetworkType_INTERNET_POLICYGROUP = @"INTERNET_POLICYGROUP";
NUDomainFIPAclTemplateEntryNetworkType_NETWORK_MACRO_GROUP = @"NETWORK_MACRO_GROUP";
NUDomainFIPAclTemplateEntryNetworkType_POLICYGROUP = @"POLICYGROUP";
NUDomainFIPAclTemplateEntryNetworkType_PUBLIC_NETWORK = @"PUBLIC_NETWORK";
NUDomainFIPAclTemplateEntryNetworkType_SUBNET = @"SUBNET";
NUDomainFIPAclTemplateEntryNetworkType_ZONE = @"ZONE";
NUDomainFIPAclTemplateEntryPolicyState_DRAFT = @"DRAFT";
NUDomainFIPAclTemplateEntryPolicyState_LIVE = @"LIVE";
NUDomainFIPAclTemplateEntrySourceType_NETWORK = @"NETWORK";
NUDomainFIPAclTemplateEntrySourceType_NETWORKPOLICYGROUP = @"NETWORKPOLICYGROUP";
NUDomainFIPAclTemplateEntrySourceType_POLICYGROUP = @"POLICYGROUP";


/*!
    Defines the template of Egress Domain ACL Template entries
*/
@implementation NUDomainFIPAclTemplateEntry : NURESTObject
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
        Overrides the source IPv6 for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
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
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry
    */
    CPString _action @accessors(property=action);
    /*!
        Type of action to be performed when a ACL match criteria succeeds
    */
    NURESTObject _actionDetails @accessors(property=actionDetails);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgId @accessors(property=destPgId);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _destPgType @accessors(property=destPgType);
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
        Type of the source network -    VM_SUBNET or VM_ZONE or VM_DOMAIN or SUBNET or ZONE or ENTERPRISE_NETWORK or PUBLIC_NETWORK or ANY
    */
    CPString _networkType @accessors(property=networkType);
    /*!
        This is the ID of the mirrorDestination entity associated with this entity
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
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The ID of the location entity (Subnet/Zone/VportTag)
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        Type of the location entity - ANY or SUBNET or ZONE or VPORTTAG
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
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
    */
    CPString _sourcePgId @accessors(property=sourcePgId);
    /*!
        In case of PG this will be its EVPNBGPCommunity String, incase of network it will be network cidr
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
    CPNumber _priority @accessors(property=priority);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        ID of the associated live entity
    */
    CPString _associatedLiveEntityID @accessors(property=associatedLiveEntityID);
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
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressdomainfloatingipaclentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"actionDetails"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destPgId"];
        [self exposeLocalKeyPathToREST:@"destPgType"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"destinationType"];
        [self exposeLocalKeyPathToREST:@"destinationValue"];
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
        [self exposeLocalKeyPathToREST:@"sourcePgId"];
        [self exposeLocalKeyPathToREST:@"sourcePgType"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"sourceType"];
        [self exposeLocalKeyPathToREST:@"sourceValue"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"stateful"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end