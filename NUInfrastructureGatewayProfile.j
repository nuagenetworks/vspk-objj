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

NUInfrastructureGatewayProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructureGatewayProfileEntityScope_GLOBAL = @"GLOBAL";
NUInfrastructureGatewayProfileRemoteLogMode_DISABLED = @"DISABLED";
NUInfrastructureGatewayProfileRemoteLogMode_RSYSLOG = @"RSYSLOG";
NUInfrastructureGatewayProfileRemoteLogMode_SCP = @"SCP";
NUInfrastructureGatewayProfileRemoteLogMode_SFTP = @"SFTP";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_AND_UPGRADE_AT_WINDOW = @"DOWNLOAD_AND_UPGRADE_AT_WINDOW";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_AND_UPGRADE_NOW = @"DOWNLOAD_AND_UPGRADE_NOW";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_ONLY = @"DOWNLOAD_ONLY";
NUInfrastructureGatewayProfileUpgradeAction_NONE = @"NONE";
NUInfrastructureGatewayProfileUpgradeAction_UPGRADE_AT_BOOTSTRAPPING = @"UPGRADE_AT_BOOTSTRAPPING";
NUInfrastructureGatewayProfileUpgradeAction_UPGRADE_NOW = @"UPGRADE_NOW";


/*!
    Represents Infrastructure Gateway Profile
*/
@implementation NUInfrastructureGatewayProfile : NURESTObject
{
    /*!
        If set, this represents the security key for the Gateway to communicate with the NTP server (a VSC).
    */
    CPString _NTPServerKey @accessors(property=NTPServerKey);
    /*!
        Correspond to the key ID on the NTP server that matches the ntpServerKey value.  Valid values are from 1 to 255 as specified by SR-OS and 0 to specify unused (VSD/NSG only).
    */
    CPNumber _NTPServerKeyID @accessors(property=NTPServerKeyID);
    /*!
        Name of the Infrastructure Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Datapath flows sync-time-interval specified in milliseconds
    */
    CPNumber _datapathSyncTimeout @accessors(property=datapathSyncTimeout);
    /*!
        Time, in seconds, allowed for a Gateway to be inactive before the VSD revokes its certificates and marks it as untrusted.
    */
    CPString _deadTimer @accessors(property=deadTimer);
    /*!
        Flag to enable automatic deactivation.
    */
    BOOL _deadTimerEnabled @accessors(property=deadTimerEnabled);
    /*!
        Type of Log Server for system logs generated by Gateways associated with this Infrastructure Profile.
    */
    CPString _remoteLogMode @accessors(property=remoteLogMode);
    /*!
        Primary Log Server for system logs generated by Gateways associated with this Infrastructure Profile.  Can be an IP address or a URL.  This field is optional.
    */
    CPString _remoteLogServerAddress @accessors(property=remoteLogServerAddress);
    /*!
        Port to be used to access the Remote Syslog server.  By default, this is port 514.
    */
    CPNumber _remoteLogServerPort @accessors(property=remoteLogServerPort);
    /*!
        A description of the Profile instance created.
    */
    CPString _description @accessors(property=description);
    /*!
        Path/URL to retrieve the NSG Upgrade information meta data files.  From that meta data, the NSG will be able to retrieve the upgrade package files and perform some validations.  It is expected that the meta data file is in JSON format.  RFC 2616 states that there are no 'official' maximum length for a URL but different browsers and servers have limits.  Our friendly Internet Explorer has a maximum of 'around' 2048 characters, we shall use this as a limit here.
    */
    CPString _metadataUpgradePath @accessors(property=metadataUpgradePath);
    /*!
        Enterprise/Organisation associated with this Profile instance.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Duration for a controller-less operation (in ISO-duration format).
    */
    CPString _controllerLessDuration @accessors(property=controllerLessDuration);
    /*!
        Flag to enable controller-less operations.
    */
    BOOL _controllerLessEnabled @accessors(property=controllerLessEnabled);
    /*!
        Usually the synchronization will span across 1 hour window after the defined synchronization time. Forcing an immediate synchronization can overload the system and can have a negative impact on the system.
    */
    BOOL _forceImmediateSystemSync @accessors(property=forceImmediateSystemSync);
    /*!
        Upgrade action for NSG associated with this Infrastructure Gateway Profile instance.
    */
    CPString _upgradeAction @accessors(property=upgradeAction);
    /*!
        Proxy DNS Name :  DNS Name of the system acting as a proxy between the NSG instances and the VSD.
    */
    CPString _proxyDNSName @accessors(property=proxyDNSName);
    /*!
        Use Two Factor :  When set to true, the use of two independent authentication factors will be used to secure the installed NSG.  When set to false, there is an assumption that the NSG is being installed in a secure environment and the installer is also trusted.  The defaut value is true, using 2-factor.
    */
    BOOL _useTwoFactor @accessors(property=useTwoFactor);
    /*!
        The port to open by the proxy for stats collector to use
    */
    CPNumber _statsCollectorPort @accessors(property=statsCollectorPort);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Time in a Cron format when configuration update are being applied on the Gateway (NSG).  This property is linked to systemSyncWindow.  Default value is every midnight (0 0 * * *).  Format:  Minutes Hours DayOfMonth Month DayOfWeek
    */
    CPString _systemSyncScheduler @accessors(property=systemSyncScheduler);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"infrastructuregatewayprofile";
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
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"deadTimer"];
        [self exposeLocalKeyPathToREST:@"deadTimerEnabled"];
        [self exposeLocalKeyPathToREST:@"remoteLogMode"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerAddress"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerPort"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metadataUpgradePath"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"controllerLessDuration"];
        [self exposeLocalKeyPathToREST:@"controllerLessEnabled"];
        [self exposeLocalKeyPathToREST:@"forceImmediateSystemSync"];
        [self exposeLocalKeyPathToREST:@"upgradeAction"];
        [self exposeLocalKeyPathToREST:@"proxyDNSName"];
        [self exposeLocalKeyPathToREST:@"useTwoFactor"];
        [self exposeLocalKeyPathToREST:@"statsCollectorPort"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemSyncScheduler"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        _flowEvictionThreshold = 2500;
        _upgradeAction = @"NONE";
        _statsCollectorPort = 29090;
        _systemSyncScheduler = @"0 0 * * 0";
        _useTwoFactor = YES;
        _remoteLogMode = @"DISABLED";
        _datapathSyncTimeout = 1000;
        
    }

    return self;
}

@end