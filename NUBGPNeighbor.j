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

NUBGPNeighborEntityScope_ENTERPRISE = @"ENTERPRISE";
NUBGPNeighborEntityScope_GLOBAL = @"GLOBAL";


/*!
    None
*/
@implementation NUBGPNeighbor : NURESTObject
{
    /*!
        Enable or disable Bidirectional Forwarding Detection for this BGP neighbor
    */
    BOOL _BFDEnabled @accessors(property=BFDEnabled);
    /*!
        Name of the peer
    */
    CPString _name @accessors(property=name);
    /*!
        Enable/disable route flap damping.
    */
    BOOL _dampeningEnabled @accessors(property=dampeningEnabled);
    /*!
        Local autonomous system to be used when establishing a session with the remote peer if it is different from the global BGP router autonomous system number.
    */
    CPNumber _peerAS @accessors(property=peerAS);
    /*!
        IP Address of the neighbor. If the neighbor is attached to a host vPort this is optional or must be the same as the host's IP. For uplink or bridge vPort neighbors the IP address must be specified 
    */
    CPString _peerIP @accessors(property=peerIP);
    /*!
        Short description for this peer
    */
    CPString _description @accessors(property=description);
    /*!
        neighbor session yang blob
    */
    CPString _session @accessors(property=session);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        export policy ID
    */
    CPString _associatedExportRoutingPolicyID @accessors(property=associatedExportRoutingPolicyID);
    /*!
        import routing policy ID
    */
    CPString _associatedImportRoutingPolicyID @accessors(property=associatedImportRoutingPolicyID);
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
    return @"bgpneighbor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"BFDEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"dampeningEnabled"];
        [self exposeLocalKeyPathToREST:@"peerAS"];
        [self exposeLocalKeyPathToREST:@"peerIP"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"session"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedExportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedImportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end