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

NUKeyServerNotificationEntityScope_ENTERPRISE = @"ENTERPRISE";
NUKeyServerNotificationEntityScope_GLOBAL = @"GLOBAL";
NUKeyServerNotificationNotificationType_CONFIG_UPDATE = @"CONFIG_UPDATE";
NUKeyServerNotificationNotificationType_ENCRYPTION_DISABLED = @"ENCRYPTION_DISABLED";
NUKeyServerNotificationNotificationType_ENCRYPTION_ENABLED = @"ENCRYPTION_ENABLED";
NUKeyServerNotificationNotificationType_REKEY = @"REKEY";
NUKeyServerNotificationNotificationType_TEST = @"TEST";


/*!
    KeyServer Notification - Create one of these transient objects to push an event to the KeyServer
*/
@implementation NUKeyServerNotification : NURESTObject
{
    /*!
        The base 64 encoded JSON String of the message object
    */
    CPString _base64JSONString @accessors(property=base64JSONString);
    /*!
        The message to send
    */
    NURESTObject _message @accessors(property=message);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The notification type to trigger
    */
    CPString _notificationType @accessors(property=notificationType);
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
    return @"keyservernotification";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"base64JSONString"];
        [self exposeLocalKeyPathToREST:@"message"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"notificationType"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end