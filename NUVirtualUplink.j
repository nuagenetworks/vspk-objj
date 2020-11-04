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

@import "Fetchers/NUIKEGatewayConnectionsFetcher.j"

NUVirtualUplinkAuxMode_COLD = @"COLD";
NUVirtualUplinkAuxMode_HOT = @"HOT";
NUVirtualUplinkAuxMode_NONE = @"NONE";
NUVirtualUplinkRole_NONE = @"NONE";
NUVirtualUplinkRole_PRIMARY = @"PRIMARY";
NUVirtualUplinkRole_SECONDARY = @"SECONDARY";
NUVirtualUplinkRole_TERTIARY = @"TERTIARY";
NUVirtualUplinkRole_UNKNOWN = @"UNKNOWN";


/*!
    Virtual Uplinks are entities that represent on an NSG the properties that are set for corresponding control uplink instances that are residing on the NSG RG Peer when tied together by a Shunt Link.
*/
@implementation NUVirtualUplink : NURESTObject
{
    /*!
        The physical port and VLAN endpoint hosting the peer control uplink that this virtual uplink mirrors. This is derived from the peer NSG of the Shunt Link in a redundant gateway group.
    */
    CPString _peerEndpoint @accessors(property=peerEndpoint);
    /*!
        The UUID of the peer NSG in the redundant gateway group part of the Shunt Link.
    */
    CPString _peerGatewayID @accessors(property=peerGatewayID);
    /*!
        The name of the peer NSG in the redundant gateway group part of the Shunt Link.
    */
    CPString _peerGatewayName @accessors(property=peerGatewayName);
    /*!
        IP format of system generated identifier of the peer NSG.
    */
    CPString _peerGatewaySystemID @accessors(property=peerGatewaySystemID);
    /*!
        The UUID of the port hosting the peer control uplink that this virtual uplink mirrors. This is derived from the peer NSG of the Shunt Link on a redundant gateway group.
    */
    CPString _peerPortID @accessors(property=peerPortID);
    /*!
        ID that unqiuely identifies the uplink. This attribute represents the configuration on the remote uplink connection that this virtual uplink mirrors.
    */
    CPNumber _peerUplinkID @accessors(property=peerUplinkID);
    /*!
        The UUID of the VLAN in the control uplink that this virtual uplink mirrors.This is derived from the peer NSG of the Shunt Link on a redundant gateway group.
    */
    CPString _peerVLANID @accessors(property=peerVLANID);
    /*!
        The physical port and VLAN endpoint hosting the shunt endpoint on this Gateway.
    */
    CPString _shuntEndpoint @accessors(property=shuntEndpoint);
    /*!
        The UUID of the shunt port on the NSG hosting the Virtual Uplink.
    */
    CPString _shuntPortID @accessors(property=shuntPortID);
    /*!
        The UUID of the shunt VLAN on the NSG hosting the Virtual Uplink.
    */
    CPString _shuntVLANID @accessors(property=shuntVLANID);
    /*!
        IP format of system generated identifier of an uplink on NSG.
    */
    CPString _virtualUplinkDatapathID @accessors(property=virtualUplinkDatapathID);
    /*!
        If enabled, probes will be sent to other NSGs and DTLS sessions for IPSEC and VXLAN will be set up to the VSCs. If disabled, no NAT probes are sent on that uplink and no DTLS sessions are set up to the VSCs.
    */
    BOOL _enableNATProbes @accessors(property=enableNATProbes);
    /*!
        Underlay Identifier of underlay associated with the uplink mirrored by this Virtual Uplink.
    */
    CPNumber _underlayID @accessors(property=underlayID);
    /*!
        Indicates whether PAT is enabled on the underlay for this uplink connection. Inherits the PATEnabled attribute from remote uplink connection.
    */
    BOOL _underlayNAT @accessors(property=underlayNAT);
    /*!
        Name of the underlay associated with the uplink mirrored by this Virtual Uplink.
    */
    CPString _underlayName @accessors(property=underlayName);
    /*!
        Indicates whether route to underlay is enabled on the uplink connection that this Virtual uplink mirrors.
    */
    BOOL _underlayRouting @accessors(property=underlayRouting);
    /*!
        To allow prioritisation of traffic, the NSG network ports must be configured with an uplink type or tag value which will be used in the identification of packets being forwarded.  That identification is at the base of the selection of which network port will serve in sending packets to the outside world.  The default value is PRIMARY. Possible values are PRIMARY, SECONDARY, TERTIARY, UNKNOWN, This attribute represents the configuration on the remote uplink connection that this virtual uplink mirrors.
    */
    CPString _role @accessors(property=role);
    /*!
        Determines the order in which uplinks are configured on NSG. It also determines the priority for an Uplink for management traffic. This value will be auto-generated based on the order of creation of Virtual Uplink.
    */
    CPNumber _roleOrder @accessors(property=roleOrder);
    /*!
        If enabled, cuts down the number of probes to just the number of provisioned UBRs. This attribute represents "             + "the configuration on the remote uplink connection that this virtual uplink mirrors.
    */
    BOOL _trafficThroughUBROnly @accessors(property=trafficThroughUBROnly);
    /*!
        ID of the Egress QoS Policy associated with remote VlLAN.
    */
    CPString _associatedEgressQoSPolicyID @accessors(property=associatedEgressQoSPolicyID);
    /*!
        ID of the Ingress Overlay QoS Policer associated with the remote VlLAN.
    */
    CPString _associatedIngressOverlayQoSPolicerID @accessors(property=associatedIngressOverlayQoSPolicerID);
    /*!
        ID of the Ingress QoS Policy / Tunnel Shaper associated with the remote VLAN.
    */
    CPString _associatedIngressQoSPolicyID @accessors(property=associatedIngressQoSPolicyID);
    /*!
        ID of the Ingress Underlay QoS Policer associated with the remote VLAN.
    */
    CPString _associatedIngressUnderlayQoSPolicerID @accessors(property=associatedIngressUnderlayQoSPolicerID);
    /*!
        UUID of the uplink connection from the peer NSG that this virtual uplink mirrors.
    */
    CPString _associatedUplinkConnectionID @accessors(property=associatedUplinkConnectionID);
    /*!
        The associated VSC profile of remote control uplink.
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    /*!
        Type of redundancy offered by the Uplink that is mirrored by this Virtual uplink when marked as auxiliary.
    */
    CPString _auxMode @accessors(property=auxMode);
    
    NUIKEGatewayConnectionsFetcher _childrenIKEGatewayConnections @accessors(property=childrenIKEGatewayConnections);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"virtualuplink";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"peerEndpoint"];
        [self exposeLocalKeyPathToREST:@"peerGatewayID"];
        [self exposeLocalKeyPathToREST:@"peerGatewayName"];
        [self exposeLocalKeyPathToREST:@"peerGatewaySystemID"];
        [self exposeLocalKeyPathToREST:@"peerPortID"];
        [self exposeLocalKeyPathToREST:@"peerUplinkID"];
        [self exposeLocalKeyPathToREST:@"peerVLANID"];
        [self exposeLocalKeyPathToREST:@"shuntEndpoint"];
        [self exposeLocalKeyPathToREST:@"shuntPortID"];
        [self exposeLocalKeyPathToREST:@"shuntVLANID"];
        [self exposeLocalKeyPathToREST:@"virtualUplinkDatapathID"];
        [self exposeLocalKeyPathToREST:@"enableNATProbes"];
        [self exposeLocalKeyPathToREST:@"underlayID"];
        [self exposeLocalKeyPathToREST:@"underlayNAT"];
        [self exposeLocalKeyPathToREST:@"underlayName"];
        [self exposeLocalKeyPathToREST:@"underlayRouting"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"roleOrder"];
        [self exposeLocalKeyPathToREST:@"trafficThroughUBROnly"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQoSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressOverlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressQoSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressUnderlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedUplinkConnectionID"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        [self exposeLocalKeyPathToREST:@"auxMode"];
        
        _childrenIKEGatewayConnections = [NUIKEGatewayConnectionsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end