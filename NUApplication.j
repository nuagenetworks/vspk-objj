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

@import "Fetchers/NUMonitorscopesFetcher.j"
@import "Fetchers/NUApplicationBindingsFetcher.j"

NUApplicationOptimizePathSelection_JITTER = @"JITTER";
NUApplicationOptimizePathSelection_LATENCY = @"LATENCY";
NUApplicationOptimizePathSelection_PACKETLOSS = @"PACKETLOSS";
NUApplicationPerformanceMonitorType_CONTINUOUS = @"CONTINUOUS";
NUApplicationPerformanceMonitorType_FIRST_PACKET = @"FIRST_PACKET";
NUApplicationPerformanceMonitorType_FIRST_PACKET_AND_CONTINUOUS = @"FIRST_PACKET_AND_CONTINUOUS";
NUApplicationPostClassificationPath_ANY = @"ANY";
NUApplicationPostClassificationPath_PRIMARY = @"PRIMARY";
NUApplicationPostClassificationPath_SECONDARY = @"SECONDARY";
NUApplicationPreClassificationPath_DEFAULT = @"DEFAULT";
NUApplicationPreClassificationPath_PRIMARY = @"PRIMARY";
NUApplicationPreClassificationPath_SECONDARY = @"SECONDARY";
NUApplicationProtocol_NONE = @"NONE";
NUApplicationProtocol_TCP = @"TCP";
NUApplicationProtocol_UDP = @"UDP";


/*!
    represents a application with L4/L7 classification
*/
@implementation NUApplication : NURESTObject
{
    /*!
        DSCP match condition to be set in the rule
    */
    CPString _DSCP @accessors(property=DSCP);
    /*!
        name of the application
    */
    CPString _name @accessors(property=name);
    /*!
        determines whether this entity is read only.  Read only objects cannot be modified or deleted.
    */
    BOOL _readOnly @accessors(property=readOnly);
    /*!
        Describes the trigger for the application.
    */
    CPString _performanceMonitorType @accessors(property=performanceMonitorType);
    /*!
        description of Application
    */
    CPString _description @accessors(property=description);
    /*!
        destination IP in CIDR format
    */
    CPString _destinationIP @accessors(property=destinationIP);
    /*!
        value should be either * or single port number 
    */
    CPString _destinationPort @accessors(property=destinationPort);
    /*!
        Enable the performance probe for this application
    */
    BOOL _enablePPS @accessors(property=enablePPS);
    /*!
        one way Delay
    */
    CPNumber _oneWayDelay @accessors(property=oneWayDelay);
    /*!
        one way Jitter
    */
    CPNumber _oneWayJitter @accessors(property=oneWayJitter);
    /*!
        one way loss
    */
    CPNumber _oneWayLoss @accessors(property=oneWayLoss);
    /*!
        default set to any , possible values primary/secondary/any
    */
    CPString _postClassificationPath @accessors(property=postClassificationPath);
    /*!
        source IP address
    */
    CPString _sourceIP @accessors(property=sourceIP);
    /*!
        source Port ,value should be either * or single port number 
    */
    CPString _sourcePort @accessors(property=sourcePort);
    /*!
        with values being Latency, Jitter, PacketLoss
    */
    CPString _optimizePathSelection @accessors(property=optimizePathSelection);
    /*!
        default set to primary , possible values primary/secondary
    */
    CPString _preClassificationPath @accessors(property=preClassificationPath);
    /*!
        Protocol number that must be matched
    */
    CPString _protocol @accessors(property=protocol);
    /*!
        associated Layer7 Application Type ID
    */
    CPString _associatedL7ApplicationSignatureID @accessors(property=associatedL7ApplicationSignatureID);
    /*!
        Ether type of the packet to be matched. etherType can be * or a valid hexadecimal value
    */
    CPString _etherType @accessors(property=etherType);
    /*!
        Maintain path symmetry during SLA violation
    */
    BOOL _symmetry @accessors(property=symmetry);
    
    NUMonitorscopesFetcher _childrenMonitorscopes @accessors(property=childrenMonitorscopes);
    NUApplicationBindingsFetcher _childrenApplicationBindings @accessors(property=childrenApplicationBindings);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"application";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DSCP"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"readOnly"];
        [self exposeLocalKeyPathToREST:@"performanceMonitorType"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationIP"];
        [self exposeLocalKeyPathToREST:@"destinationPort"];
        [self exposeLocalKeyPathToREST:@"enablePPS"];
        [self exposeLocalKeyPathToREST:@"oneWayDelay"];
        [self exposeLocalKeyPathToREST:@"oneWayJitter"];
        [self exposeLocalKeyPathToREST:@"oneWayLoss"];
        [self exposeLocalKeyPathToREST:@"postClassificationPath"];
        [self exposeLocalKeyPathToREST:@"sourceIP"];
        [self exposeLocalKeyPathToREST:@"sourcePort"];
        [self exposeLocalKeyPathToREST:@"optimizePathSelection"];
        [self exposeLocalKeyPathToREST:@"preClassificationPath"];
        [self exposeLocalKeyPathToREST:@"protocol"];
        [self exposeLocalKeyPathToREST:@"associatedL7ApplicationSignatureID"];
        [self exposeLocalKeyPathToREST:@"etherType"];
        [self exposeLocalKeyPathToREST:@"symmetry"];
        
        _childrenMonitorscopes = [NUMonitorscopesFetcher fetcherWithParentObject:self];
        _childrenApplicationBindings = [NUApplicationBindingsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end