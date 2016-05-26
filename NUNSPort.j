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
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUNSPortStaticConfigurationsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUNSPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSPortEntityScope_GLOBAL = @"GLOBAL";
NUNSPortPermittedAction_ALL = @"ALL";
NUNSPortPermittedAction_DEPLOY = @"DEPLOY";
NUNSPortPermittedAction_EXTEND = @"EXTEND";
NUNSPortPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUNSPortPermittedAction_READ = @"READ";
NUNSPortPermittedAction_USE = @"USE";
NUNSPortPortType_ACCESS = @"ACCESS";
NUNSPortPortType_NETWORK = @"NETWORK";
NUNSPortStatus_INITIALIZED = @"INITIALIZED";
NUNSPortStatus_MISMATCH = @"MISMATCH";
NUNSPortStatus_ORPHAN = @"ORPHAN";
NUNSPortStatus_READY = @"READY";


/*!
    Represents a Port of a particular NS gateway object.
*/
@implementation NUNSPort : NURESTObject
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
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The ID of the template that this Port was created from
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        A description of the Port
    */
    CPString _description @accessors(property=description);
    /*!
        Identifier of the Port
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        The ID of the infrastructure profile this instance is associated with.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
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
        ID of the Egress QOS Policy associated with this Vlan.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        ID of the redundant port to which the Port is associated to.
    */
    CPString _associatedRedundantPortID @accessors(property=associatedRedundantPortID);
    /*!
        The ID of the infrastructure VSC profile this is associated with this instance of a port or port template.
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    /*!
        Status of the port.
    */
    CPString _status @accessors(property=status);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUNSPortStaticConfigurationsFetcher _childrenNSPortStaticConfigurations @accessors(property=childrenNSPortStaticConfigurations);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"useUserMnemonic"];
        [self exposeLocalKeyPathToREST:@"userMnemonic"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedRedundantPortID"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenNSPortStaticConfigurations = [NUNSPortStaticConfigurationsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end