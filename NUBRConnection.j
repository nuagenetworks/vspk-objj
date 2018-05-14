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

@import "Fetchers/NUBFDSessionsFetcher.j"

NUBRConnectionAdvertisementCriteria_BFD = @"BFD";
NUBRConnectionAdvertisementCriteria_LINK_BASED = @"LINK_BASED";
NUBRConnectionAdvertisementCriteria_OPENFLOW = @"OPENFLOW";
NUBRConnectionAdvertisementCriteria_OPERATIONAL_LINK = @"OPERATIONAL_LINK";
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
        IP address of the gateway bound to the VLAN.
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        Static IP address for the VLAN
    */
    CPString _address @accessors(property=address);
    /*!
        Advertisement Criteria for Traffic Flow
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
        Connection mode: Static.
    */
    CPString _mode @accessors(property=mode);
    /*!
        Internally generated ID in the range that idenitifies the uplink within the cotext of NSG
    */
    CPNumber _uplinkID @accessors(property=uplinkID);
    
    NUBFDSessionsFetcher _childrenBFDSessions @accessors(property=childrenBFDSessions);
    
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
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"advertisementCriteria"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"inherited"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"uplinkID"];
        
        _childrenBFDSessions = [NUBFDSessionsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end