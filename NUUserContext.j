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



/*!
    This defines a proxy class to expose some of the configuration parameters which are required by UI
*/
@implementation NUUserContext : NURESTObject
{
    /*!
        Interval for AAR flow stats
    */
    CPNumber _AARFlowStatsInterval @accessors(property=AARFlowStatsInterval);
    /*!
        Interval for AAR probe stats
    */
    CPNumber _AARProbeStatsInterval @accessors(property=AARProbeStatsInterval);
    /*!
        Interval for VSS stats
    */
    CPNumber _VSSStatsInterval @accessors(property=VSSStatsInterval);
    /*!
        Enables flow statistics collection. It is needed for the VSS feature, and requires a valid VSS license. This option requires 'statisticsEnabled'.
    */
    BOOL _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        This flag is used to indicate if statistics is enabled in the system. CSProot is expected to activate this through the enable statistics script.
    */
    BOOL _statisticsEnabled @accessors(property=statisticsEnabled);
    /*!
        ip address(es) of the elastic machine
    */
    CPString _statsTSDBServerAddress @accessors(property=statsTSDBServerAddress);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"usercontext";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"AARFlowStatsInterval"];
        [self exposeLocalKeyPathToREST:@"AARProbeStatsInterval"];
        [self exposeLocalKeyPathToREST:@"VSSStatsInterval"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"statisticsEnabled"];
        [self exposeLocalKeyPathToREST:@"statsTSDBServerAddress"];
        
        
        
    }

    return self;
}

@end