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

NUUserContextEntityScope_ENTERPRISE = @"ENTERPRISE";
NUUserContextEntityScope_GLOBAL = @"GLOBAL";


/*!
    This defines a proxy class to expose some of the configuration parameters which are required by UI
*/
@implementation NUUserContext : NURESTObject
{
    /*!
        Interval for AAR flow stats
    */
    CPNumber _AARFlowStatsInterval @accessors(property=AARFlowStatsInterval);
    /*!
        Interval for AAR probe stats
    */
    CPNumber _AARProbeStatsInterval @accessors(property=AARProbeStatsInterval);
    /*!
        Flag to indicate if VSS feature is enabled.
    */
    BOOL _VSSFeatureEnabled @accessors(property=VSSFeatureEnabled);
    /*!
        Interval for VSS stats
    */
    CPNumber _VSSStatsInterval @accessors(property=VSSStatsInterval);
    /*!
        Result size for queries
    */
    CPNumber _pageSize @accessors(property=pageSize);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Enables flow statistics collection. It is needed for the VSS feature, and requires a valid VSS license. This option requires 'statisticsEnabled'.
    */
    BOOL _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Google Maps API Key used to display maps on Nuage UI applications
    */
    CPString _googleMapsAPIKey @accessors(property=googleMapsAPIKey);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        This flag is used to indicate if statistics is enabled in the system. CSProot is expected to activate this through the enable statistics script.
    */
    BOOL _statisticsEnabled @accessors(property=statisticsEnabled);
    /*!
        The location of a public proxy to statistics database server in <FQDN>:<PORT> format.
    */
    CPString _statsDatabaseProxy @accessors(property=statsDatabaseProxy);
    /*!
        IP address(es) of the elastic machine
    */
    CPString _statsTSDBServerAddress @accessors(property=statsTSDBServerAddress);
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
    return @"usercontext";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"AARFlowStatsInterval"];
        [self exposeLocalKeyPathToREST:@"AARProbeStatsInterval"];
        [self exposeLocalKeyPathToREST:@"VSSFeatureEnabled"];
        [self exposeLocalKeyPathToREST:@"VSSStatsInterval"];
        [self exposeLocalKeyPathToREST:@"pageSize"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"googleMapsAPIKey"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"statisticsEnabled"];
        [self exposeLocalKeyPathToREST:@"statsDatabaseProxy"];
        [self exposeLocalKeyPathToREST:@"statsTSDBServerAddress"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end