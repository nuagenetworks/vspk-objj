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


NUVNFThresholdPolicyAction_NONE = @"NONE";
NUVNFThresholdPolicyAction_SHUTOFF = @"SHUTOFF";


/*!
    Represents thresholds for resources consumed by VNF instance running on NS Gateway and action to be taken when resource utilization crosses configured thresholds.
*/
@implementation NUVNFThresholdPolicy : NURESTObject
{
    /*!
        Threshold for CPU usage
    */
    CPNumber _CPUThreshold @accessors(property=CPUThreshold);
    /*!
        Name of VNF agent policy
    */
    CPString _name @accessors(property=name);
    /*!
        Action to be taken on threshold crossover
    */
    CPString _action @accessors(property=action);
    /*!
        Threshold for memory usage
    */
    CPNumber _memoryThreshold @accessors(property=memoryThreshold);
    /*!
        Description of VNF agent policy
    */
    CPString _description @accessors(property=description);
    /*!
        Minimum number of threshold crossover occurrence during monitoring interval before taking specified action
    */
    CPNumber _minOccurrence @accessors(property=minOccurrence);
    /*!
        Monitoring interval (minutes) for threshold crossover occurrences to be considered
    */
    CPNumber _monitInterval @accessors(property=monitInterval);
    /*!
        Threshold for storage usage
    */
    CPNumber _storageThreshold @accessors(property=storageThreshold);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vnfthresholdpolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"CPUThreshold"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"memoryThreshold"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"minOccurrence"];
        [self exposeLocalKeyPathToREST:@"monitInterval"];
        [self exposeLocalKeyPathToREST:@"storageThreshold"];
        
        
        
    }

    return self;
}

@end