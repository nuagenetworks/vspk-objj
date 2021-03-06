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
@import "Fetchers/NUUplinkConnectionsFetcher.j"
@import "Fetchers/NUBRConnectionsFetcher.j"

NUVLANTemplateAssociatedConnectionType_BR_CONNECTION = @"BR_CONNECTION";
NUVLANTemplateAssociatedConnectionType_UPLINK_CONNECTION = @"UPLINK_CONNECTION";
NUVLANTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVLANTemplateEntityScope_GLOBAL = @"GLOBAL";
NUVLANTemplateType_ACCESS = @"ACCESS";
NUVLANTemplateType_BR = @"BR";
NUVLANTemplateType_DUC = @"DUC";
NUVLANTemplateType_UPLINK = @"UPLINK";


/*!
    Represents VLAN Template under a Port Template object.
*/
@implementation NUVLANTemplate : NURESTObject
{
    /*!
        Value or ID of VLAN instances to be created from this template.
    */
    CPNumber _value @accessors(property=value);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        A description of the Port
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
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Indicates that this VLAN Template should be considered as being used for uplink connection.
    */
    BOOL _isUplink @accessors(property=isUplink);
    /*!
        States the managed object type of the uplink connection associated to this VLAN Template instance.
    */
    CPString _associatedConnectionType @accessors(property=associatedConnectionType);
    /*!
        ID of the Egress QOS Policy associated with this Vlan.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        ID of the Ingress Overlay QoS Policer associated with a VLAN.
    */
    CPString _associatedIngressOverlayQoSPolicerID @accessors(property=associatedIngressOverlayQoSPolicerID);
    /*!
        ID of the Ingress QoS Policy associated with this VLAN Template.
    */
    CPString _associatedIngressQOSPolicyID @accessors(property=associatedIngressQOSPolicyID);
    /*!
        ID of the Ingress Underlay QoS Policer associated with a VLAN.
    */
    CPString _associatedIngressUnderlayQoSPolicerID @accessors(property=associatedIngressUnderlayQoSPolicerID);
    /*!
        ID of the uplink connection making use of this VLAN Template instance.
    */
    CPString _associatedUplinkConnectionID @accessors(property=associatedUplinkConnectionID);
    /*!
        The ID of the infrastructure VSC profile this is associated with this instance of a vlan or vlan template.
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    /*!
        When set to true, this specifies that this VLAN template instance serves as an underlay connection endpoint on an NSG-UBR gateway.
    */
    BOOL _ducVlan @accessors(property=ducVlan);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        This type marks a VLAN for its utility.
    */
    CPString _type @accessors(property=type);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUUplinkConnectionsFetcher _childrenUplinkConnections @accessors(property=childrenUplinkConnections);
    NUBRConnectionsFetcher _childrenBRConnections @accessors(property=childrenBRConnections);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vlantemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"value"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"isUplink"];
        [self exposeLocalKeyPathToREST:@"associatedConnectionType"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressOverlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedIngressUnderlayQoSPolicerID"];
        [self exposeLocalKeyPathToREST:@"associatedUplinkConnectionID"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        [self exposeLocalKeyPathToREST:@"ducVlan"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenUplinkConnections = [NUUplinkConnectionsFetcher fetcherWithParentObject:self];
        _childrenBRConnections = [NUBRConnectionsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end