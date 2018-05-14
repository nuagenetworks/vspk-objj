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

@import "Fetchers/NUTiersFetcher.j"
@import "Fetchers/NUApplicationperformancemanagementsFetcher.j"
@import "Fetchers/NUNSGatewaysFetcher.j"

NUPerformanceMonitorEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPerformanceMonitorEntityScope_GLOBAL = @"GLOBAL";
NUPerformanceMonitorProbeType_HTTP = @"HTTP";
NUPerformanceMonitorProbeType_IPSEC_AND_VXLAN = @"IPSEC_AND_VXLAN";
NUPerformanceMonitorProbeType_ONEWAY = @"ONEWAY";
NUPerformanceMonitorServiceClass_A = @"A";
NUPerformanceMonitorServiceClass_B = @"B";
NUPerformanceMonitorServiceClass_C = @"C";
NUPerformanceMonitorServiceClass_D = @"D";
NUPerformanceMonitorServiceClass_E = @"E";
NUPerformanceMonitorServiceClass_F = @"F";
NUPerformanceMonitorServiceClass_G = @"G";
NUPerformanceMonitorServiceClass_H = @"H";


/*!
    None
*/
@implementation NUPerformanceMonitor : NURESTObject
{
    /*!
        Name of the application group probe
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Payload size (This is a mandatory field if the networkProbeType = ONEWAY, and optional for probeType = HTTP,IPSEC_AND_VXLAN)
    */
    CPNumber _payloadSize @accessors(property=payloadSize);
    /*!
        Determines whether this entity is read only.  Read only objects cannot be modified or deleted.
    */
    BOOL _readOnly @accessors(property=readOnly);
    /*!
        Class of service to be used.  Service classes in order of priority are A, B, C, D, E, F, G, and H.
    */
    CPString _serviceClass @accessors(property=serviceClass);
    /*!
        Description of application group probe
    */
    CPString _description @accessors(property=description);
    /*!
        List of targets for IKE performance monitor probes
    */
    CPArrayController _destinationTargetList @accessors(property=destinationTargetList);
    /*!
        number of milliseconds to wait until the probe is timed out
    */
    CPNumber _timeout @accessors(property=timeout);
    /*!
        interval in seconds
    */
    CPNumber _interval @accessors(property=interval);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Probe Timeout in milliseconds
    */
    CPNumber _holdDownTimer @accessors(property=holdDownTimer);
    /*!
        Type to be assigned to this probe
    */
    CPString _probeType @accessors(property=probeType);
    /*!
        number of packets
    */
    CPNumber _numberOfPackets @accessors(property=numberOfPackets);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUTiersFetcher _childrenTiers @accessors(property=childrenTiers);
    NUApplicationperformancemanagementsFetcher _childrenApplicationperformancemanagements @accessors(property=childrenApplicationperformancemanagements);
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"performancemonitor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"payloadSize"];
        [self exposeLocalKeyPathToREST:@"readOnly"];
        [self exposeLocalKeyPathToREST:@"serviceClass"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationTargetList"];
        [self exposeLocalKeyPathToREST:@"timeout"];
        [self exposeLocalKeyPathToREST:@"interval"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"holdDownTimer"];
        [self exposeLocalKeyPathToREST:@"probeType"];
        [self exposeLocalKeyPathToREST:@"numberOfPackets"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenTiers = [NUTiersFetcher fetcherWithParentObject:self];
        _childrenApplicationperformancemanagements = [NUApplicationperformancemanagementsFetcher fetcherWithParentObject:self];
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end