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

NUIKEGatewayProfileAssociatedCloudType_AZURECLOUD = @"AZURECLOUD";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIKEGatewayProfileAssociatedIKEAuthenticationType_IKE_PSK = @"IKE_PSK";
NUIKEGatewayProfileConfigurationStatus_CANCELING = @"CANCELING";
NUIKEGatewayProfileConfigurationStatus_CANCELLED = @"CANCELLED";
NUIKEGatewayProfileConfigurationStatus_CLOUD_CONFIGURATION_REMOVED = @"CLOUD_CONFIGURATION_REMOVED";
NUIKEGatewayProfileConfigurationStatus_FAILED = @"FAILED";
NUIKEGatewayProfileConfigurationStatus_IN_PROGRESS = @"IN_PROGRESS";
NUIKEGatewayProfileConfigurationStatus_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUIKEGatewayProfileConfigurationStatus_PAUSING = @"PAUSING";
NUIKEGatewayProfileConfigurationStatus_SUCCESS = @"SUCCESS";
NUIKEGatewayProfileConfigurationStatus_SYNCED_FROM_CLOUD = @"SYNCED_FROM_CLOUD";
NUIKEGatewayProfileConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUIKEGatewayProfileConfigurationStatus_WAITING = @"WAITING";
NUIKEGatewayProfileConfigurationStatus_WAITING_FOR_RESOURCES = @"WAITING_FOR_RESOURCES";
NUIKEGatewayProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayProfileEntityScope_GLOBAL = @"GLOBAL";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_DER_ASN1_DN = @"ID_DER_ASN1_DN";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_FQDN = @"ID_FQDN";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_IPV4_ADDR = @"ID_IPV4_ADDR";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_KEY_ID = @"ID_KEY_ID";
NUIKEGatewayProfileIKEGatewayIdentifierType_ID_RFC822_ADDR = @"ID_RFC822_ADDR";
NUIKEGatewayProfileServiceClass_A = @"A";
NUIKEGatewayProfileServiceClass_B = @"B";
NUIKEGatewayProfileServiceClass_C = @"C";
NUIKEGatewayProfileServiceClass_D = @"D";
NUIKEGatewayProfileServiceClass_E = @"E";
NUIKEGatewayProfileServiceClass_F = @"F";
NUIKEGatewayProfileServiceClass_G = @"G";
NUIKEGatewayProfileServiceClass_H = @"H";
NUIKEGatewayProfileServiceClass_NONE = @"NONE";


/*!
    Define attributes of the remote IKE gateway.
*/
@implementation NUIKEGatewayProfile : NURESTObject
{
    /*!
        IKE Gateway Identifier. Null to take on the default 'ipaddress'
    */
    CPString _IKEGatewayIdentifier @accessors(property=IKEGatewayIdentifier);
    /*!
        IKE Gateway Identifier Type.
    */
    CPString _IKEGatewayIdentifierType @accessors(property=IKEGatewayIdentifierType);
    /*!
        Name of the IKEv2 Gateway Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Class of service to be used. Service classes in order of priority are A, B, C, D, E, F, G, and H.
    */
    CPString _serviceClass @accessors(property=serviceClass);
    /*!
        Description of the IKEv2 Gateway Profile
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Allow any local subnets to be used
    */
    BOOL _antiReplayCheck @accessors(property=antiReplayCheck);
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
        Associated IKE Authentication ID
    */
    CPString _associatedIKEAuthenticationID @accessors(property=associatedIKEAuthenticationID);
    /*!
        Associated IKE Authentication Type
    */
    CPString _associatedIKEAuthenticationType @accessors(property=associatedIKEAuthenticationType);
    /*!
        The ID of the associated IKE Encryption Profile
    */
    CPString _associatedIKEEncryptionProfileID @accessors(property=associatedIKEEncryptionProfileID);
    /*!
        The IKE Gateway associated with this Profile
    */
    CPString _associatedIKEGatewayID @accessors(property=associatedIKEGatewayID);
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
    return @"ikegatewayprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"IKEGatewayIdentifier"];
        [self exposeLocalKeyPathToREST:@"IKEGatewayIdentifierType"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"serviceClass"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"antiReplayCheck"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"associatedCloudID"];
        [self exposeLocalKeyPathToREST:@"associatedCloudType"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationType"];
        [self exposeLocalKeyPathToREST:@"associatedIKEEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEGatewayID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end