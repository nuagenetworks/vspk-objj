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

NUNSGRoutingPolicyBindingEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGRoutingPolicyBindingEntityScope_GLOBAL = @"GLOBAL";
NUNSGRoutingPolicyBindingExportToOverlay_DISABLED = @"DISABLED";
NUNSGRoutingPolicyBindingExportToOverlay_ENABLED = @"ENABLED";
NUNSGRoutingPolicyBindingExportToOverlay_INHERITED = @"INHERITED";


/*!
    None
*/
@implementation NUNSGRoutingPolicyBinding : NURESTObject
{
    /*!
        Name of the RoutingPolicyBinding is unique within the Domain
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Description for this Routing Policy Binding Object.
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        ID of the Export Routing Policy which is associated to the current NSGRoutingPolicyBinding object.
    */
    CPString _associatedExportRoutingPolicyID @accessors(property=associatedExportRoutingPolicyID);
    /*!
        ID of the Import Routing Policy which is associated to the current NSGRoutingPolicyBinding object.
    */
    CPString _associatedImportRoutingPolicyID @accessors(property=associatedImportRoutingPolicyID);
    /*!
        ID of the Policy Object Group which is associated to the current NSGRoutingPolicyBinding object.
    */
    CPString _associatedPolicyObjectGroupID @accessors(property=associatedPolicyObjectGroupID);
    /*!
        Flag to determine whether the BGP and OSPF learnt routes will be exported to VSC or not. This flags also exists at the domain level. If this attribute is set to 'INHERITED' (the default), the behavior is whatever is set at the domain level. Otherwise, this attribute takes precedence over the domain level one.
    */
    CPString _exportToOverlay @accessors(property=exportToOverlay);
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
    return @"nsgroutingpolicybinding";
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
        [self exposeLocalKeyPathToREST:@"associatedExportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedImportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedPolicyObjectGroupID"];
        [self exposeLocalKeyPathToREST:@"exportToOverlay"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end