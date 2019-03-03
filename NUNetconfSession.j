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

NUNetconfSessionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNetconfSessionEntityScope_GLOBAL = @"GLOBAL";
NUNetconfSessionGatewayVendor_CISCO = @"CISCO";
NUNetconfSessionStatus_CONNECTED = @"CONNECTED";
NUNetconfSessionStatus_DISCONNECTED = @"DISCONNECTED";


/*!
    Represents session between gateway and Netconf Manager, This can only be created by netconfmgr user
*/
@implementation NUNetconfSession : NURESTObject
{
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The model string of the gateway to which this session connected from Netconf Manager
    */
    CPString _gatewayModel @accessors(property=gatewayModel);
    /*!
        Vendor of the gateway to which this session connected from Netconf Manager
    */
    CPString _gatewayVendor @accessors(property=gatewayVendor);
    /*!
        Boot image version of gateway to which this session connected from Netconf Manager
    */
    CPString _gatewayVersion @accessors(property=gatewayVersion);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        UUID of the gateway associated to this Netconf session.
    */
    CPString _associatedGatewayID @accessors(property=associatedGatewayID);
    /*!
        Name of the gateway associated to this Netconf session.
    */
    CPString _associatedGatewayName @accessors(property=associatedGatewayName);
    /*!
        The status of the NetConf session to a gateway.
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
    return @"netconfsession";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayModel"];
        [self exposeLocalKeyPathToREST:@"gatewayVendor"];
        [self exposeLocalKeyPathToREST:@"gatewayVersion"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayName"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end