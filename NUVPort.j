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

@import "Fetchers/NUAggregateMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUBridgeInterfacesFetcher.j"
@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUHostInterfacesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NUQOSsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUStatisticsPoliciesFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUVMInterfacesFetcher.j"
@import "Fetchers/NUVPortMirrorsFetcher.j"
@import "Fetchers/NUVRSsFetcher.j"

NUVPortAddressSpoofing_DISABLED = @"DISABLED";
NUVPortAddressSpoofing_ENABLED = @"ENABLED";
NUVPortAddressSpoofing_INHERITED = @"INHERITED";
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
NUVPortType_HOST = @"HOST";
NUVPortType_VM = @"VM";


/*!
    VPorts are a new level in the domain hierarchy, intended to provide more granular configuration than at subnet, and also support a split workflow, where the vPort is configured and associated with a VM port (or gateway port) before the port exists on the hypervisor or gateway.
*/
@implementation NUVPort : NURESTObject
{
    /*!
        associated Vlan of this vport - applicable for type host/bridge
    */
    CPString _VLANID @accessors(property=VLANID);
    /*!
        Indicates if this vport is up or down
    */
    BOOL _active @accessors(property=active);
    /*!
        Indicates if address spoofing is ENABLED/DISABLED/INHERITED for this vport Possible values are INHERITED, ENABLED, DISABLED, .
    */
    CPString _addressSpoofing @accessors(property=addressSpoofing);
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
        Description for this vport
    */
    CPString _description @accessors(property=description);
    /*!
        ID the Domain associated with the VPort
    */
    CPString _domainID @accessors(property=domainID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Indicates that this vport has attached interfaces
    */
    BOOL _hasAttachedInterfaces @accessors(property=hasAttachedInterfaces);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        ID of the Multi NIC VPort associated with the VPort
    */
    CPString _multiNICVPortID @accessors(property=multiNICVPortID);
    /*!
        Indicates multicast policy on Vport.
    */
    CPString _multicast @accessors(property=multicast);
    /*!
        Name of the vport. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        Operational State of the VPort - RUNNING/SHUTDOWN Possible values are INIT, UP, DOWN, .
    */
    CPString _operationalState @accessors(property=operationalState);
    /*!
        Indicates what system it is.
    */
    CPString _systemType @accessors(property=systemType);
    /*!
        Type of vport - possible values VM/HOST/BRIDGE Possible values are VM, HOST, BRIDGE, .
    */
    CPString _type @accessors(property=type);
    /*!
        ID the Zone associated with the VPort
    */
    CPString _zoneID @accessors(property=zoneID);
    
    NUAggregateMetadatasFetcher _childrenAggregateMetadatas @accessors(property=childrenAggregateMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUBridgeInterfacesFetcher _childrenBridgeInterfaces @accessors(property=childrenBridgeInterfaces);
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUHostInterfacesFetcher _childrenHostInterfaces @accessors(property=childrenHostInterfaces);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NUQOSsFetcher _childrenQOSs @accessors(property=childrenQOSs);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUStatisticsPoliciesFetcher _childrenStatisticsPolicies @accessors(property=childrenStatisticsPolicies);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUVMInterfacesFetcher _childrenVMInterfaces @accessors(property=childrenVMInterfaces);
    NUVPortMirrorsFetcher _childrenVPortMirrors @accessors(property=childrenVPortMirrors);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    
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
        [self exposeLocalKeyPathToREST:@"active"];
        [self exposeLocalKeyPathToREST:@"addressSpoofing"];
        [self exposeLocalKeyPathToREST:@"associatedFloatingIPID"];
        [self exposeLocalKeyPathToREST:@"associatedMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"associatedSendMulticastChannelMapID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hasAttachedInterfaces"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"multiNICVPortID"];
        [self exposeLocalKeyPathToREST:@"multicast"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"operationalState"];
        [self exposeLocalKeyPathToREST:@"systemType"];
        [self exposeLocalKeyPathToREST:@"type"];
        [self exposeLocalKeyPathToREST:@"zoneID"];
        
        _childrenAggregateMetadatas = [NUAggregateMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenBridgeInterfaces = [NUBridgeInterfacesFetcher fetcherWithParentObject:self];
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenHostInterfaces = [NUHostInterfacesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenQOSs = [NUQOSsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenStatisticsPolicies = [NUStatisticsPoliciesFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenVMInterfaces = [NUVMInterfacesFetcher fetcherWithParentObject:self];
        _childrenVPortMirrors = [NUVPortMirrorsFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        
        _multicast = @"INHERITED";
        _type = @"VM";
        _addressSpoofing = @"INHERITED";
        _operationalState = @"INIT";
        
    }

    return self;
}

@end