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

NUAllRedundancyGroupEntityScope_ENTERPRISE = @"ENTERPRISE";
NUAllRedundancyGroupEntityScope_GLOBAL = @"GLOBAL";
NUAllRedundancyGroupPermittedAction_ALL = @"ALL";
NUAllRedundancyGroupPermittedAction_DEPLOY = @"DEPLOY";
NUAllRedundancyGroupPermittedAction_EXTEND = @"EXTEND";
NUAllRedundancyGroupPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUAllRedundancyGroupPermittedAction_READ = @"READ";
NUAllRedundancyGroupPermittedAction_USE = @"USE";
NUAllRedundancyGroupPersonality_DC7X50 = @"DC7X50";
NUAllRedundancyGroupPersonality_EVDF = @"EVDF";
NUAllRedundancyGroupPersonality_EVDFB = @"EVDFB";
NUAllRedundancyGroupPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUAllRedundancyGroupPersonality_NETCONF_7X50 = @"NETCONF_7X50";
NUAllRedundancyGroupPersonality_NETCONF_THIRDPARTY_HW_VTEP = @"NETCONF_THIRDPARTY_HW_VTEP";
NUAllRedundancyGroupPersonality_NSG = @"NSG";
NUAllRedundancyGroupPersonality_NSGBR = @"NSGBR";
NUAllRedundancyGroupPersonality_NSGDUC = @"NSGDUC";
NUAllRedundancyGroupPersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUAllRedundancyGroupPersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUAllRedundancyGroupPersonality_OTHER = @"OTHER";
NUAllRedundancyGroupPersonality_VDFG = @"VDFG";
NUAllRedundancyGroupPersonality_VRSB = @"VRSB";
NUAllRedundancyGroupPersonality_VRSG = @"VRSG";
NUAllRedundancyGroupPersonality_VSA = @"VSA";
NUAllRedundancyGroupPersonality_VSG = @"VSG";
NUAllRedundancyGroupRedundantGatewayStatus_FAILED = @"FAILED";
NUAllRedundancyGroupRedundantGatewayStatus_SUCCESS = @"SUCCESS";


/*!
    A read only API to get all redundancy gateway objects in the VSD environment. Use the ID field to then actually manage the redundancy gateway using the redundancy gateway API entity.
*/
@implementation NUAllRedundancyGroup : NURESTObject
{
    /*!
        Name of the Redundancy Group 
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
        The Auto Discovered Gateway configuration owner in this Redundant Group. 
    */
    CPString _gatewayPeer1AutodiscoveredGatewayID @accessors(property=gatewayPeer1AutodiscoveredGatewayID);
    /*!
        Indicates status of the authoritative  gateway of this Redundancy Group.
    */
    BOOL _gatewayPeer1Connected @accessors(property=gatewayPeer1Connected);
    /*!
        The gateway configuration owner in this Redundant Group. when Redundant Group is deleted this gateway will recieve vport associations 
    */
    CPString _gatewayPeer1ID @accessors(property=gatewayPeer1ID);
    /*!
        The gateway   configuration owner name in this Redundant Group
    */
    CPString _gatewayPeer1Name @accessors(property=gatewayPeer1Name);
    /*!
        The Auto Discovered Gateway  peer in this Redundant Group
    */
    CPString _gatewayPeer2AutodiscoveredGatewayID @accessors(property=gatewayPeer2AutodiscoveredGatewayID);
    /*!
        Indicates status of the secondary gateway of this Redundancy Group.
    */
    BOOL _gatewayPeer2Connected @accessors(property=gatewayPeer2Connected);
    /*!
        The gateway peer name in this Redundant Group
    */
    CPString _gatewayPeer2Name @accessors(property=gatewayPeer2Name);
    /*!
        The status of  Redundant Group, possible values are FAILED, SUCCESS Possible values are FAILED, SUCCESS, .
    */
    CPString _redundantGatewayStatus @accessors(property=redundantGatewayStatus);
    /*!
        The permitted  action to USE/EXTEND  this Gateway Possible values are USE, READ, ALL, INSTANTIATE, EXTEND, DEPLOY, .
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        derived personality of the Redundancy Group - VSG,VRSG,NSG,OTHER Possible values are VSG, VSA, VRSG, VDFG, DC7X50, NSG, HARDWARE_VTEP, OTHER, .
    */
    CPString _personality @accessors(property=personality);
    /*!
         Description of the Redundancy Group
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The enterprise associated with this Redundant Group. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Represent the system ID or the Virtual IP of a service used by a Gateway (VSG for now) to establish a tunnel with a remote VSG or hypervisor.  The format of this field is consistent with an IP address.
    */
    CPString _vtep @accessors(property=vtep);
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
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"allredundancygroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1AutodiscoveredGatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1Connected"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1ID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer1Name"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2AutodiscoveredGatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2Connected"];
        [self exposeLocalKeyPathToREST:@"gatewayPeer2Name"];
        [self exposeLocalKeyPathToREST:@"redundantGatewayStatus"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"vtep"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end