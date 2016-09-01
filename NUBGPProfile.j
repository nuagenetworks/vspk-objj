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

NUBGPProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUBGPProfileEntityScope_GLOBAL = @"GLOBAL";


/*!
    missing documentation.
*/
@implementation NUBGPProfile : NURESTObject
{
    /*!
        Per enterprise unique name
    */
    CPString _name @accessors(property=name);
    /*!
        The time in minutes to wait before decrementing dampening penalty.
    */
    CPNumber _dampeningHalfLife @accessors(property=dampeningHalfLife);
    /*!
        The maximum duration in minutes that a route will be suppressed.
    */
    CPNumber _dampeningMaxSuppress @accessors(property=dampeningMaxSuppress);
    /*!
        Name for the dampening profile. Unique per enterprise
    */
    CPString _dampeningName @accessors(property=dampeningName);
    /*!
        This value is compared with penalty to determine route reusability, If the penalty is greater than the suppress limit, the route will be suppressed; if not, it will be reused.
    */
    CPNumber _dampeningReuse @accessors(property=dampeningReuse);
    /*!
        Specifies the penalty that will be used if a route is suppressed.
    */
    CPNumber _dampeningSuppress @accessors(property=dampeningSuppress);
    /*!
        The description of the BGP Profile
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        export BGP policy ID
    */
    CPString _associatedExportRoutingPolicyID @accessors(property=associatedExportRoutingPolicyID);
    /*!
        import BGP policy ID
    */
    CPString _associatedImportRoutingPolicyID @accessors(property=associatedImportRoutingPolicyID);
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
    return @"bgpprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"dampeningHalfLife"];
        [self exposeLocalKeyPathToREST:@"dampeningMaxSuppress"];
        [self exposeLocalKeyPathToREST:@"dampeningName"];
        [self exposeLocalKeyPathToREST:@"dampeningReuse"];
        [self exposeLocalKeyPathToREST:@"dampeningSuppress"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedExportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedImportRoutingPolicyID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end