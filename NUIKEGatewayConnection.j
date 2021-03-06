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

@import "Fetchers/NUPerformanceMonitorsFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"

NUIKEGatewayConnectionAssociatedCloudType_AZURECLOUD = @"AZURECLOUD";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_CERTIFICATE = @"IKE_CERTIFICATE";
NUIKEGatewayConnectionAssociatedIKEAuthenticationType_IKE_PSK = @"IKE_PSK";
NUIKEGatewayConnectionConfigurationStatus_CANCELING = @"CANCELING";
NUIKEGatewayConnectionConfigurationStatus_CANCELLED = @"CANCELLED";
NUIKEGatewayConnectionConfigurationStatus_CLOUD_CONFIGURATION_REMOVED = @"CLOUD_CONFIGURATION_REMOVED";
NUIKEGatewayConnectionConfigurationStatus_FAILED = @"FAILED";
NUIKEGatewayConnectionConfigurationStatus_IN_PROGRESS = @"IN_PROGRESS";
NUIKEGatewayConnectionConfigurationStatus_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUIKEGatewayConnectionConfigurationStatus_PAUSING = @"PAUSING";
NUIKEGatewayConnectionConfigurationStatus_SUCCESS = @"SUCCESS";
NUIKEGatewayConnectionConfigurationStatus_SYNCED_FROM_CLOUD = @"SYNCED_FROM_CLOUD";
NUIKEGatewayConnectionConfigurationStatus_UNKNOWN = @"UNKNOWN";
NUIKEGatewayConnectionConfigurationStatus_WAITING = @"WAITING";
NUIKEGatewayConnectionConfigurationStatus_WAITING_FOR_RESOURCES = @"WAITING_FOR_RESOURCES";
NUIKEGatewayConnectionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIKEGatewayConnectionEntityScope_GLOBAL = @"GLOBAL";
NUIKEGatewayConnectionNSGIdentifierType_ID_DER_ASN1_DN = @"ID_DER_ASN1_DN";
NUIKEGatewayConnectionNSGIdentifierType_ID_FQDN = @"ID_FQDN";
NUIKEGatewayConnectionNSGIdentifierType_ID_IPV4_ADDR = @"ID_IPV4_ADDR";
NUIKEGatewayConnectionNSGIdentifierType_ID_KEY_ID = @"ID_KEY_ID";
NUIKEGatewayConnectionNSGIdentifierType_ID_RFC822_ADDR = @"ID_RFC822_ADDR";
NUIKEGatewayConnectionNSGRole_INITIATOR = @"INITIATOR";
NUIKEGatewayConnectionNSGRole_RESPONDER = @"RESPONDER";


/*!
    Set the attributes like NSG role, authentication method etc for establishing IKE security association with remote gateway.
*/
@implementation NUIKEGatewayConnection : NURESTObject
{
    /*!
        NSG Identifier. Null to take on the default 'uuid'
    */
    CPString _NSGIdentifier @accessors(property=NSGIdentifier);
    /*!
        NSG Identifier Type. 
    */
    CPString _NSGIdentifierType @accessors(property=NSGIdentifierType);
    /*!
        NSG role
    */
    CPString _NSGRole @accessors(property=NSGRole);
    /*!
        Optional Name of the connection
    */
    CPString _name @accessors(property=name);
    /*!
        skbMark, used by vrs for the ike monitor feature
    */
    CPNumber _mark @accessors(property=mark);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The sequence of the IKE Gateway Connection
    */
    CPNumber _sequence @accessors(property=sequence);
    /*!
        Indicates if the IKEGatewayConnection is mirroring an equivalent one on Shunt VLAN or not.
    */
    BOOL _mirroredConnection @accessors(property=mirroredConnection);
    /*!
        Allow any local subnets to be used
    */
    BOOL _allowAnySubnet @accessors(property=allowAnySubnet);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Unencrypted PSK
    */
    CPString _unencryptedPSK @accessors(property=unencryptedPSK);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Status of configuration on third-party cloud instance
    */
    CPString _configurationStatus @accessors(property=configurationStatus);
    /*!
        The Name of the Port and Vlan the IKEv2 Connection is on
    */
    CPString _portVLANName @accessors(property=portVLANName);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Priority of the IKEv2 Gateway Connection
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        ID of the associated third-party cloud instance
    */
    CPString _associatedCloudID @accessors(property=associatedCloudID);
    /*!
        Type of associated third-party cloud instance, ex. AZURECLOUD
    */
    CPString _associatedCloudType @accessors(property=associatedCloudType);
    /*!
        Associated Authentication ID
    */
    CPString _associatedIKEAuthenticationID @accessors(property=associatedIKEAuthenticationID);
    /*!
        Associated Authentication Type
    */
    CPString _associatedIKEAuthenticationType @accessors(property=associatedIKEAuthenticationType);
    /*!
        The ID of the associated IKEEncryptionProfile
    */
    CPString _associatedIKEEncryptionProfileID @accessors(property=associatedIKEEncryptionProfileID);
    /*!
        The ID of the associated IKEGatewayProfile
    */
    CPString _associatedIKEGatewayProfileID @accessors(property=associatedIKEGatewayProfileID);
    /*!
        The ID of the associated Vlan
    */
    CPString _associatedVLANID @accessors(property=associatedVLANID);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPerformanceMonitorsFetcher _childrenPerformanceMonitors @accessors(property=childrenPerformanceMonitors);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ikegatewayconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"NSGIdentifier"];
        [self exposeLocalKeyPathToREST:@"NSGIdentifierType"];
        [self exposeLocalKeyPathToREST:@"NSGRole"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"mark"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"sequence"];
        [self exposeLocalKeyPathToREST:@"mirroredConnection"];
        [self exposeLocalKeyPathToREST:@"allowAnySubnet"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"unencryptedPSK"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        [self exposeLocalKeyPathToREST:@"portVLANName"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedCloudID"];
        [self exposeLocalKeyPathToREST:@"associatedCloudType"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEAuthenticationType"];
        [self exposeLocalKeyPathToREST:@"associatedIKEEncryptionProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedIKEGatewayProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedVLANID"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPerformanceMonitors = [NUPerformanceMonitorsFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end