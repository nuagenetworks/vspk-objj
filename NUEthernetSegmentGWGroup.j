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

@import "Fetchers/NUL2DomainsFetcher.j"
@import "Fetchers/NUMACFilterProfilesFetcher.j"
@import "Fetchers/NUSAPEgressQoSProfilesFetcher.j"
@import "Fetchers/NUSAPIngressQoSProfilesFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUEgressProfilesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUIngressProfilesFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUIPFilterProfilesFetcher.j"
@import "Fetchers/NUIPv6FilterProfilesFetcher.j"
@import "Fetchers/NUEthernetSegmentGroupsFetcher.j"

NUEthernetSegmentGWGroupPersonality_NETCONF_7X50 = @"NETCONF_7X50";
NUEthernetSegmentGWGroupPersonality_SR_LINUX = @"SR_LINUX";


/*!
    Group of Gateways with common Ethernet Segment IDs (upto 4 Gateways).
*/
@implementation NUEthernetSegmentGWGroup : NURESTObject
{
    /*!
        Name of the Ethernet Segment Gateway Group.
    */
    CPString _name @accessors(property=name);
    /*!
        Personality of the Ethernet Segment Gateway Group.
    */
    CPString _personality @accessors(property=personality);
    /*!
        Description of the Ethernet Segment Gateway Group.
    */
    CPString _description @accessors(property=description);
    /*!
        Array of the names of the Gateways (2, 3, or 4), that constitutes the Gateway Group. For eg: ["<gw1_name>", "<gw2_name>", "<gw3_name>", "<gw4_name>"].
    */
    CPArrayController _assocGatewaysNames @accessors(property=assocGatewaysNames);
    /*!
        Array of the connection status of the Gateways (2, 3, or 4), that constitutes the Gateway Group. For eg: ["<gw1_status>", "<gw2_status>", "<gw3_status>", "<gw4_status>"].
    */
    CPArrayController _assocGatewaysStatus @accessors(property=assocGatewaysStatus);
    /*!
        Array of the UUIDs of the Gateways (2, 3, or 4), that constitutes the Gateway Group. For eg: ["<gw1_uuid>", "<gw2_uuid>", "<gw3_uuid>", "<gw4_uuid>"].
    */
    CPArrayController _associatedGatewayIDs @accessors(property=associatedGatewayIDs);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUMACFilterProfilesFetcher _childrenMACFilterProfiles @accessors(property=childrenMACFilterProfiles);
    NUSAPEgressQoSProfilesFetcher _childrenSAPEgressQoSProfiles @accessors(property=childrenSAPEgressQoSProfiles);
    NUSAPIngressQoSProfilesFetcher _childrenSAPIngressQoSProfiles @accessors(property=childrenSAPIngressQoSProfiles);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUEgressProfilesFetcher _childrenEgressProfiles @accessors(property=childrenEgressProfiles);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUIngressProfilesFetcher _childrenIngressProfiles @accessors(property=childrenIngressProfiles);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUIPFilterProfilesFetcher _childrenIPFilterProfiles @accessors(property=childrenIPFilterProfiles);
    NUIPv6FilterProfilesFetcher _childrenIPv6FilterProfiles @accessors(property=childrenIPv6FilterProfiles);
    NUEthernetSegmentGroupsFetcher _childrenEthernetSegmentGroups @accessors(property=childrenEthernetSegmentGroups);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ethernetsegmentgwgroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"assocGatewaysNames"];
        [self exposeLocalKeyPathToREST:@"assocGatewaysStatus"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayIDs"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenMACFilterProfiles = [NUMACFilterProfilesFetcher fetcherWithParentObject:self];
        _childrenSAPEgressQoSProfiles = [NUSAPEgressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenSAPIngressQoSProfiles = [NUSAPIngressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenEgressProfiles = [NUEgressProfilesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenIngressProfiles = [NUIngressProfilesFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenIPFilterProfiles = [NUIPFilterProfilesFetcher fetcherWithParentObject:self];
        _childrenIPv6FilterProfiles = [NUIPv6FilterProfilesFetcher fetcherWithParentObject:self];
        _childrenEthernetSegmentGroups = [NUEthernetSegmentGroupsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end