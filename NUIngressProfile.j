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

@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUVPortsFetcher.j"

NUIngressProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressProfileEntityScope_GLOBAL = @"GLOBAL";


/*!
    An Ingress Profile represents an aggregation of IP, MAC and ingress QoS profiles that are applied on a VPort instance.
*/
@implementation NUIngressProfile : NURESTObject
{
    /*!
        A customer friendly name for the Ingress Profile entity.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        A customer friendly description of the Ingress Profile entity.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Type of parent entity
    */
    CPString _assocEntityType @accessors(property=assocEntityType);
    /*!
        UUID of the associated IP Filter Profile entity.
    */
    CPString _associatedIPFilterProfileID @accessors(property=associatedIPFilterProfileID);
    /*!
        Name of the associated IP Filter Profile entity.
    */
    CPString _associatedIPFilterProfileName @accessors(property=associatedIPFilterProfileName);
    /*!
        UUID of the associated IPv6 Filter Profile entity.
    */
    CPString _associatedIPv6FilterProfileID @accessors(property=associatedIPv6FilterProfileID);
    /*!
        Name of the associated IPv6 Filter Profile entity.
    */
    CPString _associatedIPv6FilterProfileName @accessors(property=associatedIPv6FilterProfileName);
    /*!
        UUID of the associated MAC Filter Profile entity.
    */
    CPString _associatedMACFilterProfileID @accessors(property=associatedMACFilterProfileID);
    /*!
        Name of the associated MAC Filter Profile entity.
    */
    CPString _associatedMACFilterProfileName @accessors(property=associatedMACFilterProfileName);
    /*!
        UUID of the associated SAP Ingress QoS Profile entity.
    */
    CPString _associatedSAPIngressQoSProfileID @accessors(property=associatedSAPIngressQoSProfileID);
    /*!
        Name of the associated SAP Ingress QoS Profile entity.
    */
    CPString _associatedSAPIngressQoSProfileName @accessors(property=associatedSAPIngressQoSProfileName);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVPortsFetcher _childrenVPorts @accessors(property=childrenVPorts);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ingressprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"assocEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedIPFilterProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIPFilterProfileName"];
        [self exposeLocalKeyPathToREST:@"associatedIPv6FilterProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIPv6FilterProfileName"];
        [self exposeLocalKeyPathToREST:@"associatedMACFilterProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedMACFilterProfileName"];
        [self exposeLocalKeyPathToREST:@"associatedSAPIngressQoSProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedSAPIngressQoSProfileName"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVPorts = [NUVPortsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end