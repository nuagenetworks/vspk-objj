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

@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUGNMISessionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGNMISessionEntityScope_GLOBAL = @"GLOBAL";
NUGNMISessionGatewayVendor_CISCO = @"CISCO";
NUGNMISessionGatewayVendor_NOKIA = @"NOKIA";
NUGNMISessionStatus_CONNECTED = @"CONNECTED";
NUGNMISessionStatus_DISCONNECTED = @"DISCONNECTED";
NUGNMISessionSubscriptionState_COMPLETED = @"COMPLETED";
NUGNMISessionSubscriptionState_FAILED = @"FAILED";
NUGNMISessionSubscriptionState_INIT = @"INIT";
NUGNMISessionSubscriptionState_IN_PROGRESS = @"IN_PROGRESS";


/*!
    Represents GNMI session between gateway and Config Manager, This can only be created by netconfmgr user
*/
@implementation NUGNMISession : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The model string of the gateway to which this session connected from Config Manager
    */
    CPString _gatewayModel @accessors(property=gatewayModel);
    /*!
        Vendor of the gateway to which this session connected from Config Manager
    */
    CPString _gatewayVendor @accessors(property=gatewayVendor);
    /*!
        Boot image version of gateway to which this session connected from Config Manager
    */
    CPString _gatewayVersion @accessors(property=gatewayVersion);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        UUID of the gateway associated to this GNMI session.
    */
    CPString _associatedGatewayID @accessors(property=associatedGatewayID);
    /*!
        Name of the gateway associated to this GNMI session.
    */
    CPString _associatedGatewayName @accessors(property=associatedGatewayName);
    /*!
        The status of the GNMI session to a gateway.
    */
    CPString _status @accessors(property=status);
    /*!
        Last subscription error reported
    */
    CPString _subscriptionError @accessors(property=subscriptionError);
    /*!
        Detailed subscription error message
    */
    CPString _subscriptionFailureReason @accessors(property=subscriptionFailureReason);
    /*!
        Number of times subscription has been attempted since first failure
    */
    CPNumber _subscriptionFailureRetryCount @accessors(property=subscriptionFailureRetryCount);
    /*!
        Status of gnmi subscriptions to device from Netconf Manager
    */
    CPString _subscriptionState @accessors(property=subscriptionState);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"gnmisession";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gatewayModel"];
        [self exposeLocalKeyPathToREST:@"gatewayVendor"];
        [self exposeLocalKeyPathToREST:@"gatewayVersion"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayName"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"subscriptionError"];
        [self exposeLocalKeyPathToREST:@"subscriptionFailureReason"];
        [self exposeLocalKeyPathToREST:@"subscriptionFailureRetryCount"];
        [self exposeLocalKeyPathToREST:@"subscriptionState"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end