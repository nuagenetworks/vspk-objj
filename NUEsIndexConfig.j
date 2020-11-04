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

NUEsIndexConfigConfigStatus_FAILED = @"FAILED";
NUEsIndexConfigConfigStatus_IN_PROGRESS = @"IN_PROGRESS";
NUEsIndexConfigConfigStatus_SUCCESS = @"SUCCESS";
NUEsIndexConfigEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEsIndexConfigEntityScope_GLOBAL = @"GLOBAL";
NUEsIndexConfigIlmStatus_FAILED = @"FAILED";
NUEsIndexConfigIlmStatus_SUCCESS = @"SUCCESS";
NUEsIndexConfigIndexType_NUAGE_ACL = @"NUAGE_ACL";
NUEsIndexConfigIndexType_NUAGE_ADDRESSMAP = @"NUAGE_ADDRESSMAP";
NUEsIndexConfigIndexType_NUAGE_DPI_FLOWSTATS = @"NUAGE_DPI_FLOWSTATS";
NUEsIndexConfigIndexType_NUAGE_DPI_PROBESTATS = @"NUAGE_DPI_PROBESTATS";
NUEsIndexConfigIndexType_NUAGE_DPI_SLASTATS = @"NUAGE_DPI_SLASTATS";
NUEsIndexConfigIndexType_NUAGE_EVENT = @"NUAGE_EVENT";
NUEsIndexConfigIndexType_NUAGE_FEC = @"NUAGE_FEC";
NUEsIndexConfigIndexType_NUAGE_FLOW = @"NUAGE_FLOW";
NUEsIndexConfigIndexType_NUAGE_GW_SEL_STATS = @"NUAGE_GW_SEL_STATS";
NUEsIndexConfigIndexType_NUAGE_IKE_PROBESTATS = @"NUAGE_IKE_PROBESTATS";
NUEsIndexConfigIndexType_NUAGE_IKE_PROBE_STATUS = @"NUAGE_IKE_PROBE_STATUS";
NUEsIndexConfigIndexType_NUAGE_IKE_STATS = @"NUAGE_IKE_STATS";
NUEsIndexConfigIndexType_NUAGE_LTE = @"NUAGE_LTE";
NUEsIndexConfigIndexType_NUAGE_NATT = @"NUAGE_NATT";
NUEsIndexConfigIndexType_NUAGE_SYSMON = @"NUAGE_SYSMON";
NUEsIndexConfigIndexType_NUAGE_VLAN = @"NUAGE_VLAN";
NUEsIndexConfigIndexType_NUAGE_VNF = @"NUAGE_VNF";
NUEsIndexConfigIndexType_NUAGE_VPORT = @"NUAGE_VPORT";
NUEsIndexConfigIndexType_NUAGE_VPORT_QOS = @"NUAGE_VPORT_QOS";
NUEsIndexConfigIndexType_NUAGE_WIFI = @"NUAGE_WIFI";


/*!
    Elasticsearch Index configuration
*/
@implementation NUEsIndexConfig : NURESTObject
{
    /*!
        Name of the ES Index Config.
    */
    CPString _name @accessors(property=name);
    /*!
        Description of the ES Index Config.
    */
    CPString _description @accessors(property=description);
    /*!
        Index Life Management Status.
    */
    CPString _ilmStatus @accessors(property=ilmStatus);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The wildcard pattern for the specific ES index
    */
    CPString _indexPattern @accessors(property=indexPattern);
    /*!
        The enum value corresponding to an ES index.
    */
    CPString _indexType @accessors(property=indexType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The associated EsIlmPolicy name.
    */
    CPString _policyName @accessors(property=policyName);
    /*!
        The rollover alias for the specific ES index.
    */
    CPString _rolloverAlias @accessors(property=rolloverAlias);
    /*!
        Configuration status of ES Config.
    */
    CPString _configStatus @accessors(property=configStatus);
    /*!
        The UUID of the associated EsIlmPolicy object with ES Index Config.
    */
    CPString _associatedEsIlmPolicyId @accessors(property=associatedEsIlmPolicyId);
    /*!
        The number of primary shards for this index.
    */
    CPNumber _numShards @accessors(property=numShards);
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
    return @"esindexconfig";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"ilmStatus"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"indexPattern"];
        [self exposeLocalKeyPathToREST:@"indexType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"policyName"];
        [self exposeLocalKeyPathToREST:@"rolloverAlias"];
        [self exposeLocalKeyPathToREST:@"configStatus"];
        [self exposeLocalKeyPathToREST:@"associatedEsIlmPolicyId"];
        [self exposeLocalKeyPathToREST:@"numShards"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end