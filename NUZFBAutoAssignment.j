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


NUZFBAutoAssignmentEntityScope_ENTERPRISE = @"ENTERPRISE";
NUZFBAutoAssignmentEntityScope_GLOBAL = @"GLOBAL";
NUZFBAutoAssignmentZFBMatchAttribute_HOSTNAME = @"HOSTNAME";
NUZFBAutoAssignmentZFBMatchAttribute_IP_ADDRESS = @"IP_ADDRESS";
NUZFBAutoAssignmentZFBMatchAttribute_MAC_ADDRESS = @"MAC_ADDRESS";
NUZFBAutoAssignmentZFBMatchAttribute_NSGATEWAY_ID = @"NSGATEWAY_ID";
NUZFBAutoAssignmentZFBMatchAttribute_SERIAL_NUMBER = @"SERIAL_NUMBER";
NUZFBAutoAssignmentZFBMatchAttribute_UUID = @"UUID";


/*!
    Pre-created matching criteria that allows CSPRoot to auto-assign incoming auto-bootstrapping requests to an Enterprise should a match occur.
*/
@implementation NUZFBAutoAssignment : NURESTObject
{
    /*!
        Attribute to auto match on
    */
    CPString _ZFBMatchAttribute @accessors(property=ZFBMatchAttribute);
    /*!
        Array of values to match on
    */
    CPArrayController _ZFBMatchAttributeValues @accessors(property=ZFBMatchAttributeValues);
    /*!
        Name of the ZFB auto assignment criteria.
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
        Description of the ZFB auto assignment criteria.
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Priority of the Auto Assignment
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        Associated Enterprise ID
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        The name of the associated Enterprise
    */
    CPString _associatedEnterpriseName @accessors(property=associatedEnterpriseName);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"zfbautoassignment";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ZFBMatchAttribute"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchAttributeValues"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseName"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        
        
    }

    return self;
}

@end