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
@import "Fetchers/NUVMsFetcher.j"
@import "Fetchers/NUContainersFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUQOSEntityScope_ENTERPRISE = @"ENTERPRISE";
NUQOSEntityScope_GLOBAL = @"GLOBAL";
NUQOSServiceClass_A = @"A";
NUQOSServiceClass_B = @"B";
NUQOSServiceClass_C = @"C";
NUQOSServiceClass_D = @"D";
NUQOSServiceClass_E = @"E";
NUQOSServiceClass_F = @"F";
NUQOSServiceClass_G = @"G";
NUQOSServiceClass_H = @"H";
NUQOSServiceClass_NONE = @"NONE";


/*!
    QoS policies enable you to classify and limit network traffic.
*/
@implementation NUQOS : NURESTObject
{
    /*!
        Committed burst size setting in kilo-bytes (kilo-octets) for FIP Shaper.
    */
    CPString _FIPCommittedBurstSize @accessors(property=FIPCommittedBurstSize);
    /*!
        Committed information rate setting in Mb/s for FIP Shaper.
    */
    CPString _FIPCommittedInformationRate @accessors(property=FIPCommittedInformationRate);
    /*!
        Peak burst size setting in kilo-bytes (kilo-octets) for FIP rate limiting.
    */
    CPString _FIPPeakBurstSize @accessors(property=FIPPeakBurstSize);
    /*!
        Peak rate setting for FIP rate limiting in Mb/s;
    */
    CPString _FIPPeakInformationRate @accessors(property=FIPPeakInformationRate);
    /*!
        Flag the indicates whether FIP rate limiting is enabled or disabled
    */
    BOOL _FIPRateLimitingActive @accessors(property=FIPRateLimitingActive);
    /*!
        Committed burst size setting in kilo-bytes (kilo-octets) for BUM Shaper.
    */
    CPString _BUMCommittedBurstSize @accessors(property=BUMCommittedBurstSize);
    /*!
        Committed information rate setting in Mb/s for BUM Shaper.
    */
    CPString _BUMCommittedInformationRate @accessors(property=BUMCommittedInformationRate);
    /*!
        Peak burst size setting in kilo-bytes (kilo-octets) for Broadcast/Multicast rate limiting (BUM).
    */
    CPString _BUMPeakBurstSize @accessors(property=BUMPeakBurstSize);
    /*!
        Peak rate setting in Mb/s for Broadcast/Multicast rate limiting 
    */
    CPString _BUMPeakInformationRate @accessors(property=BUMPeakInformationRate);
    /*!
        Flag the indicates whether Broadcast/Multicast rate limiting is enabled or disabled
    */
    BOOL _BUMRateLimitingActive @accessors(property=BUMRateLimitingActive);
    /*!
        A unique name of the QoS object
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
        Identifies if rate limiting must be implemented
    */
    BOOL _rateLimitingActive @accessors(property=rateLimitingActive);
    /*!
        If enabled, it means that this ACL or QOS entry is active
    */
    BOOL _active @accessors(property=active);
    /*!
        Peak Information Rate :  Peak bandwidth that is allowed from each VM in Mb/s; only whole values allowed and 'INFINITY' if rate limiting is disabled.
    */
    CPString _peak @accessors(property=peak);
    /*!
        Class of service to be used. Service classes in order of priority are A(1), B(2), C(3), D(4), E(5), F(6), G(7) and H(8) Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPString _serviceClass @accessors(property=serviceClass);
    /*!
        A description of the QoS object
    */
    CPString _description @accessors(property=description);
    /*!
        Specifies if the rewrite flag is set for the QoS policy / template
    */
    BOOL _rewriteForwardingClass @accessors(property=rewriteForwardingClass);
    /*!
        Committed burst size setting in kilo-bytes (kilo-octets) for FIP Shaper on the Egress.
    */
    CPString _EgressFIPCommittedBurstSize @accessors(property=EgressFIPCommittedBurstSize);
    /*!
        Committed information rate setting in Mb/s for FIP Shaper on the egress side.
    */
    CPString _EgressFIPCommittedInformationRate @accessors(property=EgressFIPCommittedInformationRate);
    /*!
        Peak burst size setting in kilo-bytes (kilo-octets) for Egress FIP rate limiting.
    */
    CPString _EgressFIPPeakBurstSize @accessors(property=EgressFIPPeakBurstSize);
    /*!
        Peak rate setting for FIP rate limiting on egress in Mb/s
    */
    CPString _EgressFIPPeakInformationRate @accessors(property=EgressFIPPeakInformationRate);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Committed Burst Size :  Burst size associated with the rate limiter in kilo-bytes (kilo-octets); only whole values are supported.
    */
    CPString _committedBurstSize @accessors(property=committedBurstSize);
    /*!
        Committed Information Rate :  Committed bandwidth that is allowed from each VM in Mb/s; only whole values supported.
    */
    CPString _committedInformationRate @accessors(property=committedInformationRate);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Specifies if the trusted flag is set for the QoS policy / template
    */
    BOOL _trustedForwardingClass @accessors(property=trustedForwardingClass);
    /*!
        ID of object associated with this QoS object
    */
    CPString _assocQosId @accessors(property=assocQosId);
    /*!
        ID of the DSCP->Forwarding Class used by this Qos Policy
    */
    CPString _associatedDSCPForwardingClassTableID @accessors(property=associatedDSCPForwardingClassTableID);
    /*!
        Name of the DSCP->Forwarding Class used by this Qos Policy
    */
    CPString _associatedDSCPForwardingClassTableName @accessors(property=associatedDSCPForwardingClassTableName);
    /*!
        Peak Burst Size :  The maximum burst size associated with the rate limiter in kilo-bytes (kilo-octets); only whole values allowed and 'INFINITY' if rate limiting is disabled.
    */
    CPString _burst @accessors(property=burst);
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
    NUVMsFetcher _childrenVMs @accessors(property=childrenVMs);
    NUContainersFetcher _childrenContainers @accessors(property=childrenContainers);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"qos";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"FIPCommittedBurstSize"];
        [self exposeLocalKeyPathToREST:@"FIPCommittedInformationRate"];
        [self exposeLocalKeyPathToREST:@"FIPPeakBurstSize"];
        [self exposeLocalKeyPathToREST:@"FIPPeakInformationRate"];
        [self exposeLocalKeyPathToREST:@"FIPRateLimitingActive"];
        [self exposeLocalKeyPathToREST:@"BUMCommittedBurstSize"];
        [self exposeLocalKeyPathToREST:@"BUMCommittedInformationRate"];
        [self exposeLocalKeyPathToREST:@"BUMPeakBurstSize"];
        [self exposeLocalKeyPathToREST:@"BUMPeakInformationRate"];
        [self exposeLocalKeyPathToREST:@"BUMRateLimitingActive"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"rateLimitingActive"];
        [self exposeLocalKeyPathToREST:@"active"];
        [self exposeLocalKeyPathToREST:@"peak"];
        [self exposeLocalKeyPathToREST:@"serviceClass"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"rewriteForwardingClass"];
        [self exposeLocalKeyPathToREST:@"EgressFIPCommittedBurstSize"];
        [self exposeLocalKeyPathToREST:@"EgressFIPCommittedInformationRate"];
        [self exposeLocalKeyPathToREST:@"EgressFIPPeakBurstSize"];
        [self exposeLocalKeyPathToREST:@"EgressFIPPeakInformationRate"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"committedBurstSize"];
        [self exposeLocalKeyPathToREST:@"committedInformationRate"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"trustedForwardingClass"];
        [self exposeLocalKeyPathToREST:@"assocQosId"];
        [self exposeLocalKeyPathToREST:@"associatedDSCPForwardingClassTableID"];
        [self exposeLocalKeyPathToREST:@"associatedDSCPForwardingClassTableName"];
        [self exposeLocalKeyPathToREST:@"burst"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVMs = [NUVMsFetcher fetcherWithParentObject:self];
        _childrenContainers = [NUContainersFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end