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

@import "Fetchers/NUApplicationperformancemanagementsFetcher.j"

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
        Payload size
    */
    CPNumber _payloadSize @accessors(property=payloadSize);
    /*!
        Class of service to be used.  Service classes in order of priority are A, B, C, D, E, F, G, and H.
    */
    CPString _serviceClass @accessors(property=serviceClass);
    /*!
        Description of application group probe
    */
    CPString _description @accessors(property=description);
    /*!
        interval in seconds
    */
    CPNumber _interval @accessors(property=interval);
    /*!
        number of packets
    */
    CPNumber _numberOfPackets @accessors(property=numberOfPackets);
    
    NUApplicationperformancemanagementsFetcher _childrenApplicationperformancemanagements @accessors(property=childrenApplicationperformancemanagements);
    
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
        [self exposeLocalKeyPathToREST:@"payloadSize"];
        [self exposeLocalKeyPathToREST:@"serviceClass"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"interval"];
        [self exposeLocalKeyPathToREST:@"numberOfPackets"];
        
        _childrenApplicationperformancemanagements = [NUApplicationperformancemanagementsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end