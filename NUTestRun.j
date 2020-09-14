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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUTestRunEntityScope_ENTERPRISE = @"ENTERPRISE";
NUTestRunEntityScope_GLOBAL = @"GLOBAL";
NUTestRunOperationStatus_COMPLETED = @"COMPLETED";
NUTestRunOperationStatus_FAILED = @"FAILED";
NUTestRunOperationStatus_STARTED = @"STARTED";
NUTestRunOperationStatus_TIMED_OUT = @"TIMED_OUT";
NUTestRunOperationStatus_UNKNOWN = @"UNKNOWN";
NUTestRunTestResultDataType_BANDWIDTHTESTRESULT = @"BandwidthTestResult";
NUTestRunTestResultDataType_MTUDISCOVERYTESTRESULT = @"MTUDiscoveryTestResult";
NUTestRunTestResultDataType_NONE = @"None";
NUTestRunTestResultDataType_TCPCONNECTTESTRESULT = @"TCPConnectTestResult";
NUTestRunTestResultDataType_UDPPROBETESTRESULT = @"UDPProbeTestResult";
NUTestRunTestResult_DEGRADED = @"DEGRADED";
NUTestRunTestResult_FAIL = @"FAIL";
NUTestRunTestResult_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUTestRunTestResult_PASS = @"PASS";
NUTestRunUnderlayTestCategory_BANDWIDTH = @"BANDWIDTH";
NUTestRunUnderlayTestCategory_CONNECTIVITY = @"CONNECTIVITY";
NUTestRunUnderlayTestCategory_MTU_DISCOVERY = @"MTU_DISCOVERY";


/*!
    A Test Run object represents the execution of a specific Test as part of a Test Suite Run.
*/
@implementation NUTestRun : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The result of the test
    */
    CPString _testResult @accessors(property=testResult);
    /*!
        The test result data
    */
    NURESTObject _testResultData @accessors(property=testResultData);
    /*!
        The type of the data embedded in the testResultData attribute
    */
    CPString _testResultDataType @accessors(property=testResultDataType);
    /*!
        The spefication entity name of the data embedded in the testResultData attribute
    */
    CPString _testResultSpecificationEntityName @accessors(property=testResultSpecificationEntityName);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The underlay test category
    */
    CPString _underlayTestCategory @accessors(property=underlayTestCategory);
    /*!
        The underlay test description
    */
    CPString _underlayTestDescription @accessors(property=underlayTestDescription);
    /*!
        The underlay test name
    */
    CPString _underlayTestName @accessors(property=underlayTestName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The command, with its arguments, that is to be executed as part of the Test Run.
    */
    CPString _command @accessors(property=command);
    /*!
        The exit code returned to the OS from the executed test command. Field modified on VSD by the NSG.
    */
    CPNumber _commandExitCode @accessors(property=commandExitCode);
    /*!
        The output of the test command that was executed. Updated on VSD by the NSG.
    */
    CPString _commandOutput @accessors(property=commandOutput);
    /*!
        A brief summary of the command output received by the NSG.  Only the beginning and the end of the output is displayed.
    */
    CPString _commandOutputSummary @accessors(property=commandOutputSummary);
    /*!
        The status of the test operation request as received by the NSG Agent. This field is set by the NSG.
    */
    CPString _operationStatus @accessors(property=operationStatus);
    /*!
        The ID of the Test instance to which this Test Run is bound.
    */
    CPString _associatedTestID @accessors(property=associatedTestID);
    /*!
        Test Run instances are part of a Test Suite Run.  This is the ID of the Test Suite Run object to which this Test Run belongs.
    */
    CPString _associatedTestSuiteRunID @accessors(property=associatedTestSuiteRunID);
    /*!
        The start date and time of the test in milliseconds since Epoch.
    */
    CPNumber _startDateTime @accessors(property=startDateTime);
    /*!
        The stop date and time of the test in milliseconds since Epoch.
    */
    CPNumber _stopDateTime @accessors(property=stopDateTime);
    /*!
        The duration of execution of the Test in milliseconds.
    */
    CPNumber _duration @accessors(property=duration);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"testrun";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"testResult"];
        [self exposeLocalKeyPathToREST:@"testResultData"];
        [self exposeLocalKeyPathToREST:@"testResultDataType"];
        [self exposeLocalKeyPathToREST:@"testResultSpecificationEntityName"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"underlayTestCategory"];
        [self exposeLocalKeyPathToREST:@"underlayTestDescription"];
        [self exposeLocalKeyPathToREST:@"underlayTestName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"command"];
        [self exposeLocalKeyPathToREST:@"commandExitCode"];
        [self exposeLocalKeyPathToREST:@"commandOutput"];
        [self exposeLocalKeyPathToREST:@"commandOutputSummary"];
        [self exposeLocalKeyPathToREST:@"operationStatus"];
        [self exposeLocalKeyPathToREST:@"associatedTestID"];
        [self exposeLocalKeyPathToREST:@"associatedTestSuiteRunID"];
        [self exposeLocalKeyPathToREST:@"startDateTime"];
        [self exposeLocalKeyPathToREST:@"stopDateTime"];
        [self exposeLocalKeyPathToREST:@"duration"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end