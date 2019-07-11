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

@import "Fetchers/NUVMResyncsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVRSsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVMDeleteMode_TIMER = @"TIMER";
NUVMEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVMEntityScope_GLOBAL = @"GLOBAL";
NUVMReasonType_BLOCKED_LAST = @"BLOCKED_LAST";
NUVMReasonType_BLOCKED_UNKNOWN = @"BLOCKED_UNKNOWN";
NUVMReasonType_CRASHED_LAST = @"CRASHED_LAST";
NUVMReasonType_CRASHED_UNKNOWN = @"CRASHED_UNKNOWN";
NUVMReasonType_NOSTATE_LAST = @"NOSTATE_LAST";
NUVMReasonType_NOSTATE_UNKNOWN = @"NOSTATE_UNKNOWN";
NUVMReasonType_PAUSED_DUMP = @"PAUSED_DUMP";
NUVMReasonType_PAUSED_FROM_SNAPSHOT = @"PAUSED_FROM_SNAPSHOT";
NUVMReasonType_PAUSED_IOERROR = @"PAUSED_IOERROR";
NUVMReasonType_PAUSED_LAST = @"PAUSED_LAST";
NUVMReasonType_PAUSED_MIGRATION = @"PAUSED_MIGRATION";
NUVMReasonType_PAUSED_SAVE = @"PAUSED_SAVE";
NUVMReasonType_PAUSED_SHUTTING_DOWN = @"PAUSED_SHUTTING_DOWN";
NUVMReasonType_PAUSED_UNKNOWN = @"PAUSED_UNKNOWN";
NUVMReasonType_PAUSED_USER = @"PAUSED_USER";
NUVMReasonType_PAUSED_WATCHDOG = @"PAUSED_WATCHDOG";
NUVMReasonType_RUNNING_BOOTED = @"RUNNING_BOOTED";
NUVMReasonType_RUNNING_FROM_SNAPSHOT = @"RUNNING_FROM_SNAPSHOT";
NUVMReasonType_RUNNING_LAST = @"RUNNING_LAST";
NUVMReasonType_RUNNING_MIGRATED = @"RUNNING_MIGRATED";
NUVMReasonType_RUNNING_MIGRATION_CANCELED = @"RUNNING_MIGRATION_CANCELED";
NUVMReasonType_RUNNING_RESTORED = @"RUNNING_RESTORED";
NUVMReasonType_RUNNING_SAVE_CANCELED = @"RUNNING_SAVE_CANCELED";
NUVMReasonType_RUNNING_UNKNOWN = @"RUNNING_UNKNOWN";
NUVMReasonType_RUNNING_UNPAUSED = @"RUNNING_UNPAUSED";
NUVMReasonType_SHUTDOWN_LAST = @"SHUTDOWN_LAST";
NUVMReasonType_SHUTDOWN_UNKNOWN = @"SHUTDOWN_UNKNOWN";
NUVMReasonType_SHUTDOWN_USER = @"SHUTDOWN_USER";
NUVMReasonType_SHUTOFF_CRASHED = @"SHUTOFF_CRASHED";
NUVMReasonType_SHUTOFF_DESTROYED = @"SHUTOFF_DESTROYED";
NUVMReasonType_SHUTOFF_FAILED = @"SHUTOFF_FAILED";
NUVMReasonType_SHUTOFF_FROM_SNAPSHOT = @"SHUTOFF_FROM_SNAPSHOT";
NUVMReasonType_SHUTOFF_LAST = @"SHUTOFF_LAST";
NUVMReasonType_SHUTOFF_MIGRATED = @"SHUTOFF_MIGRATED";
NUVMReasonType_SHUTOFF_SAVED = @"SHUTOFF_SAVED";
NUVMReasonType_SHUTOFF_SHUTDOWN = @"SHUTOFF_SHUTDOWN";
NUVMReasonType_SHUTOFF_UNKNOWN = @"SHUTOFF_UNKNOWN";
NUVMReasonType_UNKNOWN = @"UNKNOWN";
NUVMStatus_BLOCKED = @"BLOCKED";
NUVMStatus_CRASHED = @"CRASHED";
NUVMStatus_DELETE_PENDING = @"DELETE_PENDING";
NUVMStatus_INIT = @"INIT";
NUVMStatus_LAST = @"LAST";
NUVMStatus_NOSTATE = @"NOSTATE";
NUVMStatus_PAUSED = @"PAUSED";
NUVMStatus_RUNNING = @"RUNNING";
NUVMStatus_SHUTDOWN = @"SHUTDOWN";
NUVMStatus_SHUTOFF = @"SHUTOFF";
NUVMStatus_UNKNOWN = @"UNKNOWN";
NUVMStatus_UNREACHABLE = @"UNREACHABLE";


