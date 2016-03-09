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

@import "Fetchers/NUEventLogsFetcher.j"
@import "Fetchers/NUFlowsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUTiersFetcher.j"

NUAppAssociatedDomainType_DOMAIN = @"DOMAIN";
NUAppAssociatedDomainType_L2DOMAIN = @"L2DOMAIN";
NUAppAssociatedNetworkObjectType_DOMAIN = @"DOMAIN";
NUAppAssociatedNetworkObjectType_ENTERPRISE = @"ENTERPRISE";
NUAppEntityScope_ENTERPRISE = @"ENTERPRISE";
NUAppEntityScope_GLOBAL = @"GLOBAL";


/*!
    Represents a real life application like a vendor website, or a social network.
*/
@implementation NUApp : NURESTObject
{
    /*!
        The ID of the ACL template that this application is pointing to.
    */
    CPString _assocEgressACLTemplateId @accessors(property=assocEgressACLTemplateId);
    /*!
        The ID of the ACL template that this application is pointing to
    */
    CPString _assocIngressACLTemplateId @accessors(property=assocIngressACLTemplateId);
    /*!
        Domain id where the application is running.
    */
    CPString _associatedDomainID @accessors(property=associatedDomainID);
    /*!
        Type of domain (DOMAIN, L2DOMAIN). Refer to API section for supported types.
    */
    CPString _associatedDomainType @accessors(property=associatedDomainType);
    /*!
        ID of the network object that this App is associated with.
    */
    CPString _associatedNetworkObjectID @accessors(property=associatedNetworkObjectID);
    /*!
        Type of network object this App is associated with (ENTERPRISE, DOMAIN) Refer to API section for supported types.
    */
    CPString _associatedNetworkObjectType @accessors(property=associatedNetworkObjectType);
    /*!
        Description of the application.
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the application.
    */
    CPString _name @accessors(property=name);
    
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    NUFlowsFetcher _childrenFlows @accessors(property=childrenFlows);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUTiersFetcher _childrenTiers @accessors(property=childrenTiers);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"application";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"assocEgressACLTemplateId"];
        [self exposeLocalKeyPathToREST:@"assocIngressACLTemplateId"];
        [self exposeLocalKeyPathToREST:@"associatedDomainID"];
        [self exposeLocalKeyPathToREST:@"associatedDomainType"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectID"];
        [self exposeLocalKeyPathToREST:@"associatedNetworkObjectType"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        _childrenFlows = [NUFlowsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenTiers = [NUTiersFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end