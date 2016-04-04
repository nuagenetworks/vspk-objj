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
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUHSCsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUMonitoringPortsFetcher.j"
@import "Fetchers/NUMultiNICVPortsFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUVSCsFetcher.j"

NUVRSClusterNodeRole_NONE = @"NONE";
NUVRSClusterNodeRole_PRIMARY = @"PRIMARY";
NUVRSClusterNodeRole_SECONDARY = @"SECONDARY";
NUVRSEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVRSEntityScope_GLOBAL = @"GLOBAL";
NUVRSHypervisorConnectionState_ADMIN_DOWN = @"ADMIN_DOWN";
NUVRSHypervisorConnectionState_DOWN = @"DOWN";
NUVRSHypervisorConnectionState_UP = @"UP";
NUVRSJSONRPCConnectionState_ADMIN_DOWN = @"ADMIN_DOWN";
NUVRSJSONRPCConnectionState_DOWN = @"DOWN";
NUVRSJSONRPCConnectionState_UP = @"UP";
NUVRSPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUVRSPersonality_NONE = @"NONE";
NUVRSPersonality_NSG = @"NSG";
NUVRSPersonality_VRS = @"VRS";
NUVRSPersonality_VRSG = @"VRSG";
NUVRSRole_MASTER = @"MASTER";
NUVRSRole_NONE = @"NONE";
NUVRSRole_SLAVE = @"SLAVE";
NUVRSStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUVRSStatus_DOWN = @"DOWN";
NUVRSStatus_UP = @"UP";
NUVRSVscConfigState_PRIMARY = @"PRIMARY";
NUVRSVscConfigState_SECONDARY = @"SECONDARY";
NUVRSVscCurrentState_PRIMARY = @"PRIMARY";
NUVRSVscCurrentState_SECONDARY = @"SECONDARY";


