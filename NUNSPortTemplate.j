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

@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUVLANTemplatesFetcher.j"

NUNSPortTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSPortTemplateEntityScope_GLOBAL = @"GLOBAL";
NUNSPortTemplatePortType_ACCESS = @"ACCESS";
NUNSPortTemplatePortType_NETWORK = @"NETWORK";


/*!
    Represents Port Template object under a given gateway template object.
*/
@implementation NUNSPortTemplate : NURESTObject
{
    /*!
        VLAN Range of the Port.  Format must conform to a-b,c,d-f where a,b,c,d,f are integers between 0 and 4095.
    */
    CPString _VLANRange @accessors(property=VLANRange);
    /*!
        ID of the Egress QOS Policy associated with this Vlan.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        The ID of the infrastructure VSC profile this is associated with this instance of a port or port template.
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    /*!
        A description of the Port
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The ID of the infrastructure profile this instance is associated with.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Name of the Port
    */
    CPString _name @accessors(property=name);
    /*!
        Identifier of the Port
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        Type of the Port.
    */
    CPString _portType @accessors(property=portType);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUVLANTemplatesFetcher _childrenVLANTemplates @accessors(property=childrenVLANTemplates);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsporttemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"portType"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenVLANTemplates = [NUVLANTemplatesFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end