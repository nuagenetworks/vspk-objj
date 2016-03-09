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
@import "Fetchers/NUNSPortsFetcher.j"
@import "Fetchers/NUVLANsFetcher.j"

NURedundantPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NURedundantPortEntityScope_GLOBAL = @"GLOBAL";
NURedundantPortPermittedAction_ALL = @"ALL";
NURedundantPortPermittedAction_DEPLOY = @"DEPLOY";
NURedundantPortPermittedAction_EXTEND = @"EXTEND";
NURedundantPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NURedundantPortPermittedAction_READ = @"READ";
NURedundantPortPermittedAction_USE = @"USE";
NURedundantPortPortType_ACCESS = @"ACCESS";
NURedundantPortPortType_NETWORK = @"NETWORK";
NURedundantPortStatus_INITIALIZED = @"INITIALIZED";
NURedundantPortStatus_MISMATCH = @"MISMATCH";
NURedundantPortStatus_ORPHAN = @"ORPHAN";
NURedundantPortStatus_READY = @"READY";


/*!
    Represents a Port under a particular gateway object or redundant group object.
*/
@implementation NURedundantPort : NURESTObject
{
    /*!
        VLAN Range of the Port.  Format must conform to a-b,c,d-f where a,b,c,d,f are integers between 0 and 4095.
    */
    CPString _VLANRange @accessors(property=VLANRange);
    /*!
        ID of the Egress QOS Policy associated with this Vlan.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        A description of the Port
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The ID of the infrastructure profile this instance is associated with.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the Port
    */
    CPString _name @accessors(property=name);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Identifier of the Port
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        The master gateway peer port id.
    */
    CPString _portPeer1ID @accessors(property=portPeer1ID);
    /*!
        The slave gateway peer port id.
    */
    CPString _portPeer2ID @accessors(property=portPeer2ID);
    /*!
        Type of the Port.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Status of the port.
    */
    CPString _status @accessors(property=status);
    /*!
        A flag to indicate if for this redundant port an untagged heartbeat VLAN is to be used. If this is not set then will use the heartbeat VLAN set by the NS redundant group
    */
    BOOL _useUntaggedHeartbeatVlan @accessors(property=useUntaggedHeartbeatVlan);
    /*!
        determines whether to use user mnemonic of the Port
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        user mnemonic of the Port
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsredundantport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"portPeer1ID"];
        [self exposeLocalKeyPathToREST:@"portPeer2ID"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"useUntaggedHeartbeatVlan"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end