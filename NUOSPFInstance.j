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
@import "Fetchers/NUOSPFAreasFetcher.j"

NUOSPFInstanceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUOSPFInstanceEntityScope_GLOBAL = @"GLOBAL";


/*!
    Represent an OSPF instance. There can be only one OSPF instance per domain.
*/
@implementation NUOSPFInstance : NURESTObject
{
    /*!
        Name of OSPF Instance
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Description of OSPF Instance
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Preference for OSPF Internal Routes.
    */
    CPNumber _preference @accessors(property=preference);
    /*!
        Export OSPF Routing Policy ID 
    */
    CPString _associatedExportRoutingPolicyID @accessors(property=associatedExportRoutingPolicyID);
    /*!
        Import OSPF Routing Policy ID
    */
    CPString _associatedImportRoutingPolicyID @accessors(property=associatedImportRoutingPolicyID);
    /*!
        This command configures the maximum number of routes (prefixes) that can be exported into OSPF from the route table.
    */
    CPNumber _exportLimit @accessors(property=exportLimit);
    /*!
        Flag which determines whether the routes learnt through BGP and OSPF will be exported to VSC or not. This flag also exists in the NSGRoutingPolicyBinding entity. The NSGRoutingPolicyBinding flag takes precedence over this one.
    */
    BOOL _exportToOverlay @accessors(property=exportToOverlay);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Preference for OSPF External Routes.
    */
    CPNumber _externalPreference @accessors(property=externalPreference);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUOSPFAreasFetcher _childrenOSPFAreas @accessors(property=childrenOSPFAreas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ospfinstance";
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
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"preference"];
        [self exposeLocalKeyPathToREST:@"associatedExportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedImportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"exportLimit"];
        [self exposeLocalKeyPathToREST:@"exportToOverlay"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"externalPreference"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenOSPFAreas = [NUOSPFAreasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end