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

@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUVLANsFetcher.j"

NUPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPortEntityScope_GLOBAL = @"GLOBAL";
NUPortPermittedAction_ALL = @"ALL";
NUPortPermittedAction_DEPLOY = @"DEPLOY";
NUPortPermittedAction_EXTEND = @"EXTEND";
NUPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUPortPermittedAction_READ = @"READ";
NUPortPermittedAction_USE = @"USE";
NUPortPortType_ACCESS = @"ACCESS";
NUPortPortType_NETWORK = @"NETWORK";
NUPortStatus_INITIALIZED = @"INITIALIZED";
NUPortStatus_MISMATCH = @"MISMATCH";
NUPortStatus_ORPHAN = @"ORPHAN";
NUPortStatus_READY = @"READY";


/*!
    Represents Port under a particular gateway object or redundant group object.
*/
@implementation NUPort : NURESTObject
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
        ID of the redundant port to which this Port instance may be associated to.
    */
    CPString _associatedRedundantPortID @accessors(property=associatedRedundantPortID);
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
        States if this port instance is resilient (redundant).  An example would be a Multi-Chassis LAG port.
    */
    BOOL _isResilient @accessors(property=isResilient);
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
        Type of the Port.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Status of the port.
    */
    CPString _status @accessors(property=status);
    /*!
        The ID of the template that this Port was created from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        determines whether to use user mnemonic of the Port
    */
    BOOL _useUserMnemonic @accessors(property=useUserMnemonic);
    /*!
        user mnemonic of the Port
    */
    CPString _userMnemonic @accessors(property=userMnemonic);
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"port";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedRedundantPortID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"isResilient"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end