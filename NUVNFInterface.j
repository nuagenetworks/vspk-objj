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


NUVNFInterfaceAttachedNetworkType_L2DOMAIN = @"L2DOMAIN";
NUVNFInterfaceAttachedNetworkType_SUBNET = @"SUBNET";


/*!
    Represent VNF interface, This can not be created directly, it will be generated from VNF Interface Descriptor when VNF instance is created.
*/
@implementation NUVNFInterface : NURESTObject
{
    /*!
        MAC address of the  interface
    */
    CPString _MAC @accessors(property=MAC);
    /*!
        UUID of the associated VNF
    */
    CPString _VNFUUID @accessors(property=VNFUUID);
    /*!
        IP address of the  interface
    */
    CPString _IPAddress @accessors(property=IPAddress);
    /*!
        ID of the vport that the interface is attached to
    */
    CPString _VPortID @accessors(property=VPortID);
    /*!
        Name of the vport that the interface is attached to
    */
    CPString _VPortName @accessors(property=VPortName);
    /*!
        Device name associated with this interface
    */
    CPString _name @accessors(property=name);
    /*!
        Gateway of the subnet that the interface is connected to
    */
    CPString _gateway @accessors(property=gateway);
    /*!
        Netmask of the subnet that the interface is attached to
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Name of the network that the interface is attached to
    */
    CPString _networkName @accessors(property=networkName);
    /*!
        The policy decision ID for this particular interface
    */
    CPString _policyDecisionID @accessors(property=policyDecisionID);
    /*!
        ID of the domain that the interface is attached to
    */
    CPString _domainID @accessors(property=domainID);
    /*!
        Name of the domain that the interface is attached to
    */
    CPString _domainName @accessors(property=domainName);
    /*!
        ID of the zone that the interface is attached to
    */
    CPString _zoneID @accessors(property=zoneID);
    /*!
        Name of the zone that the VM is attached to
    */
    CPString _zoneName @accessors(property=zoneName);
    /*!
        Indicates if this is a management interface
    */
    BOOL _isManagementInterface @accessors(property=isManagementInterface);
    /*!
        ID of the Subnet that the interface is attached to
    */
    CPString _attachedNetworkID @accessors(property=attachedNetworkID);
    /*!
        network type that the interface is attached to
    */
    CPString _attachedNetworkType @accessors(property=attachedNetworkType);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vnfinterface";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MAC"];
        [self exposeLocalKeyPathToREST:@"VNFUUID"];
        [self exposeLocalKeyPathToREST:@"IPAddress"];
        [self exposeLocalKeyPathToREST:@"VPortID"];
        [self exposeLocalKeyPathToREST:@"VPortName"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"gateway"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"networkName"];
        [self exposeLocalKeyPathToREST:@"policyDecisionID"];
        [self exposeLocalKeyPathToREST:@"domainID"];
        [self exposeLocalKeyPathToREST:@"domainName"];
        [self exposeLocalKeyPathToREST:@"zoneID"];
        [self exposeLocalKeyPathToREST:@"zoneName"];
        [self exposeLocalKeyPathToREST:@"isManagementInterface"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkID"];
        [self exposeLocalKeyPathToREST:@"attachedNetworkType"];
        
        
        
    }

    return self;
}

@end