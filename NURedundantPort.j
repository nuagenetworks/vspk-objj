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
@import "Fetchers/NUVLANsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUNSPortsFetcher.j"

NURedundantPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NURedundantPortEntityScope_GLOBAL = @"GLOBAL";
NURedundantPortPermittedAction_ALL = @"ALL";
NURedundantPortPermittedAction_DEPLOY = @"DEPLOY";
NURedundantPortPermittedAction_EXTEND = @"EXTEND";
NURedundantPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NURedundantPortPermittedAction_READ = @"READ";
NURedundantPortPermittedAction_USE = @"USE";
NURedundantPortPortType_ACCESS = @"ACCESS";
NURedundantPortSpeed_AUTONEGOTIATE = @"AUTONEGOTIATE";
NURedundantPortSpeed_BASET10 = @"BASET10";
NURedundantPortSpeed_BASET1000 = @"BASET1000";
NURedundantPortSpeed_BASETX100 = @"BASETX100";
NURedundantPortSpeed_BASEX10G = @"BASEX10G";
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
        Port MTU (Maximum Transmission Unit) :  The size in octets of the largest protocol data unit (PDU) that the layer can pass on.  The default value is normally 1500 octets for Ethernet v2 and can go up to 9198 for Jumbo Frames.
    */
    CPNumber _MTU @accessors(property=MTU);
    /*!
        Name of the Redundant Port
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The permitted action to USE/EXTEND this Redundant Port.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the Redundant Port instance.
    */
    CPString _description @accessors(property=description);
    /*!
        Identifier of the Redundant Port.  The name should be corresponding to the Physical Name of the ports belonging to this redundant instance.
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        The ID of the infrastructure port profile this instance is associated with.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Port ID of the port acting as master component of the redundant port instance.
    */
    CPString _portPeer1ID @accessors(property=portPeer1ID);
    /*!
        Port ID of the port acting as slave component of the redundant port instance.
    */
    CPString _portPeer2ID @accessors(property=portPeer2ID);
    /*!
        Type of the Redundant Port.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Port Speed in Mb/s :  Supported Ethernet speeds are 10 (10Base-T), 100 (Fast-ethernet 100Base-TX), 1000 (Gigabit Ethernet 1000Base-T), 10 000 (10 Gigabit Ethernet 10GBase-X), and Auto-Negotiate.
    */
    CPString _speed @accessors(property=speed);
    /*!
        A flag to indicate if for this redundant port an untagged heartbeat VLAN is to be used. If this is not set then will use the heartbeat VLAN set by the NS redundant group
    */
    BOOL _useUntaggedHeartbeatVlan @accessors(property=useUntaggedHeartbeatVlan);
    /*!
        Determines whether to use user mnemonic of the Port
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        User mnemonic of the Redundant Port.
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    /*!
        ID of the Egress QoS Policy associated with this Redundant Port.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        Status of the redundant port.
    */
    CPString _status @accessors(property=status);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUNSPortsFetcher _childrenNSPorts @accessors(property=childrenNSPorts);
    
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
        [self exposeLocalKeyPathToREST:@"MTU"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"portPeer1ID"];
        [self exposeLocalKeyPathToREST:@"portPeer2ID"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"speed"];
        [self exposeLocalKeyPathToREST:@"useUntaggedHeartbeatVlan"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenNSPorts = [NUNSPortsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end