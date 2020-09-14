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

NUAllAlarmEntityScope_ENTERPRISE = @"ENTERPRISE";
NUAllAlarmEntityScope_GLOBAL = @"GLOBAL";
NUAllAlarmSeverity_CRITICAL = @"CRITICAL";
NUAllAlarmSeverity_INFO = @"INFO";
NUAllAlarmSeverity_MAJOR = @"MAJOR";
NUAllAlarmSeverity_MINOR = @"MINOR";
NUAllAlarmSeverity_WARNING = @"WARNING";


/*!
    The alarm API allows the management of system alarms.
*/
@implementation NUAllAlarm : NURESTObject
{
    /*!
        Identifies affected Entity.  Example: Alarm generated by TCA for Domain domain1(Packets towards a VM, Breach)
    */
    CPString _targetObject @accessors(property=targetObject);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Flag to indicate that alarm is already acknowledged or not
    */
    BOOL _acknowledged @accessors(property=acknowledged);
    /*!
        Remedial actions for the alarm.
    */
    CPString _remedy @accessors(property=remedy);
    /*!
        Description of the alarm
    */
    CPString _description @accessors(property=description);
    /*!
        Severity of the alarm.
    */
    CPString _severity @accessors(property=severity);
    /*!
        Indicates the time that the alarm was triggered
    */
    CPNumber _timestamp @accessors(property=timestamp);
    /*!
        The alarm title.  Each type of alarm will generate its own title
    */
    CPString _title @accessors(property=title);
    /*!
        Alarmed Object ID
    */
    CPString _alarmedObjectID @accessors(property=alarmedObjectID);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Enterprise that this alarm belongs to
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Identifies the error condition
    */
    CPNumber _errorCondition @accessors(property=errorCondition);
    /*!
        Number of times that the alarm was triggered
    */
    CPNumber _numberOfOccurances @accessors(property=numberOfOccurances);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        System ID of the Gateway.
    */
    CPString _systemID @accessors(property=systemID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"allalarm";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"targetObject"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"acknowledged"];
        [self exposeLocalKeyPathToREST:@"remedy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"severity"];
        [self exposeLocalKeyPathToREST:@"timestamp"];
        [self exposeLocalKeyPathToREST:@"title"];
        [self exposeLocalKeyPathToREST:@"alarmedObjectID"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"errorCondition"];
        [self exposeLocalKeyPathToREST:@"numberOfOccurances"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end