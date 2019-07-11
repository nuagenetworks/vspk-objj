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

NUInfrastructureEVDFProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructureEVDFProfileEntityScope_GLOBAL = @"GLOBAL";
NUInfrastructureEVDFProfileNuagePlatform_KVM = @"KVM";
NUInfrastructureEVDFProfileNuagePlatform_KVM_K8S = @"KVM_K8S";
NUInfrastructureEVDFProfileNuagePlatform_KVM_LXC = @"KVM_LXC";


/*!
    An Infrastructure eVDF Profile instance contains common parameters used to bootstrap instances of eVDF (encryption enabled virtual distributed firewall).
*/
@implementation NUInfrastructureEVDFProfile : NURESTObject
{
    /*!
        If set, this represents the security key for the Gateway to communicate with the NTP server (a VSC).
    */
    CPString _NTPServerKey @accessors(property=NTPServerKey);
    /*!
        Corresponds to the key ID on the NTP server that matches the NTPServerKey value.  Valid values are from 1 to 255 as specified by SR-OS and when value 0 is entered, it means that the NTP Key is not used (VSD/NSG only).
    */
    CPNumber _NTPServerKeyID @accessors(property=NTPServerKeyID);
    /*!
        The name of the profile instance.
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The IP address of the active Controller (VSC)
    */
    CPString _activeController @accessors(property=activeController);
    /*!
        K8 Service IPv4 Subnet
    */
    CPString _serviceIPv4Subnet @accessors(property=serviceIPv4Subnet);
    /*!
        A brief description of the infrastructure profile.
    */
    CPString _description @accessors(property=description);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Enterprise/Organisation associated with this Profile instance.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The DNS name of the proxy device acting as an entry point of eVDF instances to contact VSD.
    */
    CPString _proxyDNSName @accessors(property=proxyDNSName);
    /*!
        A flag that indicates if two-factor is enabled or not when gateway instances inheriting from this profile are bootstrapped.
    */
    BOOL _useTwoFactor @accessors(property=useTwoFactor);
    /*!
        The IP address of the standby Controller (VSC)
    */
    CPString _standbyController @accessors(property=standbyController);
    /*!
        The Hypervisor Platform
    */
    CPString _nuagePlatform @accessors(property=nuagePlatform);
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
    return @"infrastructureevdfprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"NTPServerKey"];
        [self exposeLocalKeyPathToREST:@"NTPServerKeyID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"activeController"];
        [self exposeLocalKeyPathToREST:@"serviceIPv4Subnet"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"proxyDNSName"];
        [self exposeLocalKeyPathToREST:@"useTwoFactor"];
        [self exposeLocalKeyPathToREST:@"standbyController"];
        [self exposeLocalKeyPathToREST:@"nuagePlatform"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end