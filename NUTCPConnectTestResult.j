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
    TCP Connect Test Result
*/
@implementation NUTCPConnectTestResult : NURESTObject
{
    /*!
        The number of failed connection attempts
    */
    CPNumber _failedAttempts @accessors(property=failedAttempts);
    /*!
        The percentage of failed connections
    */
    CPNumber _failedPercent @accessors(property=failedPercent);
    /*!
        The maximum round trip time seen
    */
    CPNumber _maximumRoundTripTime @accessors(property=maximumRoundTripTime);
    /*!
        The lowest round trip time seen
    */
    CPNumber _minimumRoundTripTime @accessors(property=minimumRoundTripTime);
    /*!
        The number of connection attempts
    */
    CPNumber _connectionAttempts @accessors(property=connectionAttempts);
    /*!
        Total number of successful connections
    */
    CPNumber _successfulConnections @accessors(property=successfulConnections);
    /*!
        Average Round Trip Time in milliseconds
    */
    CPNumber _averageRoundTripTime @accessors(property=averageRoundTripTime);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"None";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"failedAttempts"];
        [self exposeLocalKeyPathToREST:@"failedPercent"];
        [self exposeLocalKeyPathToREST:@"maximumRoundTripTime"];
        [self exposeLocalKeyPathToREST:@"minimumRoundTripTime"];
        [self exposeLocalKeyPathToREST:@"connectionAttempts"];
        [self exposeLocalKeyPathToREST:@"successfulConnections"];
        [self exposeLocalKeyPathToREST:@"averageRoundTripTime"];
        
        
        
    }

    return self;
}

@end