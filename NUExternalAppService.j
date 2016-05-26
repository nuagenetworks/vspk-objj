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

NUExternalAppServiceEgressType_REDIRECT = @"REDIRECT";
NUExternalAppServiceEgressType_ROUTE = @"ROUTE";
NUExternalAppServiceEntityScope_ENTERPRISE = @"ENTERPRISE";
NUExternalAppServiceEntityScope_GLOBAL = @"GLOBAL";
NUExternalAppServiceIngressType_REDIRECT = @"REDIRECT";
NUExternalAppServiceIngressType_ROUTE = @"ROUTE";


/*!
    Represents an External Service in the Application Designer.
*/
@implementation NUExternalAppService : NURESTObject
{
    /*!
        Name of the flow.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Description of the flow.
    */
    CPString _description @accessors(property=description);
    /*!
        Destination NAT Address
    */
    CPString _destinationNATAddress @accessors(property=destinationNATAddress);
    /*!
        Boolean flag to indicate whether source NAT is enabled
    */
    BOOL _destinationNATEnabled @accessors(property=destinationNATEnabled);
    /*!
        netmask of the Destination NAT
    */
    CPString _destinationNATMask @accessors(property=destinationNATMask);
    /*!
        metadata
    */
    CPString _metadata @accessors(property=metadata);
    /*!
        Egress type.
    */
    CPString _egressType @accessors(property=egressType);
    /*!
        Virtual IP Address
    */
    CPString _virtualIP @accessors(property=virtualIP);
    /*!
        Boolean flag to indicate whether we require a VIP
    */
    BOOL _virtualIPRequired @accessors(property=virtualIPRequired);
    /*!
        Ingress type.
    */
    CPString _ingressType @accessors(property=ingressType);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Source NAT Address
    */
    CPString _sourceNATAddress @accessors(property=sourceNATAddress);
    /*!
        Boolean flag to indicate whether source NAT is enabled
    */
    BOOL _sourceNATEnabled @accessors(property=sourceNATEnabled);
    /*!
        ID of service port group identifying the output ports
    */
    CPString _associatedServiceEgressGroupID @accessors(property=associatedServiceEgressGroupID);
    /*!
        the redirect target ID that identifies the output ports
    */
    CPString _associatedServiceEgressRedirectID @accessors(property=associatedServiceEgressRedirectID);
    /*!
        ID of service port group identifying the input ports
    */
    CPString _associatedServiceIngressGroupID @accessors(property=associatedServiceIngressGroupID);
    /*!
        the redirect target ID that identifies the input ports
    */
    CPString _associatedServiceIngressRedirectID @accessors(property=associatedServiceIngressRedirectID);
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
    return @"externalappservice";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"destinationNATAddress"];
        [self exposeLocalKeyPathToREST:@"destinationNATEnabled"];
        [self exposeLocalKeyPathToREST:@"destinationNATMask"];
        [self exposeLocalKeyPathToREST:@"metadata"];
        [self exposeLocalKeyPathToREST:@"egressType"];
        [self exposeLocalKeyPathToREST:@"virtualIP"];
        [self exposeLocalKeyPathToREST:@"virtualIPRequired"];
        [self exposeLocalKeyPathToREST:@"ingressType"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"sourceNATAddress"];
        [self exposeLocalKeyPathToREST:@"sourceNATEnabled"];
        [self exposeLocalKeyPathToREST:@"associatedServiceEgressGroupID"];
        [self exposeLocalKeyPathToREST:@"associatedServiceEgressRedirectID"];
        [self exposeLocalKeyPathToREST:@"associatedServiceIngressGroupID"];
        [self exposeLocalKeyPathToREST:@"associatedServiceIngressRedirectID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end