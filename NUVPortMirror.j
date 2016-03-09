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

@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"

NUVPortMirrorEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVPortMirrorEntityScope_GLOBAL = @"GLOBAL";
NUVPortMirrorMirrorDirection_BOTH = @"BOTH";
NUVPortMirrorMirrorDirection_EGRESS = @"EGRESS";
NUVPortMirrorMirrorDirection_INGRESS = @"INGRESS";


/*!
    VPort Mirror represents the relationship between a vport and a mirror destination.
*/
@implementation NUVPortMirror : NURESTObject
{
    /*!
        Name of the vport to which the mirror destination is associated with.
    */
    CPString _VPortName @accessors(property=VPortName);
    /*!
        Type of the network attached - L2/L3
    */
    CPString _attachedNetworkType @accessors(property=attachedNetworkType);
    /*!
        Domain name of the vport associated with the mirror destination
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        Enterprise to which the vport associated with the mirror destination belongs to.
    */
    CPString _enterpiseName @accessors(property=enterpiseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Destination ID of the mirror destination object.
    */
    CPString _mirrorDestinationID @accessors(property=mirrorDestinationID);
    /*!
        Name of the mirror destination
    */
    CPString _mirrorDestinationName @accessors(property=mirrorDestinationName);
    /*!
        Describes what type of traffic needs to be mirrored.
    */
    CPString _mirrorDirection @accessors(property=mirrorDirection);
    /*!
        Name of the network to which the vport belongs to
    */
    CPString _networkName @accessors(property=networkName);
    /*!
        Id of the vport to which the mirror destination is associated with.
    */
    CPString _vportId @accessors(property=vportId);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vportmirror";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VPortName"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkType"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"enterpiseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationID"];
        [self exposeLocalKeyPathToREST:@"mirrorDestinationName"];
        [self exposeLocalKeyPathToREST:@"mirrorDirection"];
        [self exposeLocalKeyPathToREST:@"networkName"];
        [self exposeLocalKeyPathToREST:@"vportId"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        _mirrorDirection = @"BOTH";
        
    }

    return self;
}

@end