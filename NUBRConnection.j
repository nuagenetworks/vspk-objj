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
@import "Fetchers/NUBFDSessionsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUBRConnectionAddressFamily_IPV4 = @"IPV4";
NUBRConnectionAddressFamily_IPV6 = @"IPV6";
NUBRConnectionAdvertisementCriteria_OPERATIONAL_LINK = @"OPERATIONAL_LINK";
NUBRConnectionEntityScope_ENTERPRISE = @"ENTERPRISE";
NUBRConnectionEntityScope_GLOBAL = @"GLOBAL";
NUBRConnectionMode_STATIC = @"Static";


/*!
    None
*/
@implementation NUBRConnection : NURESTObject
{
    /*!
        DNS Address for the vlan
    */
    CPString _DNSAddress @accessors(property=DNSAddress);
    /*!
        DNS IPv6 Address
    */
    CPString _DNSAddressV6 @accessors(property=DNSAddressV6);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        IP address of the gateway bound to the VLAN.
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        IPv6 address of the gateway bound to the port.
    */
    CPString _gatewayV6 @accessors(property=gatewayV6);
    /*!
        Static IP address for the VLAN on which the BR Connection is created.
    */
    CPString _address @accessors(property=address);
    /*!
        IP address family of this BRConnection
    */
    CPString _addressFamily @accessors(property=addressFamily);
    /*!
        IPv6 address for static configuration on the BR Connection instance.
    */
    CPString _addressV6 @accessors(property=addressV6);
    /*!
        Advertisement Criteria for Traffic Flow on a BR Connection.
    */
    CPString _advertisementCriteria @accessors(property=advertisementCriteria);
    /*!
        network mask
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        This flag will determine if the abstract connection is inherited from the instance template
    */
    BOOL _inherited @accessors(property=inherited);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Connection mode: Only static is allowed on a Bridge Router Connection.
    */
    CPString _mode @accessors(property=mode);
    /*!
        Internally generated ID in the range that idenitifies the uplink within the context of NSG.
    */
    CPNumber _uplinkID @accessors(property=uplinkID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUBFDSessionsFetcher _childrenBFDSessions @accessors(property=childrenBFDSessions);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"brconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DNSAddress"];
        [self exposeLocalKeyPathToREST:@"DNSAddressV6"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"gatewayV6"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"addressFamily"];
        [self exposeLocalKeyPathToREST:@"addressV6"];
        [self exposeLocalKeyPathToREST:@"advertisementCriteria"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"inherited"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"uplinkID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenBFDSessions = [NUBFDSessionsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end