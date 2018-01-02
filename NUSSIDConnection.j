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

@import "Fetchers/NUCaptivePortalProfilesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUSSIDConnectionAuthenticationMode_CAPTIVE_PORTAL = @"CAPTIVE_PORTAL";
NUSSIDConnectionAuthenticationMode_OPEN = @"OPEN";
NUSSIDConnectionAuthenticationMode_WEP = @"WEP";
NUSSIDConnectionAuthenticationMode_WPA = @"WPA";
NUSSIDConnectionAuthenticationMode_WPA2 = @"WPA2";
NUSSIDConnectionAuthenticationMode_WPA_OTP = @"WPA_OTP";
NUSSIDConnectionAuthenticationMode_WPA_WPA2 = @"WPA_WPA2";
NUSSIDConnectionRedirectOption_CONFIGURED_URL = @"CONFIGURED_URL";
NUSSIDConnectionRedirectOption_ORIGINAL_REQUEST = @"ORIGINAL_REQUEST";


/*!
    An SSID Connection instance represents an SSID defined on a WiFi interface.  One SSID Connection is required per SSID created on a WiFi Card/Port.
*/
@implementation NUSSIDConnection : NURESTObject
{
    /*!
        The name associated to the SSID instance.  Has to be unique within an NSG.
    */
    CPString _name @accessors(property=name);
    /*!
        Password or passphrase associated to an SSID instance.  Based on the authenticationMode selected.
    */
    CPString _passphrase @accessors(property=passphrase);
    /*!
        Redirection action to exercise once the connecting user has accepted the use policy presented on the Wireless Captive Portal.
    */
    CPString _redirectOption @accessors(property=redirectOption);
    /*!
        URL to have a newly connected user redirected to once the use policy defined on the Wireless Captive Portal has been accepted by the user.
    */
    CPString _redirectURL @accessors(property=redirectURL);
    /*!
        Blob type attribute that serves to define non-mandatory properties that can be defined in the WiFi Card configuration file.
    */
    CPString _genericConfig @accessors(property=genericConfig);
    /*!
        Brief description of the SSID.
    */
    CPString _description @accessors(property=description);
    /*!
        List of all white listed MAC Addresses for a particular SSID.
    */
    CPArrayController _whiteList @accessors(property=whiteList);
    /*!
        List of all the black listed MAC Addresses for a particular SSID.
    */
    CPArrayController _blackList @accessors(property=blackList);
    /*!
        A read-only attribute that represents the generated interface name for the SSID connection to be provisioned on the NSG.
    */
    CPString _interfaceName @accessors(property=interfaceName);
    /*!
        The Vport associated with this SSID connection.  The attribute can't be modified directly from the SSID Connection.
    */
    CPString _vportID @accessors(property=vportID);
    /*!
        Boolean that defines if the SSID name is to be broadcasted or not.
    */
    BOOL _broadcastSSID @accessors(property=broadcastSSID);
    /*!
        Identification of the Captive Portal Profile that is associated with this instance of SSID connection.
    */
    CPString _associatedCaptivePortalProfileID @accessors(property=associatedCaptivePortalProfileID);
    /*!
        Identification of the Egress QoS policy that is associated with this instance of an SSID Connection.
    */
    CPString _associatedEgressQOSPolicyID @accessors(property=associatedEgressQOSPolicyID);
    /*!
        Which mode of authentication is defined for a particular SSID Connection instance.
    */
    CPString _authenticationMode @accessors(property=authenticationMode);
    
    NUCaptivePortalProfilesFetcher _childrenCaptivePortalProfiles @accessors(property=childrenCaptivePortalProfiles);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ssidconnection";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"passphrase"];
        [self exposeLocalKeyPathToREST:@"redirectOption"];
        [self exposeLocalKeyPathToREST:@"redirectURL"];
        [self exposeLocalKeyPathToREST:@"genericConfig"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"whiteList"];
        [self exposeLocalKeyPathToREST:@"blackList"];
        [self exposeLocalKeyPathToREST:@"interfaceName"];
        [self exposeLocalKeyPathToREST:@"vportID"];
        [self exposeLocalKeyPathToREST:@"broadcastSSID"];
        [self exposeLocalKeyPathToREST:@"associatedCaptivePortalProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedEgressQOSPolicyID"];
        [self exposeLocalKeyPathToREST:@"authenticationMode"];
        
        _childrenCaptivePortalProfiles = [NUCaptivePortalProfilesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end