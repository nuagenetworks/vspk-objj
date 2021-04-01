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
@import "Fetchers/NUVRSsFetcher.j"
@import "Fetchers/NUHSCsFetcher.j"
@import "Fetchers/NUVSCsFetcher.j"

NUControllerVRSLinkClusterNodeRole_NONE = @"NONE";
NUControllerVRSLinkClusterNodeRole_PRIMARY = @"PRIMARY";
NUControllerVRSLinkClusterNodeRole_SECONDARY = @"SECONDARY";
NUControllerVRSLinkControllerType_HSC = @"HSC";
NUControllerVRSLinkControllerType_VSC = @"VSC";
NUControllerVRSLinkEntityScope_ENTERPRISE = @"ENTERPRISE";
NUControllerVRSLinkEntityScope_GLOBAL = @"GLOBAL";
NUControllerVRSLinkJSONRPCConnectionState_ADMIN_DOWN = @"ADMIN_DOWN";
NUControllerVRSLinkJSONRPCConnectionState_DOWN = @"DOWN";
NUControllerVRSLinkJSONRPCConnectionState_NONE = @"NONE";
NUControllerVRSLinkJSONRPCConnectionState_UP = @"UP";
NUControllerVRSLinkRole_MASTER = @"MASTER";
NUControllerVRSLinkRole_NONE = @"NONE";
NUControllerVRSLinkRole_SLAVE = @"SLAVE";
NUControllerVRSLinkStatus_ADMIN_DOWN = @"ADMIN_DOWN";
NUControllerVRSLinkStatus_DOWN = @"DOWN";
NUControllerVRSLinkStatus_UP = @"UP";
NUControllerVRSLinkVRSPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUControllerVRSLinkVRSPersonality_NONE = @"NONE";
NUControllerVRSLinkVRSPersonality_NSG = @"NSG";
NUControllerVRSLinkVRSPersonality_NSGBR = @"NSGBR";
NUControllerVRSLinkVRSPersonality_NSGDUC = @"NSGDUC";
NUControllerVRSLinkVRSPersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUControllerVRSLinkVRSPersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUControllerVRSLinkVRSPersonality_VRS = @"VRS";
NUControllerVRSLinkVRSPersonality_VRSB = @"VRSB";
NUControllerVRSLinkVRSPersonality_VRSG = @"VRSG";
NUControllerVRSLinkVSCConfigState_PRIMARY = @"PRIMARY";
NUControllerVRSLinkVSCConfigState_SECONDARY = @"SECONDARY";
NUControllerVRSLinkVSCCurrentState_PRIMARY = @"PRIMARY";
NUControllerVRSLinkVSCCurrentState_SECONDARY = @"SECONDARY";


/*!
    System Monitoring details for VRS connected to VSC or HSC
*/
@implementation NUControllerVRSLink : NURESTObject
{
    /*!
        ID of associated VRS
    */
    CPString _VRSID @accessors(property=VRSID);
    /*!
        Personality of associated VRS.
    */
    CPString _VRSPersonality @accessors(property=VRSPersonality);
    /*!
        Indicates the configured state of the VSC.
    */
    CPString _VSCConfigState @accessors(property=VSCConfigState);
    /*!
        Indicates the current state of the VSC, which may or maybe not be same as the configured state.
    */
    CPString _VSCCurrentState @accessors(property=VSCCurrentState);
    /*!
        The current JSON RPC connection status.
    */
    CPString _JSONRPCConnectionState @accessors(property=JSONRPCConnectionState);
    /*!
        Name of the Controller-VRS link
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
        The redundant peer id for the current VRS.
    */
    CPString _peer @accessors(property=peer);
    /*!
        Indicate that the controller associated is primary, secondary or unknown.
    */
    CPString _clusterNodeRole @accessors(property=clusterNodeRole);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Flag to indicate the VRS-G redundancy state (active/standby/standalone).  Only applicable for gateways.
    */
    CPString _role @accessors(property=role);
    /*!
        List of Connections for Controller VRS Link
    */
    CPArrayController _connections @accessors(property=connections);
    /*!
        ID of associated Controller
    */
    CPString _controllerID @accessors(property=controllerID);
    /*!
        Type of associated Controller
    */
    CPString _controllerType @accessors(property=controllerType);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Computed status of the entity.
    */
    CPString _status @accessors(property=status);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Flag to indicate it is dynamically configured or not.
    */
    BOOL _dynamic @accessors(property=dynamic);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVRSsFetcher _childrenVRSs @accessors(property=childrenVRSs);
    NUHSCsFetcher _childrenHSCs @accessors(property=childrenHSCs);
    NUVSCsFetcher _childrenVSCs @accessors(property=childrenVSCs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"controllervrslink";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VRSID"];
        [self exposeLocalKeyPathToREST:@"VRSPersonality"];
        [self exposeLocalKeyPathToREST:@"VSCConfigState"];
        [self exposeLocalKeyPathToREST:@"VSCCurrentState"];
        [self exposeLocalKeyPathToREST:@"JSONRPCConnectionState"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"peer"];
        [self exposeLocalKeyPathToREST:@"clusterNodeRole"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"connections"];
        [self exposeLocalKeyPathToREST:@"controllerID"];
        [self exposeLocalKeyPathToREST:@"controllerType"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"dynamic"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVRSs = [NUVRSsFetcher fetcherWithParentObject:self];
        _childrenHSCs = [NUHSCsFetcher fetcherWithParentObject:self];
        _childrenVSCs = [NUVSCsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end