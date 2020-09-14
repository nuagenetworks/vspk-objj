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
@import "Fetchers/NUIKEGatewayConfigsFetcher.j"
@import "Fetchers/NUIKESubnetsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUIKEGatewayAssociatedCloudType_AZURECLOUD = @"AZURECLOUD";
NUIKEGatewayConfigurationStatus_CANCELING = @"CANCELING";
NUIKEGatewayConfigurationStatus_CANCELLED = @"CANCELLED";
NUIKEGatewayConfigurationStatus_CLOUD_CONFIGURATION_REMOVED = @"CLOUD_CONFIGURATION_REMOVED";
NUIKEGatewayConfigurationStatus_FAILED = @"FAILED";
NUIKEGatewayConfigurationStatus_IN_PROGRESS = @"IN_PROGRESS";
NUIKEGatewayConfigurationStatus_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUIKEGatewayConfigurationStatus_PAUSING = @"PAUSING";
NUIKEGatewayConfigurationStatus_SUCCESS = @"SUCCESS";
NUIKEGatewayConfigurationStatus_SYNCED_FROM_CLOUD = @"SYNCED_FROM_CLOUD";
NUIKEGatewayConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUIKEGatewayConfigurationStatus_WAITING = @"WAITING";
NUIKEGatewayConfigurationStatus_WAITING_FOR_RESOURCES = @"WAITING_FOR_RESOURCES";
NUIKEGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayEntityScope_GLOBAL = @"GLOBAL";
NUIKEGatewayIKEVersion_V1 = @"V1";
NUIKEGatewayIKEVersion_V2 = @"V2";
NUIKEGatewayIKEv1Mode_AGGRESSIVE = @"AGGRESSIVE";
NUIKEGatewayIKEv1Mode_MAIN = @"MAIN";
NUIKEGatewayIKEv1Mode_NONE = @"NONE";


/*!
    Represents an IKE Gateway
*/
@implementation NUIKEGateway : NURESTObject
{
    /*!
        The IKE Version
    */
    CPString _IKEVersion @accessors(property=IKEVersion);
    /*!
        Mode for IKEv1
    */
    CPString _IKEv1Mode @accessors(property=IKEv1Mode);
    /*!
        IP Address of the IKEv2 Gateway
    */
    CPString _IPAddress @accessors(property=IPAddress);
    /*!
        Name of the IKEv2 Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Description of the IKEv2 Gateway
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
        Status of configuration on third-party cloud instance
    */
    CPString _configurationStatus @accessors(property=configurationStatus);
    /*!
        ID of the associated third-party cloud instance
    */
    CPString _associatedCloudID @accessors(property=associatedCloudID);
    /*!
        Type of associated third-party cloud instance, ex. AZURECLOUD
    */
    CPString _associatedCloudType @accessors(property=associatedCloudType);
    /*!
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUIKEGatewayConfigsFetcher _childrenIKEGatewayConfigs @accessors(property=childrenIKEGatewayConfigs);
    NUIKESubnetsFetcher _childrenIKESubnets @accessors(property=childrenIKESubnets);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ikegateway";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"IKEVersion"];
        [self exposeLocalKeyPathToREST:@"IKEv1Mode"];
        [self exposeLocalKeyPathToREST:@"IPAddress"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"associatedCloudID"];
        [self exposeLocalKeyPathToREST:@"associatedCloudType"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenIKEGatewayConfigs = [NUIKEGatewayConfigsFetcher fetcherWithParentObject:self];
        _childrenIKESubnets = [NUIKESubnetsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end