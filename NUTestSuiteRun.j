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
@import "Fetchers/NUTestRunsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUTestSuiteRunEntityScope_ENTERPRISE = @"ENTERPRISE";
NUTestSuiteRunEntityScope_GLOBAL = @"GLOBAL";
NUTestSuiteRunOperationStatus_COMPLETED = @"COMPLETED";
NUTestSuiteRunOperationStatus_CONTAINER_IP_FAILURE = @"CONTAINER_IP_FAILURE";
NUTestSuiteRunOperationStatus_STARTED = @"STARTED";
NUTestSuiteRunOperationStatus_UNKNOWN = @"UNKNOWN";


/*!
    A Test Suite Run represents the execution of a given Test Suite within a diagnostic container on an NSG. It groups together multiple Test Runs.
*/
@implementation NUTestSuiteRun : NURESTObject
{
    /*!
        The name of the vPort against which the Test Suite is to be executed.
    */
    CPString _VPortName @accessors(property=VPortName);
    /*!
        The name of the NSG against which the Test Suite will be executed.
    */
    CPString _NSGatewayName @accessors(property=NSGatewayName);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The Datapath ID of the NSG instance against which the tests are to be executed.
    */
    CPString _datapathID @accessors(property=datapathID);
    /*!
        Destination to be used in conjunction with tests part of the Test Suite. Could be an IPv4 address or FQDN.
    */
    CPString _destination @accessors(property=destination);
    /*!
        Flag to mark this test as the Birth Certificate (i.e. it was run during activation)
    */
    BOOL _birthCertificate @accessors(property=birthCertificate);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The name of the Domain within which the source vPort being tested resides.
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        The name of the Zone within which the source vPort being tested resides.
    */
    CPString _zoneName @accessors(property=zoneName);
    /*!
        The status of the test operation request as received by the NSG Agent. This field is set by the NSG.
    */
    CPString _operationStatus @accessors(property=operationStatus);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Type of the entity that is hosting the Test Suite Run.  This can be a vPort or an NSG.
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        The ID of the Test Suite from which this instance of the Test Suite Run was created.
    */
    CPString _associatedTestSuiteID @accessors(property=associatedTestSuiteID);
    /*!
        The name of the Test Suite instance from which this Test Suite Run was created.
    */
    CPString _associatedTestSuiteName @accessors(property=associatedTestSuiteName);
    /*!
        The associated underlay test (if applicable)
    */
    CPString _associatedUnderlayTestID @accessors(property=associatedUnderlayTestID);
    /*!
        The name of the Subnet within which the source vPort being tested resides.
    */
    CPString _subnetName @accessors(property=subnetName);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The System ID of the NSG instance against which the tests are to be executed.
    */
    CPString _systemID @accessors(property=systemID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUTestRunsFetcher _childrenTestRuns @accessors(property=childrenTestRuns);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"testsuiterun";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VPortName"];
        [self exposeLocalKeyPathToREST:@"NSGatewayName"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"datapathID"];
        [self exposeLocalKeyPathToREST:@"destination"];
        [self exposeLocalKeyPathToREST:@"birthCertificate"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"zoneName"];
        [self exposeLocalKeyPathToREST:@"operationStatus"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedTestSuiteID"];
        [self exposeLocalKeyPathToREST:@"associatedTestSuiteName"];
        [self exposeLocalKeyPathToREST:@"associatedUnderlayTestID"];
        [self exposeLocalKeyPathToREST:@"subnetName"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenTestRuns = [NUTestRunsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end