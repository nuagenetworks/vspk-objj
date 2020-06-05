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


NUUnderlayTestTestResult_DEGRADED = @"DEGRADED";
NUUnderlayTestTestResult_FAIL = @"FAIL";
NUUnderlayTestTestResult_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUUnderlayTestTestResult_PASS = @"PASS";
NUUnderlayTestUnderlayTestType_BIRTH_CERTIFICATE = @"BIRTH_CERTIFICATE";
NUUnderlayTestUnderlayTestType_ON_DEMAND = @"ON_DEMAND";
NUUnderlayTestUnderlayTestType_PRE_BOOTSTRAP = @"PRE_BOOTSTRAP";


/*!
    Underlay Test is a wrapper object for a Test Suite Run from the built in Underlay Tests Test Suite
*/
@implementation NUUnderlayTest : NURESTObject
{
    /*!
        The name of the test
    */
    CPString _name @accessors(property=name);
    /*!
        The result of the test
    */
    CPString _testResult @accessors(property=testResult);
    /*!
        The Underlay Test Server this test was executed against
    */
    CPString _underlayTestServer @accessors(property=underlayTestServer);
    /*!
        Type of Test
    */
    CPString _underlayTestType @accessors(property=underlayTestType);
    /*!
        Create the test only, do not trigger the command. Used for loading existing results
    */
    BOOL _createOnly @accessors(property=createOnly);
    /*!
        The associated data path ID
    */
    CPString _associatedDataPathID @accessors(property=associatedDataPathID);
    /*!
        The ID of the associated NSGateway
    */
    CPString _associatedNSGatewayID @accessors(property=associatedNSGatewayID);
    /*!
        The name of the associated NSGateway
    */
    CPString _associatedNSGatewayName @accessors(property=associatedNSGatewayName);
    /*!
        The ID of the associated Test Suite Run
    */
    CPString _associatedTestSuiteRunID @accessors(property=associatedTestSuiteRunID);
    /*!
        The start date time of the test
    */
    CPNumber _startDateTime @accessors(property=startDateTime);
    /*!
        The stop date time of the test
    */
    CPNumber _stopDateTime @accessors(property=stopDateTime);
    /*!
        Flag to run the Bandwidth test
    */
    BOOL _runBandwidthTest @accessors(property=runBandwidthTest);
    /*!
        Flag to run the connectivity test
    */
    BOOL _runConnectivityTest @accessors(property=runConnectivityTest);
    /*!
        Flag to run the MTU Discovery test
    */
    BOOL _runMTUDiscoveryTest @accessors(property=runMTUDiscoveryTest);
    /*!
        The test duration in seconds
    */
    CPNumber _duration @accessors(property=duration);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"underlaytest";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"testResult"];
        [self exposeLocalKeyPathToREST:@"underlayTestServer"];
        [self exposeLocalKeyPathToREST:@"underlayTestType"];
        [self exposeLocalKeyPathToREST:@"createOnly"];
        [self exposeLocalKeyPathToREST:@"associatedDataPathID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayName"];
        [self exposeLocalKeyPathToREST:@"associatedTestSuiteRunID"];
        [self exposeLocalKeyPathToREST:@"startDateTime"];
        [self exposeLocalKeyPathToREST:@"stopDateTime"];
        [self exposeLocalKeyPathToREST:@"runBandwidthTest"];
        [self exposeLocalKeyPathToREST:@"runConnectivityTest"];
        [self exposeLocalKeyPathToREST:@"runMTUDiscoveryTest"];
        [self exposeLocalKeyPathToREST:@"duration"];
        
        
        
    }

    return self;
}

@end