/*!
    System Monitoring details for VRS connected to VSC or HSC
*/
@implementation NUVRS : NURESTObject
{
    /*!
        The current JSON RPC connection status.
    */
    CPString _JSONRPCConnectionState @accessors(property=JSONRPCConnectionState);
    /*!
        The IP of the VRS entity
    */
    CPString _address @accessors(property=address);
    /*!
        Average CPU usage percentage.
    */
    CPNumber _averageCPUUsage @accessors(property=averageCPUUsage);
    /*!
        Average memory usage percentage.
    */
    CPNumber _averageMemoryUsage @accessors(property=averageMemoryUsage);
    /*!
        Indicate that the controller associated is primary, secondary or unknown.
    */
    CPString _clusterNodeRole @accessors(property=clusterNodeRole);
    /*!
        Current CPU usage percentage.
    */
    CPNumber _currentCPUUsage @accessors(property=currentCPUUsage);
    /*!
        Current memory usage percentage.
    */
    CPNumber _currentMemoryUsage @accessors(property=currentMemoryUsage);
    /*!
        Flag to indicate if the ovs database is synced between the NSG pair part of a redundant group
    */
    BOOL _dbSynced @accessors(property=dbSynced);
    /*!
        Description of the entity.
    */
    CPString _description @accessors(property=description);
    /*!
        Set of disk usage details.
    */
    CPArrayController _disks @accessors(property=disks);
    /*!
        Flag to indicate it is dynamically configured or not.
    */
    BOOL _dynamic @accessors(property=dynamic);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The VRS connection state with the hypervisor.
    */
    CPString _hypervisorConnectionState @accessors(property=hypervisorConnectionState);
    /*!
        The hypervisor IP (or name) associated with the VRS.
    */
    CPString _hypervisorIdentifier @accessors(property=hypervisorIdentifier);
    /*!
        The hypervisor name associated with the VRS.
    */
    CPString _hypervisorName @accessors(property=hypervisorName);
    /*!
        The hypervisor type associated with the VRS.
    */
    CPString _hypervisorType @accessors(property=hypervisorType);
    /*!
        Flag to indicate that the VRS is part of a redundant group.
    */
    BOOL _isResilient @accessors(property=isResilient);
    /*!
        The last event name from the hypervisor.
    */
    CPString _lastEventName @accessors(property=lastEventName);
    /*!
        The last event object (including metadata) from the hypervisor.
    */
    CPString _lastEventObject @accessors(property=lastEventObject);
    /*!
        The last event timestamp from the hypervisor.
    */
    CPNumber _lastEventTimestamp @accessors(property=lastEventTimestamp);
    /*!
        Last state change timestamp (in millis).
    */
    CPNumber _lastStateChange @accessors(property=lastStateChange);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Identifies the entity to be associated with a location.
    */
    CPString _location @accessors(property=location);
    /*!
        The management IP of the VRS entity
    */
    CPString _managementIP @accessors(property=managementIP);
    /*!
        An array of degraded messages.
    */
    CPArrayController _messages @accessors(property=messages);
    /*!
        VRS is in Multi-NIC VPORT Mode
    */
    BOOL _multiNICVPortEnabled @accessors(property=multiNICVPortEnabled);
    /*!
        Identifies the entity with a name.
    */
    CPString _name @accessors(property=name);
    /*!
        Number of bridge interfaces defined in this VRS.
    */
    CPNumber _numberOfBridgeInterfaces @accessors(property=numberOfBridgeInterfaces);
    /*!
        Number of host interfaces defined in this VRS.
    */
    CPNumber _numberOfHostInterfaces @accessors(property=numberOfHostInterfaces);
    /*!
        Number of VMs defined in this VRS.
    */
    CPNumber _numberOfVirtualMachines @accessors(property=numberOfVirtualMachines);
    /*!
        Holds VRS controllers ids
    */
    CPArrayController _parentIDs @accessors(property=parentIDs);
    /*!
        Peek CPU usage percentage.
    */
    CPNumber _peakCPUUsage @accessors(property=peakCPUUsage);
    /*!
        Peek memory usage percentage.
    */
    CPNumber _peakMemoryUsage @accessors(property=peakMemoryUsage);
    /*!
        The redundant peer id for the current VRS.
    */
    CPString _peer @accessors(property=peer);
    /*!
        VRS personality.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Flag indicates whether the connection with the primary is lost, which will help trigger alarms.
    */
    BOOL _primaryVSCConnectionLost @accessors(property=primaryVSCConnectionLost);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        Flag to indicate if the revert behavior took place or not.
    */
    BOOL _revertBehaviorEnabled @accessors(property=revertBehaviorEnabled);
    /*!
        Flag indicates whether revert was completed successfully.
    */
    BOOL _revertCompleted @accessors(property=revertCompleted);
    /*!
        Indicates the number of retries for the revert to take place.
    */
    CPNumber _revertCount @accessors(property=revertCount);
    /*!
        This value indicates the number of failed attempts for the revert to happen successfully.
    */
    CPNumber _revertFailedCount @accessors(property=revertFailedCount);
    /*!
        Flag to indicate that VRS-G redundancy state (active/standby/standalone).  Only applicable for gateways.
    */
    CPString _role @accessors(property=role);
    /*!
        Computed status of the entity.
    */
    CPString _status @accessors(property=status);
    /*!
        How long the VRS was up.
    */
    CPNumber _uptime @accessors(property=uptime);
    /*!
        Indicates the configured state of the VSC.
    */
    CPString _vscConfigState @accessors(property=vscConfigState);
    /*!
        Indicates the current state of the VSC, which may or maybe not be same as the configured state.
    */
    CPString _vscCurrentState @accessors(property=vscCurrentState);
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUHSCsFetcher _childrenHSCs @accessors(property=childrenHSCs);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUMonitoringPortsFetcher _childrenMonitoringPorts @accessors(property=childrenMonitoringPorts);
    NUMultiNICVPortsFetcher _childrenMultiNICVPorts @accessors(property=childrenMultiNICVPorts);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUVSCsFetcher _childrenVSCs @accessors(property=childrenVSCs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vrs";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"JSONRPCConnectionState"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"averageCPUUsage"];
        [self exposeLocalKeyPathToREST:@"averageMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"clusterNodeRole"];
        [self exposeLocalKeyPathToREST:@"currentCPUUsage"];
        [self exposeLocalKeyPathToREST:@"currentMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"dbSynced"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"disks"];
        [self exposeLocalKeyPathToREST:@"dynamic"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hypervisorConnectionState"];
        [self exposeLocalKeyPathToREST:@"hypervisorIdentifier"];
        [self exposeLocalKeyPathToREST:@"hypervisorName"];
        [self exposeLocalKeyPathToREST:@"hypervisorType"];
        [self exposeLocalKeyPathToREST:@"isResilient"];
        [self exposeLocalKeyPathToREST:@"lastEventName"];
        [self exposeLocalKeyPathToREST:@"lastEventObject"];
        [self exposeLocalKeyPathToREST:@"lastEventTimestamp"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"location"];
        [self exposeLocalKeyPathToREST:@"managementIP"];
        [self exposeLocalKeyPathToREST:@"messages"];
        [self exposeLocalKeyPathToREST:@"multiNICVPortEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"numberOfBridgeInterfaces"];
        [self exposeLocalKeyPathToREST:@"numberOfHostInterfaces"];
        [self exposeLocalKeyPathToREST:@"numberOfVirtualMachines"];
        [self exposeLocalKeyPathToREST:@"parentIDs"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"peer"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"primaryVSCConnectionLost"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"revertBehaviorEnabled"];
        [self exposeLocalKeyPathToREST:@"revertCompleted"];
        [self exposeLocalKeyPathToREST:@"revertCount"];
        [self exposeLocalKeyPathToREST:@"revertFailedCount"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"uptime"];
        [self exposeLocalKeyPathToREST:@"vscConfigState"];
        [self exposeLocalKeyPathToREST:@"vscCurrentState"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenHSCs = [NUHSCsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenMonitoringPorts = [NUMonitoringPortsFetcher fetcherWithParentObject:self];
        _childrenMultiNICVPorts = [NUMultiNICVPortsFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenVSCs = [NUVSCsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end