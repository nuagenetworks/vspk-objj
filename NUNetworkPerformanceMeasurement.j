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

@import "Fetchers/NUNetworkPerformanceBindingsFetcher.j"
@import "Fetchers/NUMonitorscopesFetcher.j"


/*!
    Network Performance Measurement is a container for group of applications and monitor scopes
*/
@implementation NUNetworkPerformanceMeasurement : NURESTObject
{
    /*!
        name of the network performance measurement
    */
    CPString _name @accessors(property=name);
    /*!
        Determines whether this entity is read only.  Read only objects cannot be modified or deleted.
    */
    BOOL _readOnly @accessors(property=readOnly);
    /*!
        description of network performance measurement
    */
    CPString _description @accessors(property=description);
    /*!
        associated Performance Monitor ID 
    */
    CPString _associatedPerformanceMonitorID @accessors(property=associatedPerformanceMonitorID);
    
    NUNetworkPerformanceBindingsFetcher _childrenNetworkPerformanceBindings @accessors(property=childrenNetworkPerformanceBindings);
    NUMonitorscopesFetcher _childrenMonitorscopes @accessors(property=childrenMonitorscopes);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"networkperformancemeasurement";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"readOnly"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"associatedPerformanceMonitorID"];
        
        _childrenNetworkPerformanceBindings = [NUNetworkPerformanceBindingsFetcher fetcherWithParentObject:self];
        _childrenMonitorscopes = [NUMonitorscopesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end