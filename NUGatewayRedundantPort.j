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

@import "Fetchers/NUVLANsFetcher.j"

NUGatewayRedundantPortPermittedAction_ALL = @"ALL";
NUGatewayRedundantPortPermittedAction_DEPLOY = @"DEPLOY";
NUGatewayRedundantPortPermittedAction_EXTEND = @"EXTEND";
NUGatewayRedundantPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUGatewayRedundantPortPermittedAction_READ = @"READ";
NUGatewayRedundantPortPermittedAction_USE = @"USE";
NUGatewayRedundantPortPortType_ACCESS = @"ACCESS";
NUGatewayRedundantPortPortType_NETWORK = @"NETWORK";
NUGatewayRedundantPortStatus_INITIALIZED = @"INITIALIZED";
NUGatewayRedundantPortStatus_MISMATCH = @"MISMATCH";
NUGatewayRedundantPortStatus_ORPHAN = @"ORPHAN";
NUGatewayRedundantPortStatus_READY = @"READY";


/*!
    Represents a redundant Port under a particular gateway object or redundant group object.
*/
@implementation NUGatewayRedundantPort : NURESTObject
{
    /*!
        VLAN Range of the Port.  Format must conform to a-b,c,d-f where a,b,c,d,f are integers between 0 and 4095.
    */
    CPString _VLANRange @accessors(property=VLANRange);
    /*!
        Name of the Port
    */
    CPString _name @accessors(property=name);
    /*!
        The permitted  action to USE/EXTEND  this port.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the Port
    */
    CPString _description @accessors(property=description);
    /*!
        Identifier of the Redundant Port. The name should be corresponding to the Physical Name of the ports belonging to this redundant instance.
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
        determines whether to use user mnemonic of the Port
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        user mnemonic of the Port
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    /*!
        UUID of the Egress QOS Policy associated with this Vlan.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        Status of the port.
    */
    CPString _status @accessors(property=status);
    
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"gatewayredundantport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"portPeer1ID"];
        [self exposeLocalKeyPathToREST:@"portPeer2ID"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"status"];
        
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end