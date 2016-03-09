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

@import "Fetchers/NUDHCPOptionsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUMultiCastChannelMapsFetcher.j"
@import "Fetchers/NUPolicyDecisionsFetcher.j"
@import "Fetchers/NUPolicyGroupsFetcher.j"
@import "Fetchers/NURedirectionTargetsFetcher.j"
@import "Fetchers/NUStaticRoutesFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUTCAsFetcher.j"

NUVMInterfaceAttachedNetworkType_L2DOMAIN = @"L2DOMAIN";
NUVMInterfaceAttachedNetworkType_SUBNET = @"SUBNET";
NUVMInterfaceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVMInterfaceEntityScope_GLOBAL = @"GLOBAL";


/*!
    Read only API that can retrieve the VM interface associated with a domain, zone or subnet for mediation created VM's for REST created  VM interfaces you need to set the additional proxy header in http request : X-Nuage-ProxyUservalue of the header has to be either :1) enterpriseName@UserName (example :bob@Alcatel Lucent), or 2) external ID of user in VSD, typically is UUID generally decided by the CMS tool in questionUser needs to have CMS privileges to use proxy user header.
*/
@implementation NUVMInterface : NURESTObject
{
    /*!
        IP address of the  interface
    */
    CPString _IPAddress @accessors(property=IPAddress);
    /*!
        MAC address of the  interface
    */
    CPString _MAC @accessors(property=MAC);
    /*!
        UUID of the associated virtual machine
    */
    CPString _VMUUID @accessors(property=VMUUID);
    /*!
        ID of the vport that the interface is attached to
    */
    CPString _VPortID @accessors(property=VPortID);
    /*!
        Name of the vport that the VM is attached to
    */
    CPString _VPortName @accessors(property=VPortName);
    /*!
        Floating Ip Address of this network interface eg: 10.1.2.1
    */
    CPString _associatedFloatingIPAddress @accessors(property=associatedFloatingIPAddress);
    /*!
        ID of the l2 domain or Subnet that the VM is attached to
    */
    CPString _attachedNetworkID @accessors(property=attachedNetworkID);
    /*!
        l2 domain or Subnet that the interface is attached to
    */
    CPString _attachedNetworkType @accessors(property=attachedNetworkType);
    /*!
        ID of the domain that the VM is attached to
    */
    CPString _domainID @accessors(property=domainID);
    /*!
        Name of the domain that the VM is attached to
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Gateway of the subnet that the VM is connected to
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the Multi NIC VPort associated with this VM Interface
    */
    CPString _multiNICVPortName @accessors(property=multiNICVPortName);
    /*!
        Device name associated with this interface
    */
    CPString _name @accessors(property=name);
    /*!
        Netmask of the subnet that the VM is attached to
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Name of the network that the VM is attached to
    */
    CPString _networkName @accessors(property=networkName);
    /*!
        The policy decision ID for this particular  interface
    */
    CPString _policyDecisionID @accessors(property=policyDecisionID);
    /*!
        ID of the tier that the interface is attached to.
    */
    CPString _tierID @accessors(property=tierID);
    /*!
        ID of the zone that the interface is attached to
    */
    CPString _zoneID @accessors(property=zoneID);
    /*!
        Name of the zone that the VM is attached to
    */
    CPString _zoneName @accessors(property=zoneName);
    
    NUDHCPOptionsFetcher _childrenDHCPOptions @accessors(property=childrenDHCPOptions);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUMultiCastChannelMapsFetcher _childrenMultiCastChannelMaps @accessors(property=childrenMultiCastChannelMaps);
    NUPolicyDecisionsFetcher _childrenPolicyDecisions @accessors(property=childrenPolicyDecisions);
    NUPolicyGroupsFetcher _childrenPolicyGroups @accessors(property=childrenPolicyGroups);
    NURedirectionTargetsFetcher _childrenRedirectionTargets @accessors(property=childrenRedirectionTargets);
    NUStaticRoutesFetcher _childrenStaticRoutes @accessors(property=childrenStaticRoutes);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUTCAsFetcher _childrenTCAs @accessors(property=childrenTCAs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vminterface";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"IPAddress"];
        [self exposeLocalKeyPathToREST:@"MAC"];
        [self exposeLocalKeyPathToREST:@"VMUUID"];
        [self exposeLocalKeyPathToREST:@"VPortID"];
        [self exposeLocalKeyPathToREST:@"VPortName"];
        [self exposeLocalKeyPathToREST:@"associatedFloatingIPAddress"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkID"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkType"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"multiNICVPortName"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"networkName"];
        [self exposeLocalKeyPathToREST:@"policyDecisionID"];
        [self exposeLocalKeyPathToREST:@"tierID"];
        [self exposeLocalKeyPathToREST:@"zoneID"];
        [self exposeLocalKeyPathToREST:@"zoneName"];
        
        _childrenDHCPOptions = [NUDHCPOptionsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenMultiCastChannelMaps = [NUMultiCastChannelMapsFetcher fetcherWithParentObject:self];
        _childrenPolicyDecisions = [NUPolicyDecisionsFetcher fetcherWithParentObject:self];
        _childrenPolicyGroups = [NUPolicyGroupsFetcher fetcherWithParentObject:self];
        _childrenRedirectionTargets = [NURedirectionTargetsFetcher fetcherWithParentObject:self];
        _childrenStaticRoutes = [NUStaticRoutesFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenTCAs = [NUTCAsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end