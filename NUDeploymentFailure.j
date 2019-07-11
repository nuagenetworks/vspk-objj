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

NUDeploymentFailureEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDeploymentFailureEntityScope_GLOBAL = @"GLOBAL";
NUDeploymentFailureEventType_CREATE = @"CREATE";
NUDeploymentFailureEventType_DELETE = @"DELETE";
NUDeploymentFailureEventType_UPDATE = @"UPDATE";


/*!
    A deployment failure represents a deployment operation initiated by the VSD that resulted in a failure.
*/
@implementation NUDeploymentFailure : NURESTObject
{
    /*!
        A detailed description of the last deployment failure.
    */
    CPString _lastFailureReason @accessors(property=lastFailureReason);
    /*!
        A string reporting the last reported deployment error condition.
    */
    CPString _lastKnownError @accessors(property=lastKnownError);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        UUID of the entity on which deployment failed.
    */
    CPString _affectedEntityID @accessors(property=affectedEntityID);
    /*!
        Managed object type corresponding to the entity on which deployment failed.
    */
    CPString _affectedEntityType @accessors(property=affectedEntityType);
    /*!
        Object difference in json format.
    */
    CPString _diffMap @accessors(property=diffMap);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        A numerical code mapping to the deployment error condition.
    */
    CPNumber _errorCondition @accessors(property=errorCondition);
    /*!
        ID of the parent entity
    */
    CPString _assocEntityId @accessors(property=assocEntityId);
    /*!
        Type of parent entity.
    */
    CPString _assocEntityType @accessors(property=assocEntityType);
    /*!
        ID of the associated Domain.
    */
    CPString _associatedDomainID @accessors(property=associatedDomainID);
    /*!
        Type of the associated Domain
    */
    CPString _associatedDomainType @accessors(property=associatedDomainType);
    /*!
        ID of associated Network entity.
    */
    CPString _associatedNetworkEntityID @accessors(property=associatedNetworkEntityID);
    /*!
        Type of associated Network Entity. i.e Domain, Subnet, L2domain
    */
    CPString _associatedNetworkEntityType @accessors(property=associatedNetworkEntityType);
    /*!
        A count of failed deployment attempts.
    */
    CPNumber _numberOfOccurences @accessors(property=numberOfOccurences);
    /*!
        Event type corresponding to the deployment failure
    */
    CPString _eventType @accessors(property=eventType);
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
    return @"deploymentfailure";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastFailureReason"];
        [self exposeLocalKeyPathToREST:@"lastKnownError"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"affectedEntityID"];
        [self exposeLocalKeyPathToREST:@"affectedEntityType"];
        [self exposeLocalKeyPathToREST:@"diffMap"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"errorCondition"];
        [self exposeLocalKeyPathToREST:@"assocEntityId"];
        [self exposeLocalKeyPathToREST:@"assocEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedDomainID"];
        [self exposeLocalKeyPathToREST:@"associatedDomainType"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkEntityID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkEntityType"];
        [self exposeLocalKeyPathToREST:@"numberOfOccurences"];
        [self exposeLocalKeyPathToREST:@"eventType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end