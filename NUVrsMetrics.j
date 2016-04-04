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
    None
*/
@implementation NUVrsMetrics : NURESTObject
{
    /*!
        alubr0 status
    */
    BOOL _ALUbr0Status @accessors(property=ALUbr0Status);
    /*!
        cpu utilization
    */
    CPNumber _CPUUtilization @accessors(property=CPUUtilization);
    /*!
        vrs vsc process status
    */
    BOOL _VRSProcess @accessors(property=VRSProcess);
    /*!
        vrs vrs connection status
    */
    BOOL _VRSVSCStatus @accessors(property=VRSVSCStatus);
    /*!
        VRS Agent Name
    */
    CPString _agentName @accessors(property=agentName);
    /*!
        None
    */
    CPString _assocVCenterHypervisorID @accessors(property=assocVCenterHypervisorID);
    /*!
        jesxmon process status
    */
    BOOL _jesxmonProcess @accessors(property=jesxmonProcess);
    /*!
        Memory Utilization
    */
    CPNumber _memoryUtilization @accessors(property=memoryUtilization);
    /*!
        Is the VRS VM Sending Metrics to the hypervisor on VCIN
    */
    BOOL _receivingMetrics @accessors(property=receivingMetrics);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vrsmetrics";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ALUbr0Status"];
        [self exposeLocalKeyPathToREST:@"CPUUtilization"];
        [self exposeLocalKeyPathToREST:@"VRSProcess"];
        [self exposeLocalKeyPathToREST:@"VRSVSCStatus"];
        [self exposeLocalKeyPathToREST:@"agentName"];
        [self exposeLocalKeyPathToREST:@"assocVCenterHypervisorID"];
        [self exposeLocalKeyPathToREST:@"jesxmonProcess"];
        [self exposeLocalKeyPathToREST:@"memoryUtilization"];
        [self exposeLocalKeyPathToREST:@"receivingMetrics"];
        
        
        
    }

    return self;
}

@end