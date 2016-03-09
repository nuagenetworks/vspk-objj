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

NUInfrastructurePortProfileDuplex_FULL = @"FULL";
NUInfrastructurePortProfileDuplex_HALF = @"HALF";
NUInfrastructurePortProfileDuplex_SIMPLEX = @"SIMPLEX";
NUInfrastructurePortProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructurePortProfileEntityScope_GLOBAL = @"GLOBAL";
NUInfrastructurePortProfileSpeed_AUTONEGOTIATE = @"AUTONEGOTIATE";
NUInfrastructurePortProfileSpeed_BASET10 = @"BASET10";
NUInfrastructurePortProfileSpeed_BASET1000 = @"BASET1000";
NUInfrastructurePortProfileSpeed_BASETX100 = @"BASETX100";
NUInfrastructurePortProfileSpeed_BASEX10G = @"BASEX10G";
NUInfrastructurePortProfileUplinkTag_PRIMARY = @"PRIMARY";
NUInfrastructurePortProfileUplinkTag_SECONDARY = @"SECONDARY";
NUInfrastructurePortProfileUplinkTag_TERTIARY = @"TERTIARY";
NUInfrastructurePortProfileUplinkTag_UNKNOWN = @"UNKNOWN";


/*!
    Represents an Infrastructure Port Profile.
*/
@implementation NUInfrastructurePortProfile : NURESTObject
{
    /*!
        A description of the Profile instance created.
    */
    CPString _description @accessors(property=description);
    /*!
        Port Duplex :  Supported values are FULL where both parties can communicate to the other simultaneously and HALF where each party can only communicate to each other in one direction at a time.
    */
    CPString _duplex @accessors(property=duplex);
    /*!
        Enterprise/Organisation associated with this Profile instance.
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
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Port MTU (Maximum Transmission Unit) :  The size in octets of the largest protocol data unit (PDU) that the layer can pass on.  The default value is normally 1500 octets for Ethernet v2 and can go up to 9198 for Jumbo Frames.
    */
    CPNumber _mtu @accessors(property=mtu);
    /*!
        Name of the Infrastructure Profile
    */
    CPString _name @accessors(property=name);
    /*!
        Port Speed in Mb/s :  Supported Ethernet speeds are 10 (10Base-T), 100 (Fast-ethernet 100Base-TX), 1000 (Gigabit Ethernet 1000Base-T), 10 000 (10 Gigabit Ethernet 10GBase-X), and Auto-Negotiate.
    */
    CPString _speed @accessors(property=speed);
    /*!
        To allow prioritisation of traffic, the NSG network ports must be configured with an uplink type or tag value which will be used in the identification of packets being forwarded.  That identification is at the base of the selection of which network port will serve in sending packets to the outside world.  The default value is PRIMARY. Possible values are PRIMARY, SECONDARY, TERTIARY, UNKNOWN, .
    */
    CPString _uplinkTag @accessors(property=uplinkTag);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"infrastructureportprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"duplex"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"mtu"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"speed"];
        [self exposeLocalKeyPathToREST:@"uplinkTag"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        _duplex = @"FULL";
        _speed = @"AUTONEGOTIATE";
        _mtu = 1500;
        
    }

    return self;
}

@end