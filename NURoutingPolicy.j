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

NURoutingPolicyContentType_DEFAULT = @"DEFAULT";
NURoutingPolicyContentType_NETCONF_7X50 = @"NETCONF_7X50";
NURoutingPolicyContentType_SR_LINUX = @"SR_LINUX";
NURoutingPolicyDefaultAction_ACCEPT = @"ACCEPT";
NURoutingPolicyDefaultAction_REJECT = @"REJECT";
NURoutingPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NURoutingPolicyEntityScope_GLOBAL = @"GLOBAL";
NURoutingPolicyRoutingProtocol_BGP = @"BGP";
NURoutingPolicyRoutingProtocol_ISIS = @"ISIS";
NURoutingPolicyRoutingProtocol_OSPFV2 = @"OSPFv2";
NURoutingPolicyRoutingProtocol_OSPFV3 = @"OSPFv3";
NURoutingPolicyRoutingProtocol_ROUTING = @"ROUTING";


/*!
    Pre-defined sets of attributes used in policy match conditions: prefix lists, entries, damping profiles, etc.
*/
@implementation NURoutingPolicy : NURESTObject
{
    /*!
        policy name, unique within an enterprise
    */
    CPString _name @accessors(property=name);
    /*!
        accept/reject
    */
    CPString _defaultAction @accessors(property=defaultAction);
    /*!
        None
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        String blob
    */
    CPString _policyDefinition @accessors(property=policyDefinition);
    /*!
        Content type for routing policy provisioning for different mediation devices
    */
    CPString _contentType @accessors(property=contentType);
    /*!
        Routing protocol this policy definition is used for
    */
    CPString _routingProtocol @accessors(property=routingProtocol);
    /*!
        The customer ID given to parent enterprise. This is used by Netconf/Config manager.
    */
    CPNumber _CustomerID @accessors(property=CustomerID);
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
    return @"routingpolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"defaultAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyDefinition"];
        [self exposeLocalKeyPathToREST:@"contentType"];
        [self exposeLocalKeyPathToREST:@"routingProtocol"];
        [self exposeLocalKeyPathToREST:@"CustomerID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end