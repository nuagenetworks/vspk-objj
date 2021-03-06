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
@import "Fetchers/NUEnterprisesFetcher.j"
@import "Fetchers/NUMultiCastListsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUEnterpriseProfileAllowedForwardingClasses_A = @"A";
NUEnterpriseProfileAllowedForwardingClasses_B = @"B";
NUEnterpriseProfileAllowedForwardingClasses_C = @"C";
NUEnterpriseProfileAllowedForwardingClasses_D = @"D";
NUEnterpriseProfileAllowedForwardingClasses_E = @"E";
NUEnterpriseProfileAllowedForwardingClasses_F = @"F";
NUEnterpriseProfileAllowedForwardingClasses_G = @"G";
NUEnterpriseProfileAllowedForwardingClasses_H = @"H";
NUEnterpriseProfileAllowedForwardingClasses_NONE = @"NONE";
NUEnterpriseProfileEncryptionManagementMode_DISABLED = @"DISABLED";
NUEnterpriseProfileEncryptionManagementMode_MANAGED = @"MANAGED";
NUEnterpriseProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEnterpriseProfileEntityScope_GLOBAL = @"GLOBAL";


/*!
    Enterprise profile, used to store an enterprise's policies, quota etc.
*/
@implementation NUEnterpriseProfile : NURESTObject
{
    /*!
        Enable BGP for this enterprise profile
    */
    BOOL _BGPEnabled @accessors(property=BGPEnabled);
    /*!
        DHCP Lease Interval (in hours) to be used by an enterprise.
    */
    CPNumber _DHCPLeaseInterval @accessors(property=DHCPLeaseInterval);
    /*!
        Enable VNF Management for this enterprise
    */
    BOOL _VNFManagementEnabled @accessors(property=VNFManagementEnabled);
    /*!
        The unique name of the enterprise. Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Enable Web Filtering for this enterprise profile
    */
    BOOL _webFilterEnabled @accessors(property=webFilterEnabled);
    /*!
        Readonly ID of the auto generated receive multicast list associated with this enterprise profile
    */
    CPString _receiveMultiCastListID @accessors(property=receiveMultiCastListID);
    /*!
        Readonly ID of the auto generated send multicast list associated with this enterprise profile
    */
    CPString _sendMultiCastListID @accessors(property=sendMultiCastListID);
    /*!
        A description of the enterprise/organisation profile.
    */
    CPString _description @accessors(property=description);
    /*!
        Enable Threat Prevention Management for enterprise
    */
    BOOL _threatPreventionManagementEnabled @accessors(property=threatPreventionManagementEnabled);
    /*!
        Controls whether this enterprise has access to advanced QoS settings.
    */
    BOOL _allowAdvancedQOSConfiguration @accessors(property=allowAdvancedQOSConfiguration);
    /*!
        If set to true lets the enterprise admin create gateway templates and instances.
    */
    BOOL _allowGatewayManagement @accessors(property=allowGatewayManagement);
    /*!
        Controls whether QoS policies and templates created under this enterprise set the trusted flag to true
    */
    BOOL _allowTrustedForwardingClass @accessors(property=allowTrustedForwardingClass);
    /*!
        Allowed Forwarding Classes for this enterprise. Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _allowedForwardingClasses @accessors(property=allowedForwardingClasses);
    /*!
        Quota set for the number of floating IPs to be used by an enterprise.
    */
    CPNumber _floatingIPsQuota @accessors(property=floatingIPsQuota);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Enable DPI for this enterprise
    */
    BOOL _enableApplicationPerformanceManagement @accessors(property=enableApplicationPerformanceManagement);
    /*!
        encryption management mode for this enterprise Possible values are DISABLED, MANAGED, .
    */
    CPString _encryptionManagementMode @accessors(property=encryptionManagementMode);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Represents the List of forwarding classes and their load balancing capability.
    */
    CPArrayController _forwardingClass @accessors(property=forwardingClass);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEnterprisesFetcher _childrenEnterprises @accessors(property=childrenEnterprises);
    NUMultiCastListsFetcher _childrenMultiCastLists @accessors(property=childrenMultiCastLists);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"enterpriseprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"BGPEnabled"];
        [self exposeLocalKeyPathToREST:@"DHCPLeaseInterval"];
        [self exposeLocalKeyPathToREST:@"VNFManagementEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"webFilterEnabled"];
        [self exposeLocalKeyPathToREST:@"receiveMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"sendMultiCastListID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"threatPreventionManagementEnabled"];
        [self exposeLocalKeyPathToREST:@"allowAdvancedQOSConfiguration"];
        [self exposeLocalKeyPathToREST:@"allowGatewayManagement"];
        [self exposeLocalKeyPathToREST:@"allowTrustedForwardingClass"];
        [self exposeLocalKeyPathToREST:@"allowedForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"floatingIPsQuota"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableApplicationPerformanceManagement"];
        [self exposeLocalKeyPathToREST:@"encryptionManagementMode"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"forwardingClass"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEnterprises = [NUEnterprisesFetcher fetcherWithParentObject:self];
        _childrenMultiCastLists = [NUMultiCastListsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _floatingIPsQuota = 100;
        _DHCPLeaseInterval = 24;
        
    }

    return self;
}

@end