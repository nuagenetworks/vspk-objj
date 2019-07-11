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
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMonitoringPortsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUControllerVRSLinksFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUHSCsFetcher.j"
@import "Fetchers/NUVSCsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUMultiNICVPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVRSEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVRSEntityScope_GLOBAL = @"GLOBAL";
NUVRSHypervisorConnectionState_ADMIN_DOWN = @"ADMIN_DOWN";
NUVRSHypervisorConnectionState_DOWN = @"DOWN";
NUVRSHypervisorConnectionState_UP = @"UP";
NUVRSLicensedState_LICENSED = @"LICENSED";
NUVRSLicensedState_UNLICENSED = @"UNLICENSED";
NUVRSPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUVRSPersonality_NONE = @"NONE";
NUVRSPersonality_NSG = @"NSG";
NUVRSPersonality_NSGBR = @"NSGBR";
NUVRSPersonality_NSGDUC = @"NSGDUC";
NUVRSPersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUVRSPersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUVRSPersonality_VRS = @"VRS";
NUVRSPersonality_VRSB = @"VRSB";
NUVRSPersonality_VRSG = @"VRSG";
NUVRSRole_MASTER = @"MASTER";
NUVRSRole_NONE = @"NONE";
NUVRSRole_SLAVE = @"SLAVE";
NUVRSStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUVRSStatus_DOWN = @"DOWN";
NUVRSStatus_UP = @"UP";


