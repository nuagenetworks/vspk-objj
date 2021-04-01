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
@import "Fetchers/NUNSPortTemplatesFetcher.j"

NUNSGatewayTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGatewayTemplateEntityScope_GLOBAL = @"GLOBAL";
NUNSGatewayTemplateInstanceSSHOverride_ALLOWED = @"ALLOWED";
NUNSGatewayTemplateInstanceSSHOverride_DISALLOWED = @"DISALLOWED";
NUNSGatewayTemplatePersonality_NSG = @"NSG";
NUNSGatewayTemplatePersonality_NSGBR = @"NSGBR";
NUNSGatewayTemplatePersonality_NSGDUC = @"NSGDUC";
NUNSGatewayTemplateSSHService_DISABLED = @"DISABLED";
NUNSGatewayTemplateSSHService_ENABLED = @"ENABLED";


/*!
    Represents a Network Service Gateway Template.
*/
@implementation NUNSGatewayTemplate : NURESTObject
{
    /*!
        Enable/Disable SSH Service on all the Gateway instances which inherit from this template.
    */
    CPString _SSHService @accessors(property=SSHService);
    /*!
        Name of the Gateway template.
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
        Personality of the Gateway template - NSG, NSGBR, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        A description of the Gateway template.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The ID of the infrastructure access profile associated to this Gateway Template.
    */
    CPString _infrastructureAccessProfileID @accessors(property=infrastructureAccessProfileID);
    /*!
        The ID of the infrastructure gateway profile this instance of a Gateway template is associated with.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        Indicates if this template instance allows the gateway instance(s) which inherit from it to independently enable/disable SSH service.
    */
    CPString _instanceSSHOverride @accessors(property=instanceSSHOverride);
    /*!
        The enterprise associated with this Gateway template. This is a read only attribute
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
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUNSPortTemplatesFetcher _childrenNSPortTemplates @accessors(property=childrenNSPortTemplates);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsgatewaytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"SSHService"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"infrastructureAccessProfileID"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"instanceSSHOverride"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenNSPortTemplates = [NUNSPortTemplatesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end