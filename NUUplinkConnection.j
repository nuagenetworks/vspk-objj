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


NUUplinkConnectionAddress_IPV4 = @"IPv4";
NUUplinkConnectionAddress_IPV6 = @"IPv6";
NUUplinkConnectionMode_ANY = @"Any";
NUUplinkConnectionMode_DYNAMIC = @"Dynamic";
NUUplinkConnectionMode_PPPOE = @"PPPoE";
NUUplinkConnectionMode_STATIC = @"Static";
NUUplinkConnectionRole_PRIMARY = @"PRIMARY";
NUUplinkConnectionRole_SECONDARY = @"SECONDARY";
NUUplinkConnectionRole_TERTIARY = @"TERTIARY";
NUUplinkConnectionRole_UNKNOWN = @"UNKNOWN";


/*!
    None
*/
@implementation NUUplinkConnection : NURESTObject
{
    /*!
        DNS server address
    */
    CPString _DNSAddress @accessors(property=DNSAddress);
    /*!
        PPPoE password.
    */
    CPString _password @accessors(property=password);
    /*!
        IP address for static configuration
    */
    CPString _address @accessors(property=address);
    /*!
        Subnet mask
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Specify how to connect to the network. Possible values: Any, Dynamic (DHCP), Static (static configuration is required), PPPoE (pppoe configuration required). Default: Dynamic
    */
    CPString _mode @accessors(property=mode);
    /*!
        To allow prioritisation of traffic, the NSG network ports must be configured with an uplink type or tag value which will be used in the identification of packets being forwarded.  That identification is at the base of the selection of which network port will serve in sending packets to the outside world.  The default value is PRIMARY. Possible values are PRIMARY, SECONDARY, TERTIARY, UNKNOWN, 
    */
    CPString _role @accessors(property=role);
    /*!
        PPPoE username
    */
    CPString _username @accessors(property=username);
    /*!
        The ID of the infrastructure VSC profile this is associated with this instance of a vlan or vlan template.
    */
    CPString _associatedVSCProfileID @accessors(property=associatedVSCProfileID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"uplinkconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"DNSAddress"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"mode"];
        [self exposeLocalKeyPathToREST:@"role"];
        [self exposeLocalKeyPathToREST:@"username"];
        [self exposeLocalKeyPathToREST:@"associatedVSCProfileID"];
        
        
        
    }

    return self;
}

@end