/*!
    API that can retrieve the VMs associated with a domain, zone or subnet for mediation created VM's for REST created  VM's you need to set the additional proxy user header in http request : X-Nuage-ProxyUservalue of the header has to be either :1) enterpriseName@UserName (example : Nokia@bob), or 2) external ID of user in VSD, typically is UUID generally decided by the CMS tool in questionUser needs to have CMS privileges to use proxy user header.
*/
@implementation NUVM : NURESTObject
{
    /*!
        Array of IDs of the l2 domain that the VM is connected to
    */
    CPArrayController _l2DomainIDs @accessors(property=l2DomainIDs);
    /*!
        Id of the VRS that this VM is attached to.
    */
    CPString _VRSID @accessors(property=VRSID);
    /*!
        UUID of the VM
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        Name of the VM
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Reason of the event associated with the VM.
    */
    CPString _reasonType @accessors(property=reasonType);
    /*!
        Reflects the VM Deletion expiry timer in seconds, deleteMode needs to be non-null value for deleteExpiry to be taken in to effect. CMS created VMs will always have deleteMode set to TIMER.
    */
    CPNumber _deleteExpiry @accessors(property=deleteExpiry);
    /*!
        Reflects the mode of VM Deletion.
    */
    CPString _deleteMode @accessors(property=deleteMode);
    /*!
        Information of the status of the resync operation of a VM
    */
    NURESTObject _resyncInfo @accessors(property=resyncInfo);
    /*!
        This property specifies the site the VM belongs to, for Geo-redundancy.
    */
    CPString _siteIdentifier @accessors(property=siteIdentifier);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        List of VM interfaces associated with the VM
    */
    CPArrayController _interfaces @accessors(property=interfaces);
    /*!
        ID of the enterprise that this VM belongs to
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Name of the enterprise that this VM belongs to
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Array of IDs of the domain that the VM is connected to
    */
    CPArrayController _domainIDs @accessors(property=domainIDs);
    /*!
        computeProvisioned
    */
    BOOL _computeProvisioned @accessors(property=computeProvisioned);
    /*!
        Array of IDs of the zone that this VM is attached to
    */
    CPArrayController _zoneIDs @accessors(property=zoneIDs);
    /*!
        Orchestration ID
    */
    CPString _orchestrationID @accessors(property=orchestrationID);
    /*!
        Release version of VRS, which is used to determine the feature capabilties of VRS.
    */
    CPString _vrsRawVersion @accessors(property=vrsRawVersion);
    /*!
        Interpreted version of VRS, which is used to determine the feature capabilities of VRS.
    */
    CPString _vrsVersion @accessors(property=vrsVersion);
    /*!
        ID of the user that created this VM
    */
    CPString _userID @accessors(property=userID);
    /*!
        Username of the user that created this VM
    */
    CPString _userName @accessors(property=userName);
    /*!
        Status of the VM.
    */
    CPString _status @accessors(property=status);
    /*!
        Array of IDs of the subnets that the VM is connected to
    */
    CPArrayController _subnetIDs @accessors(property=subnetIDs);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        IP address of the hypervisor that this VM is currently running in
    */
    CPString _hypervisorIP @accessors(property=hypervisorIP);
    
    NUVMResyncsFetcher _childrenVMResyncs @accessors(property=childrenVMResyncs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vm";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"l2DomainIDs"];
        [self exposeLocalKeyPathToREST:@"VRSID"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"reasonType"];
        [self exposeLocalKeyPathToREST:@"deleteExpiry"];
        [self exposeLocalKeyPathToREST:@"deleteMode"];
        [self exposeLocalKeyPathToREST:@"resyncInfo"];
        [self exposeLocalKeyPathToREST:@"siteIdentifier"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"interfaces"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainIDs"];
        [self exposeLocalKeyPathToREST:@"computeProvisioned"];
        [self exposeLocalKeyPathToREST:@"zoneIDs"];
        [self exposeLocalKeyPathToREST:@"orchestrationID"];
        [self exposeLocalKeyPathToREST:@"vrsRawVersion"];
        [self exposeLocalKeyPathToREST:@"vrsVersion"];
        [self exposeLocalKeyPathToREST:@"userID"];
        [self exposeLocalKeyPathToREST:@"userName"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"subnetIDs"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hypervisorIP"];
        
        _childrenVMResyncs = [NUVMResyncsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end