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

NUBootstrapEntityScope_ENTERPRISE = @"ENTERPRISE";
NUBootstrapEntityScope_GLOBAL = @"GLOBAL";
NUBootstrapStatus_ACTIVE = @"ACTIVE";
NUBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUBootstrapStatus_INACTIVE = @"INACTIVE";
NUBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUBootstrapStatus_QUARANTINED = @"QUARANTINED";
NUBootstrapStatus_REVOKED = @"REVOKED";
NUBootstrapZFBMatchAttribute_HOSTNAME = @"HOSTNAME";
NUBootstrapZFBMatchAttribute_IP_ADDRESS = @"IP_ADDRESS";
NUBootstrapZFBMatchAttribute_MAC_ADDRESS = @"MAC_ADDRESS";
NUBootstrapZFBMatchAttribute_NONE = @"NONE";
NUBootstrapZFBMatchAttribute_NSGATEWAY_ID = @"NSGATEWAY_ID";
NUBootstrapZFBMatchAttribute_SERIAL_NUMBER = @"SERIAL_NUMBER";
NUBootstrapZFBMatchAttribute_UUID = @"UUID";


/*!
    Gateway bootstrap details.
*/
@implementation NUBootstrap : NURESTObject
{
    /*!
        Base64 Encoded JSON String of NSG ZFB Attribute Value Pairs
    */
    CPString _ZFBInfo @accessors(property=ZFBInfo);
    /*!
        Attribute to auto match on
    */
    CPString _ZFBMatchAttribute @accessors(property=ZFBMatchAttribute);
    /*!
        Attribute value to auto match on
    */
    CPString _ZFBMatchValue @accessors(property=ZFBMatchValue);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The activation URL used for bootstrapping this instance of the NSG. If the current configuration of the NSG is incomplete, no link will be returned.
    */
    CPString _activationURL @accessors(property=activationURL);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The Installer ID
    */
    CPString _installerID @accessors(property=installerID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Object type of the associated entity.
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        Value showing the bootstrapping or activation status of an NSG or eVDF instance.
    */
    CPString _status @accessors(property=status);
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
    return @"bootstrap";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ZFBInfo"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchAttribute"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchValue"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"activationURL"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"installerID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        _status = @"INACTIVE";
        
    }

    return self;
}

@end