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

@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAggregateMetadatasFetcher.j"
@import "Fetchers/NUBGPNeighborsFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUContainerInterfacesFetcher.j"
@import "Fetchers/NUPortMappingsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NUVPortMirrorsFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementsFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUVRSsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUVPortAddressSpoofing_DISABLED = @"DISABLED";
NUVPortAddressSpoofing_ENABLED = @"ENABLED";
NUVPortAddressSpoofing_INHERITED = @"INHERITED";
NUVPortDPI_DISABLED = @"DISABLED";
NUVPortDPI_ENABLED = @"ENABLED";
NUVPortDPI_INHERITED = @"INHERITED";
NUVPortEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVPortEntityScope_GLOBAL = @"GLOBAL";
NUVPortMulticast_DISABLED = @"DISABLED";
NUVPortMulticast_ENABLED = @"ENABLED";
NUVPortMulticast_INHERITED = @"INHERITED";
NUVPortOperationalState_DOWN = @"DOWN";
NUVPortOperationalState_INIT = @"INIT";
NUVPortOperationalState_UP = @"UP";
NUVPortSystemType_HARDWARE = @"HARDWARE";
NUVPortSystemType_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUVPortSystemType_NUAGE_1 = @"NUAGE_1";
NUVPortSystemType_NUAGE_2 = @"NUAGE_2";
NUVPortSystemType_NUAGE_VRSG = @"NUAGE_VRSG";
NUVPortSystemType_SOFTWARE = @"SOFTWARE";
NUVPortType_BRIDGE = @"BRIDGE";
NUVPortType_CONTAINER = @"CONTAINER";
NUVPortType_HOST = @"HOST";
NUVPortType_VM = @"VM";


/*!
    VPorts are a new level in the domain hierarchy, intended to provide more granular configuration than at subnet, and also support a split workflow, where the vPort is configured and associated with a VM port (or gateway port) before the port exists.
*/
@implementation NUVPort : NURESTObject
{
    /*!
        associated Vlan of this vport - applicable for type host/bridge
    */
    CPString _VLANID @accessors(property=VLANID);
    /*!
        determines whether or not Deep packet inspection is enabled
    */
    CPString _DPI @accessors(property=DPI);
    /*!
        Name of the vport. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        Indicates that this vport has attached interfaces
    */
    BOOL _hasAttachedInterfaces @accessors(property=hasAttachedInterfaces);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Indicates if this vport is up or down
    */
    BOOL _active @accessors(property=active);
    /*!
        Indicates if address spoofing is ENABLED/DISABLED/INHERITED for this vport.
    */
    CPString _addressSpoofing @accessors(property=addressSpoofing);
    /*!
        Description for this vport
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        ID the Domain associated with the VPort
    */
    CPString _domainID @accessors(property=domainID);
    /*!
        ID the Zone associated with the VPort
    */
    CPString _zoneID @accessors(property=zoneID);
    /*!
        Operational State of the VPort. Possible values are INIT, UP, DOWN.
    */
    CPString _operationalState @accessors(property=operationalState);
    /*!
        Id of Floating IP address associated to this vport
    */
    CPString _associatedFloatingIPID @accessors(property=associatedFloatingIPID);
    /*!
        The ID of the receive Multicast Channel Map this Vport is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedMulticastChannelMapID @accessors(property=associatedMulticastChannelMapID);
    /*!
        The ID of the send Multicast Channel Map this Vport is associated with. This has to be set when enableMultiCast is set to ENABLED
    */
    CPString _associatedSendMulticastChannelMapID @accessors(property=associatedSendMulticastChannelMapID);
    /*!
        ID of the Multi NIC VPort associated with the VPort
    */
    CPString _multiNICVPortID @accessors(property=multiNICVPortID);
    /*!
        Indicates multicast policy on Vport.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of vport. Possible values are VM, HOST, BRIDGE, CONTAINER.
    */
    CPString _type @accessors(property=type);
    /*!
        Indicates what system it is.
    */
    CPString _systemType @accessors(property=systemType);
    
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAggregateMetadatasFetcher _childrenAggregateMetadatas @accessors(property=childrenAggregateMetadatas);
    NUBGPNeighborsFetcher _childrenBGPNeighbors @accessors(property=childrenBGPNeighbors);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUContainerInterfacesFetcher _childrenContainerInterfaces @accessors(property=childrenContainerInterfaces);
    NUPortMappingsFetcher _childrenPortMappings @accessors(property=childrenPortMappings);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NUVPortMirrorsFetcher _childrenVPortMirrors @accessors(property=childrenVPortMirrors);
    NUApplicationperformancemanagementsFetcher _childrenApplicationperformancemanagements @accessors(property=childrenApplicationperformancemanagements);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANID"];
        [self exposeLocalKeyPathToREST:@"DPI"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"hasAttachedInterfaces"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"active"];
        [self exposeLocalKeyPathToREST:@"addressSpoofing"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"zoneID"];
        [self exposeLocalKeyPathToREST:@"operationalState"];
        [self exposeLocalKeyPathToREST:@"associatedFloatingIPID"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSendMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"multiNICVPortID"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        [self exposeLocalKeyPathToREST:@"systemType"];
        
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAggregateMetadatas = [NUAggregateMetadatasFetcher fetcherWithParentObject:self];
        _childrenBGPNeighbors = [NUBGPNeighborsFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenContainerInterfaces = [NUContainerInterfacesFetcher fetcherWithParentObject:self];
        _childrenPortMappings = [NUPortMappingsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenVPortMirrors = [NUVPortMirrorsFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagements = [NUApplicationperformancemanagementsFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _multicast = @"INHERITED";
        _type = @"VM";
        _addressSpoofing = @"INHERITED";
        _operationalState = @"INIT";
        
    }

    return self;
}

@end