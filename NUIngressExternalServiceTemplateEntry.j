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

NUIngressExternalServiceTemplateEntryAction_DROP = @"DROP";
NUIngressExternalServiceTemplateEntryAction_FORWARD = @"FORWARD";
NUIngressExternalServiceTemplateEntryAction_REDIRECT = @"REDIRECT";
NUIngressExternalServiceTemplateEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressExternalServiceTemplateEntryEntityScope_GLOBAL = @"GLOBAL";
NUIngressExternalServiceTemplateEntryLocationType_ANY = @"ANY";
NUIngressExternalServiceTemplateEntryLocationType_POLICYGROUP = @"POLICYGROUP";
NUIngressExternalServiceTemplateEntryLocationType_SUBNET = @"SUBNET";
NUIngressExternalServiceTemplateEntryLocationType_ZONE = @"ZONE";
NUIngressExternalServiceTemplateEntryNetworkType_ANY = @"ANY";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_DOMAIN = @"ENDPOINT_DOMAIN";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_SUBNET = @"ENDPOINT_SUBNET";
NUIngressExternalServiceTemplateEntryNetworkType_ENDPOINT_ZONE = @"ENDPOINT_ZONE";
NUIngressExternalServiceTemplateEntryNetworkType_ENTERPRISE_NETWORK = @"ENTERPRISE_NETWORK";
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
        Name of the entity.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The action of the ACL entry DROP or FORWARD or REDIRECT. Action REDIRECT is allowed only for IngressAdvancedForwardingEntry
    */
    CPString _action @accessors(property=action);
    /*!
        Overrides the source IP for Ingress and destination IP for Egress, MAC entries will use this address as the match criteria.
    */
    CPString _addressOverride @accessors(property=addressOverride);
    /*!
        VPort tag to which traffic will be redirected to, when ACL entry match criteria succeeds
    */
    CPString _redirectExternalServiceEndPointID @accessors(property=redirectExternalServiceEndPointID);
    /*!
        Description of the ACL entry
    */
    CPString _description @accessors(property=description);
    /*!
        The destination port to be matched if protocol is UDP or TCP. Value should be either * or single port number or a port range
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        The destination network entity that is referenced(subnet/zone/macro)
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
        Type of the location entity.
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
    return @"ingressexternalserviceentrytemplate";
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
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"addressOverride"];
        [self exposeLocalKeyPathToREST:@"redirectExternalServiceEndPointID"];
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
        [self exposeLocalKeyPathToREST:@"associatedLiveEntityID"];
        [self exposeLocalKeyPathToREST:@"statsID"];
        [self exposeLocalKeyPathToREST:@"statsLoggingEnabled"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end