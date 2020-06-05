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


NUThreatPreventionInfoConfigurationStatus_ACTIVATION_FAILED = @"ACTIVATION_FAILED";
NUThreatPreventionInfoConfigurationStatus_CONFIG_FAILED = @"CONFIG_FAILED";
NUThreatPreventionInfoConfigurationStatus_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUThreatPreventionInfoConfigurationStatus_REGISTRATION_FAILED = @"REGISTRATION_FAILED";
NUThreatPreventionInfoConfigurationStatus_SYNCED = @"SYNCED";
NUThreatPreventionInfoManagementServerConnectionStatus_CONNECTED = @"CONNECTED";
NUThreatPreventionInfoManagementServerConnectionStatus_DISCONNECTED = @"DISCONNECTED";
NUThreatPreventionInfoManagementServerConnectionStatus_NOT_APPLICABLE = @"NOT_APPLICABLE";
NUThreatPreventionInfoServiceStatus_BLOCKED = @"BLOCKED";
NUThreatPreventionInfoServiceStatus_CRASHED = @"CRASHED";
NUThreatPreventionInfoServiceStatus_DYING = @"DYING";
NUThreatPreventionInfoServiceStatus_IDLE = @"IDLE";
NUThreatPreventionInfoServiceStatus_INIT = @"INIT";
NUThreatPreventionInfoServiceStatus_LAST = @"LAST";
NUThreatPreventionInfoServiceStatus_PAUSED = @"PAUSED";
NUThreatPreventionInfoServiceStatus_PMSUSPENDED = @"PMSUSPENDED";
NUThreatPreventionInfoServiceStatus_RUNNING = @"RUNNING";
NUThreatPreventionInfoServiceStatus_SHUTDOWN = @"SHUTDOWN";
NUThreatPreventionInfoServiceStatus_SHUTOFF = @"SHUTOFF";


/*!
    Represents information about Threat Prevention service/instance on NSG. This is read only entity.
*/
@implementation NUThreatPreventionInfo : NURESTObject
{
    /*!
        Connection status between Threat Prevention manaement Server and NSG.
    */
    CPString _managementServerConnectionStatus @accessors(property=managementServerConnectionStatus);
    /*!
        Status of Threat prevention service/instance on NSG.
    */
    CPString _serviceStatus @accessors(property=serviceStatus);
    /*!
        VSD Configuration status for Threat Prevention service on NSG.
    */
    CPString _configurationStatus @accessors(property=configurationStatus);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"threatpreventioninfo";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"managementServerConnectionStatus"];
        [self exposeLocalKeyPathToREST:@"serviceStatus"];
        [self exposeLocalKeyPathToREST:@"configurationStatus"];
        
        
        
    }

    return self;
}

@end