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

NUInfrastructureGatewayProfileDeadTimer_FIVE_HOURS = @"FIVE_HOURS";
NUInfrastructureGatewayProfileDeadTimer_FOUR_HOURS = @"FOUR_HOURS";
NUInfrastructureGatewayProfileDeadTimer_NONE = @"NONE";
NUInfrastructureGatewayProfileDeadTimer_ONE_HOUR = @"ONE_HOUR";
NUInfrastructureGatewayProfileDeadTimer_SIX_HOURS = @"SIX_HOURS";
NUInfrastructureGatewayProfileDeadTimer_TEN_MINUTES = @"TEN_MINUTES";
NUInfrastructureGatewayProfileDeadTimer_THIRTY_MINUTES = @"THIRTY_MINUTES";
NUInfrastructureGatewayProfileDeadTimer_THREE_HOURS = @"THREE_HOURS";
NUInfrastructureGatewayProfileDeadTimer_TWO_HOURS = @"TWO_HOURS";
NUInfrastructureGatewayProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructureGatewayProfileEntityScope_GLOBAL = @"GLOBAL";
NUInfrastructureGatewayProfileRemoteLogMode_DISABLED = @"DISABLED";
NUInfrastructureGatewayProfileRemoteLogMode_RSYSLOG = @"RSYSLOG";
NUInfrastructureGatewayProfileRemoteLogMode_SCP = @"SCP";
NUInfrastructureGatewayProfileRemoteLogMode_SFTP = @"SFTP";
NUInfrastructureGatewayProfileSystemSyncWindow_FIVE_HOURS = @"FIVE_HOURS";
NUInfrastructureGatewayProfileSystemSyncWindow_FOUR_HOURS = @"FOUR_HOURS";
NUInfrastructureGatewayProfileSystemSyncWindow_NONE = @"NONE";
NUInfrastructureGatewayProfileSystemSyncWindow_ONE_HOUR = @"ONE_HOUR";
NUInfrastructureGatewayProfileSystemSyncWindow_SIX_HOURS = @"SIX_HOURS";
NUInfrastructureGatewayProfileSystemSyncWindow_TEN_MINUTES = @"TEN_MINUTES";
NUInfrastructureGatewayProfileSystemSyncWindow_THIRTY_MINUTES = @"THIRTY_MINUTES";
NUInfrastructureGatewayProfileSystemSyncWindow_THREE_HOURS = @"THREE_HOURS";
NUInfrastructureGatewayProfileSystemSyncWindow_TWO_HOURS = @"TWO_HOURS";
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
        Duration for a controller-less operation (in ISO-duration format).
    */
    CPString _controllerLessDuration @accessors(property=controllerLessDuration);
    /*!
        Datapath flows sync-time-interval specified in milliseconds (default: 1000)
    */
    CPNumber _datapathSyncTimeout @accessors(property=datapathSyncTimeout);
    /*!
        Time, in seconds, allowed for a Gateway to be inactive before the VSD revokes its certificates and marks it as untrusted.
    */
    CPString _deadTimer @accessors(property=deadTimer);
    /*!
        A description of the Profile instance created.
    */
    CPString _description @accessors(property=description);
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
        Number of flows at which eviction from kernel flow table will be triggered (default: 2500)
    */
    CPNumber _flowEvictionThreshold @accessors(property=flowEvictionThreshold);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Path/URL to retrieve the NSG Upgrade information meta data files.  From that meta data, the NSG will be able to retrieve the upgrade package files and perform some validations.  It is expected that the meta data file is in JSON format.  RFC 2616 states that there are no 'official' maximum length for a URL but different browsers and servers have limits.  Our friendly Internet Explorer has a maximum of 'around' 2048 characters, we shall use this as a limit here.
    */
    CPString _metadataUpgradePath @accessors(property=metadataUpgradePath);
    /*!
        Name of the Infrastructure Profile
    */
    CPString _name @accessors(property=name);
    /*!
        Proxy DNS Name :  DNS Name of the system acting as a proxy between the NSG instances and the VSD.
    */
    CPString _proxyDNSName @accessors(property=proxyDNSName);
    /*!
        Path on the remote log server where the logs generated by the NSG are to be stored.  This field is only useful for SCP and SFTP.
    */
    CPString _remoteLogDirPath @accessors(property=remoteLogDirPath);
    /*!
        Type of Log Server for system logs generated by Gateways associated with this Infrastructure Profile.
    */
    CPString _remoteLogMode @accessors(property=remoteLogMode);
    /*!
        Password to be used when accessing the remote log server via SCP or SFTP.  This field is only useful for SCP and SFTP.
    */
    CPString _remoteLogPassword @accessors(property=remoteLogPassword);
    /*!
        Primary Log Server for system logs generated by Gateways associated with this Infrastructure Profile.  Can be an IP address or a URL.  This field is optional.
    */
    CPString _remoteLogServerAddress @accessors(property=remoteLogServerAddress);
    /*!
        Port to be used to access the Remote Syslog server.  By default, this is port 514.
    */
    CPNumber _remoteLogServerPort @accessors(property=remoteLogServerPort);
    /*!
        Username to be used when accessing the remote log server via SCP or SFTP.  This field is only useful for SCP and SFTP.
    */
    CPString _remoteLogUsername @accessors(property=remoteLogUsername);
    /*!
        The port to open by the proxy for stats collector to use
    */
    CPNumber _statsCollectorPort @accessors(property=statsCollectorPort);
    /*!
        Time in a Cron format when configuration update are being applied on the Gateway (NSG).  This property is linked to systemSyncWindow.  Default value is every midnight (0 0 * * *).  Format:  Minutes Hours DayOfMonth Month DayOfWeek
    */
    CPString _systemSyncScheduler @accessors(property=systemSyncScheduler);
    /*!
        Length of time, in seconds, given to a Gateway to apply a configuration change.  This property is closely linked to systemSyncScheduler.
    */
    CPString _systemSyncWindow @accessors(property=systemSyncWindow);
    /*!
        Upgrade action for NSG associated with this Infrastructure Gateway Profile instance.
    */
    CPString _upgradeAction @accessors(property=upgradeAction);
    /*!
        Use Two Factor :  When set to true, the use of two independent authentication factors will be used to secure the installed NSG.  When set to false, there is an assumption that the NSG is being installed in a secure environment and the installer is also trusted.  The defaut value is true, using 2-factor.
    */
    BOOL _useTwoFactor @accessors(property=useTwoFactor);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"controllerLessDuration"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"deadTimer"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"metadataUpgradePath"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"proxyDNSName"];
        [self exposeLocalKeyPathToREST:@"remoteLogDirPath"];
        [self exposeLocalKeyPathToREST:@"remoteLogMode"];
        [self exposeLocalKeyPathToREST:@"remoteLogPassword"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerAddress"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerPort"];
        [self exposeLocalKeyPathToREST:@"remoteLogUsername"];
        [self exposeLocalKeyPathToREST:@"statsCollectorPort"];
        [self exposeLocalKeyPathToREST:@"systemSyncScheduler"];
        [self exposeLocalKeyPathToREST:@"systemSyncWindow"];
        [self exposeLocalKeyPathToREST:@"upgradeAction"];
        [self exposeLocalKeyPathToREST:@"useTwoFactor"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
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