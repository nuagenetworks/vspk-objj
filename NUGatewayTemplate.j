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
@import "Fetchers/NUPortTemplatesFetcher.j"

NUGatewayTemplateEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGatewayTemplateEntityScope_GLOBAL = @"GLOBAL";
NUGatewayTemplatePersonality_DC7X50 = @"DC7X50";
NUGatewayTemplatePersonality_EVDF = @"EVDF";
NUGatewayTemplatePersonality_EVDFB = @"EVDFB";
NUGatewayTemplatePersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUGatewayTemplatePersonality_NETCONF_7X50 = @"NETCONF_7X50";
NUGatewayTemplatePersonality_NETCONF_THIRDPARTY_HW_VTEP = @"NETCONF_THIRDPARTY_HW_VTEP";
NUGatewayTemplatePersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUGatewayTemplatePersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUGatewayTemplatePersonality_OTHER = @"OTHER";
NUGatewayTemplatePersonality_VDFG = @"VDFG";
NUGatewayTemplatePersonality_VRSB = @"VRSB";
NUGatewayTemplatePersonality_VRSG = @"VRSG";
NUGatewayTemplatePersonality_VSA = @"VSA";
NUGatewayTemplatePersonality_VSG = @"VSG";


/*!
    A gateway is your point of exit to an external network. It can be a physical or a virtual device. Gateways are templatable. You can attach gateway's VLANs to any existing host or bridge VPorts.
*/
@implementation NUGatewayTemplate : NURESTObject
{
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Personality of the Gateway, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The ID of the associated Infrastructure Gateway Profile tied to this instance of a Gateway Template.
    */
    CPString _infrastructureProfileID @accessors(property=infrastructureProfileID);
    /*!
        The enterprise associated with this Gateway. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUPortTemplatesFetcher _childrenPortTemplates @accessors(property=childrenPortTemplates);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"gatewaytemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"infrastructureProfileID"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenPortTemplates = [NUPortTemplatesFetcher fetcherWithParentObject:self];
        
        _personality = @"VRSG";
        
    }

    return self;
}

@end