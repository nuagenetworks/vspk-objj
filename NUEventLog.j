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

NUEventLogEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEventLogEntityScope_GLOBAL = @"GLOBAL";


/*!
    The API retrieves the events related to a particular entity
*/
@implementation NUEventLog : NURESTObject
{
    /*!
        Holds the unique ID generated for the REST request associated with this event.
    */
    CPString _requestID @accessors(property=requestID);
    /*!
        Holds the results of diff between two objects of same type.
    */
    NURESTObject _diff @accessors(property=diff);
    /*!
        The enterprise name of the user who triggered this event.
    */
    CPString _enterprise @accessors(property=enterprise);
    /*!
        List of entities associated with the event.
    */
    CPArrayController _entities @accessors(property=entities);
    /*!
        The entity id associated with this event.
    */
    CPString _entityID @accessors(property=entityID);
    /*!
        The entity parent id associated with this event. It can be null.
    */
    CPString _entityParentID @accessors(property=entityParentID);
    /*!
        Event parent entity type.  Generally reported against enterprise.
    */
    CPString _entityParentType @accessors(property=entityParentType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The entity type of this event. It may be Domain, VirtualMachine, etc.,
    */
    CPString _entityType @accessors(property=entityType);
    /*!
        The authenticated user who triggered this event.
    */
    CPString _user @accessors(property=user);
    /*!
        The time that event was received.
    */
    CPNumber _eventReceivedTime @accessors(property=eventReceivedTime);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The event type (CREATE, UPDATE or DELETE).
    */
    CPString _type @accessors(property=type);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"eventlog";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"requestID"];
        [self exposeLocalKeyPathToREST:@"diff"];
        [self exposeLocalKeyPathToREST:@"enterprise"];
        [self exposeLocalKeyPathToREST:@"entities"];
        [self exposeLocalKeyPathToREST:@"entityID"];
        [self exposeLocalKeyPathToREST:@"entityParentID"];
        [self exposeLocalKeyPathToREST:@"entityParentType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"entityType"];
        [self exposeLocalKeyPathToREST:@"user"];
        [self exposeLocalKeyPathToREST:@"eventReceivedTime"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end