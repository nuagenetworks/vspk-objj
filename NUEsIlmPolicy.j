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

NUEsIlmPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEsIlmPolicyEntityScope_GLOBAL = @"GLOBAL";
NUEsIlmPolicyEsIlmPolicyType_CUSTOM = @"CUSTOM";
NUEsIlmPolicyEsIlmPolicyType_DEFAULT = @"DEFAULT";


/*!
    An Elasticsearch Index Lifecycle Management Policy defines the phases and actions to manage the lifecycle of an ES index.
*/
@implementation NUEsIlmPolicy : NURESTObject
{
    /*!
        A unique name of the EsIlmPolicy object
    */
    CPString _name @accessors(property=name);
    /*!
        Enable WARM phase for the ES index
    */
    BOOL _warmPhaseEnabled @accessors(property=warmPhaseEnabled);
    /*!
        The number of hours after the rollover of the index until it moves to the warm phase.
    */
    CPNumber _warmTimer @accessors(property=warmTimer);
    /*!
        Enable DELETE phase for the ES index
    */
    BOOL _deletePhaseEnabled @accessors(property=deletePhaseEnabled);
    /*!
        The number of hours after the rollover of the index until it gets deleted. This value has to be higher than the cold timer value.
    */
    CPNumber _deleteTimer @accessors(property=deleteTimer);
    /*!
        Description of the Elasticsearch Index Lifecycle Management Policy.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Mark the ES index as frozen when moving to the cold phase. This will freeze the index by calling the Freeze Index API.
    */
    BOOL _indexFreeze @accessors(property=indexFreeze);
    /*!
        Mark the ES index as readonly in the warm phase
    */
    BOOL _indexReadOnly @accessors(property=indexReadOnly);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Enable COLD phase for the ES index.
    */
    BOOL _coldPhaseEnabled @accessors(property=coldPhaseEnabled);
    /*!
        The number of hours after the rollover of the index until it moves to the cold phase. This value has to be higher than the warm timer value.
    */
    CPNumber _coldTimer @accessors(property=coldTimer);
    /*!
        The number of hours after which the index is rolled over in case it isn't rolled over based on size or number of documents.
    */
    CPNumber _rolloverMaxAge @accessors(property=rolloverMaxAge);
    /*!
        The number of documents after which the index is rolled over in case it isn't rolled over based on size or age.
    */
    CPNumber _rolloverMaxDocs @accessors(property=rolloverMaxDocs);
    /*!
        The max size in GB after which the index is rolled over in case it isn't rolled over based on age or number of documents.
    */
    CPNumber _rolloverMaxSize @accessors(property=rolloverMaxSize);
    /*!
        Enable the Force Merge action for the ES index when moving to the warm phase.
    */
    BOOL _forceMergeEnabled @accessors(property=forceMergeEnabled);
    /*!
        Max number of segments for Force Merge
    */
    CPNumber _forceMergeMaxNumSegments @accessors(property=forceMergeMaxNumSegments);
    /*!
        The type of EsIlm Policy. 
    */
    CPString _esIlmPolicyType @accessors(property=esIlmPolicyType);
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
    return @"esilmpolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"warmPhaseEnabled"];
        [self exposeLocalKeyPathToREST:@"warmTimer"];
        [self exposeLocalKeyPathToREST:@"deletePhaseEnabled"];
        [self exposeLocalKeyPathToREST:@"deleteTimer"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"indexFreeze"];
        [self exposeLocalKeyPathToREST:@"indexReadOnly"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"coldPhaseEnabled"];
        [self exposeLocalKeyPathToREST:@"coldTimer"];
        [self exposeLocalKeyPathToREST:@"rolloverMaxAge"];
        [self exposeLocalKeyPathToREST:@"rolloverMaxDocs"];
        [self exposeLocalKeyPathToREST:@"rolloverMaxSize"];
        [self exposeLocalKeyPathToREST:@"forceMergeEnabled"];
        [self exposeLocalKeyPathToREST:@"forceMergeMaxNumSegments"];
        [self exposeLocalKeyPathToREST:@"esIlmPolicyType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end