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


NUCommandCommand_NSG_APPLY_PATCH = @"NSG_APPLY_PATCH";
NUCommandCommand_NSG_DELETE_PATCH = @"NSG_DELETE_PATCH";
NUCommandCommand_NSG_DOWNLOAD_OS_IMAGE = @"NSG_DOWNLOAD_OS_IMAGE";
NUCommandCommand_NSG_UPGRADE_TO_IMAGE = @"NSG_UPGRADE_TO_IMAGE";
NUCommandCommand_UNKNOWN = @"UNKNOWN";
NUCommandEntityScope_ENTERPRISE = @"ENTERPRISE";
NUCommandEntityScope_GLOBAL = @"GLOBAL";
NUCommandOverride_ABANDON = @"ABANDON";
NUCommandOverride_UNSPECIFIED = @"UNSPECIFIED";
NUCommandStatus_ABANDONED = @"ABANDONED";
NUCommandStatus_COMPLETED = @"COMPLETED";
NUCommandStatus_FAILED = @"FAILED";
NUCommandStatus_RUNNING = @"RUNNING";
NUCommandStatus_SKIPPED = @"SKIPPED";
NUCommandStatus_STARTED = @"STARTED";
NUCommandStatus_UNKNOWN = @"UNKNOWN";


/*!
    A Command represents an operation that needs to be executed on an entity (NSG, Gateway, ...) which requires little processing by VSD, but may result in a long activity on the external entity.  An example would be to trigger an action on VSD so that a Gateway download a new image.  VSDs handling of the request is limited to generating a message to be sent to the device on which the download process is expected.  The device then acts on the request and proceeds with the download...  That may be a long process.  The commands API is similar to the Jobs API with regards to triggering operations on objects.
*/
@implementation NUCommand : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Details about the command execution as reported directly from the NSG independent of status codes.
    */
    CPString _detail @accessors(property=detail);
    /*!
        A string representing the detailed status of the operation that was triggered by the execution of the Command instance.
    */
    CPString _detailedStatus @accessors(property=detailedStatus);
    /*!
        A numerical code mapping to a list of detailed statuses that can apply to a Command instance.
    */
    CPNumber _detailedStatusCode @accessors(property=detailedStatusCode);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Specifies the type of command that is stated for execution on the system receiving the operation request.  A request for download, a request for upgrade, a request for revocation, ...
    */
    CPString _command @accessors(property=command);
    /*!
        Informative details on what command is to be executed.  It complements the commandType attribute.  An example of a value could be a URL, a version number, a UUID of another object, ...
    */
    CPString _commandInformation @accessors(property=commandInformation);
    /*!
        JSON string detailing the progress of the command execution on Gateway.
    */
    CPString _progress @accessors(property=progress);
    /*!
        Managed Object Type of the entity on which this Command is associated.
    */
    CPString _assocEntityType @accessors(property=assocEntityType);
    /*!
        Parameters to be supplied for execution of this command. This should be the ID of the object supplying parameters.
    */
    CPString _associatedParam @accessors(property=associatedParam);
    /*!
        Type of the object which supplies parameters for this command. For NSG_APPLY_PATCH command this should be NSG_PATCH_PROFILE. For NSG_DELETE_PATCH it should be PATCH
    */
    CPString _associatedParamType @accessors(property=associatedParamType);
    /*!
        The status of the Command from a VSD perspective.
    */
    CPString _status @accessors(property=status);
    /*!
        Full command including parameters that is to be executed.
    */
    CPString _fullCommand @accessors(property=fullCommand);
    /*!
        A generated summary for the action giving some general context on the command executed.
    */
    CPString _summary @accessors(property=summary);
    /*!
        Operator specified action which overrides the normal life cycle of a command.
    */
    CPString _override @accessors(property=override);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"command";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"detail"];
        [self exposeLocalKeyPathToREST:@"detailedStatus"];
        [self exposeLocalKeyPathToREST:@"detailedStatusCode"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"command"];
        [self exposeLocalKeyPathToREST:@"commandInformation"];
        [self exposeLocalKeyPathToREST:@"progress"];
        [self exposeLocalKeyPathToREST:@"assocEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedParam"];
        [self exposeLocalKeyPathToREST:@"associatedParamType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"fullCommand"];
        [self exposeLocalKeyPathToREST:@"summary"];
        [self exposeLocalKeyPathToREST:@"override"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        
        
    }

    return self;
}

@end