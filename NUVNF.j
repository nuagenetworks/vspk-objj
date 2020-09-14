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
@import "Fetchers/NUVNFInterfacesFetcher.j"
@import "Fetchers/NUVNFMetadatasFetcher.j"
@import "Fetchers/NUVNFThresholdPoliciesFetcher.j"
@import "Fetchers/NUJobsFetcher.j"

NUVNFAllowedActions_DEPLOY = @"DEPLOY";
NUVNFAllowedActions_REDEPLOY = @"REDEPLOY";
NUVNFAllowedActions_RESTART = @"RESTART";
NUVNFAllowedActions_START = @"START";
NUVNFAllowedActions_STOP = @"STOP";
NUVNFAllowedActions_UNDEPLOY = @"UNDEPLOY";
NUVNFEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVNFEntityScope_GLOBAL = @"GLOBAL";
NUVNFLastUserAction_DEPLOY = @"DEPLOY";
NUVNFLastUserAction_NONE = @"NONE";
NUVNFLastUserAction_REDEPLOY = @"REDEPLOY";
NUVNFLastUserAction_RESTART = @"RESTART";
NUVNFLastUserAction_START = @"START";
NUVNFLastUserAction_STOP = @"STOP";
NUVNFLastUserAction_UNDEPLOY = @"UNDEPLOY";
NUVNFStatus_BLOCKED = @"BLOCKED";
NUVNFStatus_CRASHED = @"CRASHED";
NUVNFStatus_DYING = @"DYING";
NUVNFStatus_IDLE = @"IDLE";
NUVNFStatus_INIT = @"INIT";
NUVNFStatus_LAST = @"LAST";
NUVNFStatus_PAUSED = @"PAUSED";
NUVNFStatus_PMSUSPENDED = @"PMSUSPENDED";
NUVNFStatus_RUNNING = @"RUNNING";
NUVNFStatus_SHUTDOWN = @"SHUTDOWN";
NUVNFStatus_SHUTOFF = @"SHUTOFF";
NUVNFTaskState_DEPLOYING = @"DEPLOYING";
NUVNFTaskState_NONE = @"NONE";
NUVNFTaskState_STARTING = @"STARTING";
NUVNFTaskState_STOPPING = @"STOPPING";
NUVNFTaskState_UNDEPLOYING = @"UNDEPLOYING";
NUVNFType_FIREWALL = @"FIREWALL";
NUVNFType_THREAT_PREVENTION = @"THREAT_PREVENTION";
NUVNFType_WAN_OPT = @"WAN_OPT";


/*!
    Instantiation of a VNF on a specified Network Services Gateway that has the resources to manage a VNF.
*/
@implementation NUVNF : NURESTObject
{
    /*!
        The ID of VNF Descriptor from which VNF to be created. This is required on creation and can be removed on moidification of VNF instance.
    */
    CPString _VNFDescriptorID @accessors(property=VNFDescriptorID);
    /*!
        The Name of VNF Descriptor from which this VNF instance is created.
    */
    CPString _VNFDescriptorName @accessors(property=VNFDescriptorName);
    /*!
        Number of CPUs to be allocated for this VNF instance
    */
    CPNumber _CPUCount @accessors(property=CPUCount);
    /*!
        The NSG name where VNF is deployed
    */
    CPString _NSGName @accessors(property=NSGName);
    /*!
        The NSG system id where VNF is deployed
    */
    CPString _NSGSystemID @accessors(property=NSGSystemID);
    /*!
        The NSG instance id where VNF is deployed
    */
    CPString _NSGatewayID @accessors(property=NSGatewayID);
    /*!
        Name of the VNF
    */
    CPString _name @accessors(property=name);
    /*!
        Current state of operation/task
    */
    CPString _taskState @accessors(property=taskState);
    /*!
        Last error reported
    */
    CPString _lastKnownError @accessors(property=lastKnownError);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Last action perform by user
    */
    CPString _lastUserAction @accessors(property=lastUserAction);
    /*!
        Memory (in MB) to be allocated for this VNF instance.
    */
    CPNumber _memoryMB @accessors(property=memoryMB);
    /*!
        The vendor for VNF
    */
    CPString _vendor @accessors(property=vendor);
    /*!
        Description of the VNF Instance
    */
    CPString _description @accessors(property=description);
    /*!
        Action allowed to  performed on VNF based on current status and taskState
    */
    CPArrayController _allowedActions @accessors(property=allowedActions);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        ID of the enterprise that this VNF belongs to
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        This specifies if VNF instance is using VNF descriptor or it is decoupled from it
    */
    BOOL _isAttachedToDescriptor @accessors(property=isAttachedToDescriptor);
    /*!
        VNF metadata associated to VNF instance. 
    */
    CPString _associatedVNFMetadataID @accessors(property=associatedVNFMetadataID);
    /*!
        VNF threshold policy associated to VNF instance
    */
    CPString _associatedVNFThresholdPolicyID @accessors(property=associatedVNFThresholdPolicyID);
    /*!
        State/Status of the VNF
    */
    CPString _status @accessors(property=status);
    /*!
        Disk storage (in GB) to be allocated for deployed VNF instance
    */
    CPNumber _storageGB @accessors(property=storageGB);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of virtual network function
    */
    CPString _type @accessors(property=type);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVNFInterfacesFetcher _childrenVNFInterfaces @accessors(property=childrenVNFInterfaces);
    NUVNFMetadatasFetcher _childrenVNFMetadatas @accessors(property=childrenVNFMetadatas);
    NUVNFThresholdPoliciesFetcher _childrenVNFThresholdPolicies @accessors(property=childrenVNFThresholdPolicies);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vnf";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VNFDescriptorID"];
        [self exposeLocalKeyPathToREST:@"VNFDescriptorName"];
        [self exposeLocalKeyPathToREST:@"CPUCount"];
        [self exposeLocalKeyPathToREST:@"NSGName"];
        [self exposeLocalKeyPathToREST:@"NSGSystemID"];
        [self exposeLocalKeyPathToREST:@"NSGatewayID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"taskState"];
        [self exposeLocalKeyPathToREST:@"lastKnownError"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUserAction"];
        [self exposeLocalKeyPathToREST:@"memoryMB"];
        [self exposeLocalKeyPathToREST:@"vendor"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"allowedActions"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"isAttachedToDescriptor"];
        [self exposeLocalKeyPathToREST:@"associatedVNFMetadataID"];
        [self exposeLocalKeyPathToREST:@"associatedVNFThresholdPolicyID"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"storageGB"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVNFInterfaces = [NUVNFInterfacesFetcher fetcherWithParentObject:self];
        _childrenVNFMetadatas = [NUVNFMetadatasFetcher fetcherWithParentObject:self];
        _childrenVNFThresholdPolicies = [NUVNFThresholdPoliciesFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end