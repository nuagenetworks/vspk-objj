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
@import "Fetchers/NUVirtualIPsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NURedirectionTargetDestinationType_OVERLAY_MIRROR_DESTINATION = @"OVERLAY_MIRROR_DESTINATION";
NURedirectionTargetDestinationType_REDIRECTION_TARGET = @"REDIRECTION_TARGET";
NURedirectionTargetEndPointType_L3 = @"L3";
NURedirectionTargetEndPointType_NSG_VNF = @"NSG_VNF";
NURedirectionTargetEndPointType_VIRTUAL_WIRE = @"VIRTUAL_WIRE";
NURedirectionTargetEntityScope_ENTERPRISE = @"ENTERPRISE";
NURedirectionTargetEntityScope_GLOBAL = @"GLOBAL";
NURedirectionTargetTriggerType_GARP = @"GARP";
NURedirectionTargetTriggerType_NONE = @"NONE";


/*!
    Redirection targets are pointed to by advanced forwarding policies as the destination for redirected traffic. Targets can be of two types, L3 or virtual wire. For L3 targets a virtual IP should be provided as it allows the system to track among which of the end-points belonging to the redirection target is the active one. For this type of redirect the packet's destination MAC address is changed to match that of the Virtual IP. For virtual-wire redirection targets, the packets are untouched and forwarded directly to the end-point.
*/
@implementation NURedirectionTarget : NURESTObject
{
    /*!
        ESI id, globally unique
    */
    CPString _ESI @accessors(property=ESI);
    /*!
        Name of this redirection target
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Allow/Disallow redundant appliances and VIP
    */
    BOOL _redundancyEnabled @accessors(property=redundancyEnabled);
    /*!
        Template to which this redirection target belongs to
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Description of this redirection target
    */
    CPString _description @accessors(property=description);
    /*!
        Determines the type of destination : redirection target or overlay mirror destination
    */
    CPString _destinationType @accessors(property=destinationType);
    /*!
        Auto Generated by VSD. Each vPortTag with redundancy=enable and EndpointType != none will have a globally unique ESI & VNID generated by VSD
    */
    CPString _virtualNetworkID @accessors(property=virtualNetworkID);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        EndpointType defines the type of header rewrite and forwarding performed by VRS when the endpoint is used as a PBR destination. NONE type is deprecated. Possible values are NONE, L3, VIRTUAL_WIRE and NSG_VNF.
    */
    CPString _endPointType @accessors(property=endPointType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Trigger type, THIS IS READ ONLY. Possible values are NONE, GARP, .
    */
    CPString _triggerType @accessors(property=triggerType);
    /*!
        Indicates if redirection target was auto created by the system
    */
    BOOL _autoCreated @accessors(property=autoCreated);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVirtualIPsFetcher _childrenVirtualIPs @accessors(property=childrenVirtualIPs);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"redirectiontarget";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ESI"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"redundancyEnabled"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationType"];
        [self exposeLocalKeyPathToREST:@"virtualNetworkID"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"endPointType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"triggerType"];
        [self exposeLocalKeyPathToREST:@"autoCreated"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVirtualIPs = [NUVirtualIPsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _endPointType = @"L3";
        
    }

    return self;
}

@end