/*!
    System Monitoring details for VRS connected to VSC or HSC
*/
@implementation NUVRS : NURESTObject
{
    /*!
        Identifies the entity with a name.
    */
    CPString _name @accessors(property=name);
    /*!
        The management IP of the VRS entity
    */
    CPString _managementIP @accessors(property=managementIP);
    /*!
        Holds VRS controllers ids
    */
    CPArrayController _parentIDs @accessors(property=parentIDs);
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
        UUID of the gateway instance
    */
    CPString _gatewayUUID @accessors(property=gatewayUUID);
    /*!
        Flag to indicate if the ovs database is synced between the NSG pair part of a redundant group
    */
    BOOL _dbSynced @accessors(property=dbSynced);
    /*!
        The IP of the VRS entity
    */
    CPString _address @accessors(property=address);
    /*!
        Peek CPU usage percentage.
    */
    CPNumber _peakCPUUsage @accessors(property=peakCPUUsage);
    /*!
        Peek memory usage percentage.
    */
    CPNumber _peakMemoryUsage @accessors(property=peakMemoryUsage);
    /*!
        VRS personality.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the entity.
    */
    CPString _description @accessors(property=description);
    /*!
        An array of degraded messages.
    */
    CPArrayController _messages @accessors(property=messages);
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
        Licensed state.
    */
    CPString _licensedState @accessors(property=licensedState);
    /*!
        Set of disk usage details.
    */
    CPArrayController _disks @accessors(property=disks);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Identifies the entity to be associated with a location.
    */
    CPString _location @accessors(property=location);
    /*!
        Flag to indicate that VRS-G redundancy state (active/standby/standalone).  Only applicable for gateways.
    */
    CPString _role @accessors(property=role);
    /*!
        How long the VRS was up.
    */
    CPNumber _uptime @accessors(property=uptime);
    /*!
        Flag indicates whether the connection with the primary is lost, which will help trigger alarms.
    */
    BOOL _primaryVSCConnectionLost @accessors(property=primaryVSCConnectionLost);
    /*!
        Product version supported by this entity.
    */
    CPString _productVersion @accessors(property=productVersion);
    /*!
        Flag to indicate that the VRS is part of a redundant group.
    */
    BOOL _isResilient @accessors(property=isResilient);
    /*!
        Computed status of the entity.
    */
    CPString _status @accessors(property=status);
    /*!
        VRS is in Multi-NIC VPORT Mode
    */
    BOOL _multiNICVPortEnabled @accessors(property=multiNICVPortEnabled);
    /*!
        Number of bridge interfaces defined in this VRS.
    */
    CPNumber _numberOfBridgeInterfaces @accessors(property=numberOfBridgeInterfaces);
    /*!
        Number of containers defined in this VRS.
    */
    CPNumber _numberOfContainers @accessors(property=numberOfContainers);
    /*!
        Number of host interfaces defined in this VRS.
    */
    CPNumber _numberOfHostInterfaces @accessors(property=numberOfHostInterfaces);
    /*!
        Number of VMs defined in this VRS.
    */
    CPNumber _numberOfVirtualMachines @accessors(property=numberOfVirtualMachines);
    /*!
        Current CPU usage percentage.
    */
    CPNumber _currentCPUUsage @accessors(property=currentCPUUsage);
    /*!
        Current memory usage percentage.
    */
    CPNumber _currentMemoryUsage @accessors(property=currentMemoryUsage);
    /*!
        Average CPU usage percentage.
    */
    CPNumber _averageCPUUsage @accessors(property=averageCPUUsage);
    /*!
        Average memory usage percentage.
    */
    CPNumber _averageMemoryUsage @accessors(property=averageMemoryUsage);
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
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMonitoringPortsFetcher _childrenMonitoringPorts @accessors(property=childrenMonitoringPorts);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUControllerVRSLinksFetcher _childrenControllerVRSLinks @accessors(property=childrenControllerVRSLinks);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUHSCsFetcher _childrenHSCs @accessors(property=childrenHSCs);
    NUVSCsFetcher _childrenVSCs @accessors(property=childrenVSCs);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUMultiNICVPortsFetcher _childrenMultiNICVPorts @accessors(property=childrenMultiNICVPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
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
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"managementIP"];
        [self exposeLocalKeyPathToREST:@"parentIDs"];
        [self exposeLocalKeyPathToREST:@"lastEventName"];
        [self exposeLocalKeyPathToREST:@"lastEventObject"];
        [self exposeLocalKeyPathToREST:@"lastEventTimestamp"];
        [self exposeLocalKeyPathToREST:@"lastStateChange"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayUUID"];
        [self exposeLocalKeyPathToREST:@"dbSynced"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"peakCPUUsage"];
        [self exposeLocalKeyPathToREST:@"peakMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"messages"];
        [self exposeLocalKeyPathToREST:@"revertBehaviorEnabled"];
        [self exposeLocalKeyPathToREST:@"revertCompleted"];
        [self exposeLocalKeyPathToREST:@"revertCount"];
        [self exposeLocalKeyPathToREST:@"revertFailedCount"];
        [self exposeLocalKeyPathToREST:@"licensedState"];
        [self exposeLocalKeyPathToREST:@"disks"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"location"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"uptime"];
        [self exposeLocalKeyPathToREST:@"primaryVSCConnectionLost"];
        [self exposeLocalKeyPathToREST:@"productVersion"];
        [self exposeLocalKeyPathToREST:@"isResilient"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"multiNICVPortEnabled"];
        [self exposeLocalKeyPathToREST:@"numberOfBridgeInterfaces"];
        [self exposeLocalKeyPathToREST:@"numberOfContainers"];
        [self exposeLocalKeyPathToREST:@"numberOfHostInterfaces"];
        [self exposeLocalKeyPathToREST:@"numberOfVirtualMachines"];
        [self exposeLocalKeyPathToREST:@"currentCPUUsage"];
        [self exposeLocalKeyPathToREST:@"currentMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"averageCPUUsage"];
        [self exposeLocalKeyPathToREST:@"averageMemoryUsage"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hypervisorConnectionState"];
        [self exposeLocalKeyPathToREST:@"hypervisorIdentifier"];
        [self exposeLocalKeyPathToREST:@"hypervisorName"];
        [self exposeLocalKeyPathToREST:@"hypervisorType"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMonitoringPorts = [NUMonitoringPortsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenControllerVRSLinks = [NUControllerVRSLinksFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenHSCs = [NUHSCsFetcher fetcherWithParentObject:self];
        _childrenVSCs = [NUVSCsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenMultiNICVPorts = [NUMultiNICVPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end