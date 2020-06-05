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

NUOSPFInterfaceAdminState_DOWN = @"DOWN";
NUOSPFInterfaceAdminState_UP = @"UP";
NUOSPFInterfaceAuthenticationType_MESSAGE_DIGEST = @"MESSAGE_DIGEST";
NUOSPFInterfaceAuthenticationType_NONE = @"NONE";
NUOSPFInterfaceAuthenticationType_PASSWORD = @"PASSWORD";
NUOSPFInterfaceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUOSPFInterfaceEntityScope_GLOBAL = @"GLOBAL";
NUOSPFInterfaceInterfaceType_BROADCAST = @"BROADCAST";
NUOSPFInterfaceInterfaceType_POINT_TO_POINT = @"POINT_TO_POINT";


/*!
    The OSPF interface represents the connection of a router to the OSPF network. The OSPF interface defines the protocol metrics and security parameters for OSPF traffic on a V-Port on the specified subnet. An OSPF interface can exist in only one OSPF area.
*/
@implementation NUOSPFInterface : NURESTObject
{
    /*!
        Enable or disable Bidirectional Forwarding Detection for this OSPF Interface.
    */
    BOOL _BFDEnabled @accessors(property=BFDEnabled);
    /*!
        Name of the OSPF Interface. The name has to be unique within the OSPFArea.
    */
    CPString _name @accessors(property=name);
    /*!
        Enable the passive property of the interface.
    */
    BOOL _passiveEnabled @accessors(property=passiveEnabled);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Admin state of this OSPF interface
    */
    CPString _adminState @accessors(property=adminState);
    /*!
        Time OSPF waits without receiving hello packets before declaring a neighbor down. If specified, it must be at least twice as long as 'helloInterval'.
    */
    CPNumber _deadInterval @accessors(property=deadInterval);
    /*!
        Time interval between OSPF hellos issued on the interface.
    */
    CPNumber _helloInterval @accessors(property=helloInterval);
    /*!
        Description of this OSPF Interface.
    */
    CPString _description @accessors(property=description);
    /*!
        This attribute applies only when 'authenticationType' is 'MESSAGE_DIGEST'. In that case, this attribute is a list of pairs of key ID/password used for MD5 authentication. The key ID must by an integer between 1 and 255, and the value is a password (of 16 charachters maximum) used to generate an MD5 hash. The MD5 has is then used as authentication data in the OSPF packets. No duplicate key IDs are allowed. The format for each pair is 'keyID:password' (e.g. '1:foobar')
    */
    CPArrayController _messageDigestKeys @accessors(property=messageDigestKeys);
    /*!
        Configure an explicit route cost metric for the interface.
    */
    CPNumber _metric @accessors(property=metric);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Can be BROADCAST or POINT_TO_POINT
    */
    CPString _interfaceType @accessors(property=interfaceType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Determines which routers are selected as the designated router and backup designated router of the area.
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        ID of the Subnet which is associated to the current OSPFInterface. Once the OSPF interface is created, the associated subnet ID cannot be updated. The interface must be deleted and re-created with a different subnet ID.
    */
    CPString _associatedSubnetID @accessors(property=associatedSubnetID);
    /*!
        MTU to be used by OSPF for this logical interface
    */
    CPNumber _mtu @accessors(property=mtu);
    /*!
        The authentication key that is used on the interface.
    */
    CPString _authenticationKey @accessors(property=authenticationKey);
    /*!
        Authentication Type used for this OSPFInterface
    */
    CPString _authenticationType @accessors(property=authenticationType);
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
    return @"ospfinterface";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"BFDEnabled"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"passiveEnabled"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"adminState"];
        [self exposeLocalKeyPathToREST:@"deadInterval"];
        [self exposeLocalKeyPathToREST:@"helloInterval"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"messageDigestKeys"];
        [self exposeLocalKeyPathToREST:@"metric"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"interfaceType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedSubnetID"];
        [self exposeLocalKeyPathToREST:@"mtu"];
        [self exposeLocalKeyPathToREST:@"authenticationKey"];
        [self exposeLocalKeyPathToREST:@"authenticationType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end