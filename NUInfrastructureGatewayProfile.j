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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUInfrastructureGatewayProfileControllerLessForwardingMode_DISABLED = @"DISABLED";
NUInfrastructureGatewayProfileControllerLessForwardingMode_LOCAL_AND_REMOTE = @"LOCAL_AND_REMOTE";
NUInfrastructureGatewayProfileControllerLessForwardingMode_LOCAL_ONLY = @"LOCAL_ONLY";
NUInfrastructureGatewayProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructureGatewayProfileEntityScope_GLOBAL = @"GLOBAL";
NUInfrastructureGatewayProfileRemoteLogMode_DISABLED = @"DISABLED";
NUInfrastructureGatewayProfileRemoteLogMode_RSYSLOG = @"RSYSLOG";
NUInfrastructureGatewayProfileUnderlayTestUplinkMode_ALL_UPLINKS = @"ALL_UPLINKS";
NUInfrastructureGatewayProfileUnderlayTestUplinkMode_BOOTSTRAP_UPLINK = @"BOOTSTRAP_UPLINK";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_AND_UPGRADE_AT_WINDOW = @"DOWNLOAD_AND_UPGRADE_AT_WINDOW";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_AND_UPGRADE_NOW = @"DOWNLOAD_AND_UPGRADE_NOW";
NUInfrastructureGatewayProfileUpgradeAction_DOWNLOAD_ONLY = @"DOWNLOAD_ONLY";
NUInfrastructureGatewayProfileUpgradeAction_NONE = @"NONE";
NUInfrastructureGatewayProfileUpgradeAction_UPGRADE_AT_BOOTSTRAPPING = @"UPGRADE_AT_BOOTSTRAPPING";
NUInfrastructureGatewayProfileUpgradeAction_UPGRADE_NOW = @"UPGRADE_NOW";


/*!
    Infrastructure Gateway Profiles are gateway-level platform attributes inherited by gateways as they are instantiated, connecting them to Nuage management infrastructure.
*/
@implementation NUInfrastructureGatewayProfile : NURESTObject
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
        Name of the Infrastructure Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Datapath flows sync-time-interval specified in milliseconds
    */
    CPNumber _datapathSyncTimeout @accessors(property=datapathSyncTimeout);
    /*!
        ISO 8601 format duration: **PnYnMnD T nHnMnS**. **P** represents the period field and **T** the time field. Period field: **Y** = year, **M** = month, **D** = day. Time field: **H** = hours, **M** = minutes, **S** = seconds. **n** is the value of each field. Because the years and month are units that vary in length, for the time being those are not supported yet.
    */
    CPString _deadTimer @accessors(property=deadTimer);
    /*!
        Flag to enable the functionlity where VSD will automatically place an NSG into a quarantine state if it is no longer being reported by VSC nodes for a specified period.
    */
    BOOL _deadTimerEnabled @accessors(property=deadTimerEnabled);
    /*!
        The port to be opened by the proxy for webfilter update database
    */
    CPNumber _webFilterDownloadPort @accessors(property=webFilterDownloadPort);
    /*!
        The port to be opened by the proxy for webfilter category query request
    */
    CPNumber _webFilterQueryPort @accessors(property=webFilterQueryPort);
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
        Number of flows at which eviction from kernel flow table will be triggered (default: 2500)
    */
    CPNumber _flowEvictionThreshold @accessors(property=flowEvictionThreshold);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Enables underlay tests during gateway activation. Underlay tests will cause the bootstrapping operation to be about two minutes longer.
    */
    BOOL _enableUnderlayTestsDuringActivation @accessors(property=enableUnderlayTestsDuringActivation);
    /*!
        Underlay Test Server (FQDN or IP Address). Required when the Underlay test at bootstrap feature is enabled or to allow On-Demand tests to be run.
    */
    CPString _underlayTestServer @accessors(property=underlayTestServer);
    /*!
        Enumerator to describe which uplinks to run underlay tests on during bootstrap
    */
    CPString _underlayTestUplinkMode @accessors(property=underlayTestUplinkMode);
    /*!
        Enterprise/Organisation associated with this Profile instance.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Duration for a controller-less local operation (in ISO-duration format).
    */
    CPString _controllerLessDuration @accessors(property=controllerLessDuration);
    /*!
        Flag to enable controller-less operations
    */
    BOOL _controllerLessEnabled @accessors(property=controllerLessEnabled);
    /*!
        The forwarding mode to use for controllerLess operations
    */
    CPString _controllerLessForwardingMode @accessors(property=controllerLessForwardingMode);
    /*!
        Duration for a controller-less remote operation (in ISO-duration format).
    */
    CPString _controllerLessRemoteDuration @accessors(property=controllerLessRemoteDuration);
    /*!
        Usually the synchronization will span across 1 hour window after the defined synchronization time. Forcing an immediate synchronization can overload the system and can have a negative impact on the system.
    */
    BOOL _forceImmediateSystemSync @accessors(property=forceImmediateSystemSync);
    /*!
        Openflow audit timer in seconds. Upon the expiry of this timer a set of cleanup operations will be performed
    */
    CPNumber _openFlowAuditTimer @accessors(property=openFlowAuditTimer);
    /*!
        Upgrade action for NSG associated with this Infrastructure Gateway Profile instance.
    */
    CPString _upgradeAction @accessors(property=upgradeAction);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Proxy DNS Name :  DNS Name of the system acting as a proxy between the NSG instances and the VSD.
    */
    CPString _proxyDNSName @accessors(property=proxyDNSName);
    /*!
        Use Two Factor :  When set to true, the use of two independent authentication factors will be used to secure the installed NSG.  When set to false, there is an assumption that the NSG is being installed in a secure environment and the installer is also trusted.  The defaut value is true, using 2-factor.
    */
    BOOL _useTwoFactor @accessors(property=useTwoFactor);
    /*!
        The port to open by the proxy for the statistics collector to use.
    */
    CPNumber _statsCollectorPort @accessors(property=statsCollectorPort);
    /*!
        Run the underlay bandwidth test during activation. Will only have an effect if the Underlay tests at bootstrap are enabled.
    */
    BOOL _runUnderlayBandwidthTest @accessors(property=runUnderlayBandwidthTest);
    /*!
        Run the underlay connectivity test during activation. Will only have an effect if the Underlay tests at bootstrap are enabled.
    */
    BOOL _runUnderlayConnectivityTest @accessors(property=runUnderlayConnectivityTest);
    /*!
        Run the underlay MTU discovery test during activation. Will only have an effect if the Underlay tests at bootstrap are enabled.
    */
    BOOL _runUnderlayMTUDiscoveryTest @accessors(property=runUnderlayMTUDiscoveryTest);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Time, in a Cron format, when configuration updates are being applied on the Gateway (NSG).  This property is linked to systemSyncWindow.  Default value is every midnight (0 0 * * *).  Format:  Minutes Hours DayOfMonth Month DayOfWeek
    */
    CPString _systemSyncScheduler @accessors(property=systemSyncScheduler);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
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
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"datapathSyncTimeout"];
        [self exposeLocalKeyPathToREST:@"deadTimer"];
        [self exposeLocalKeyPathToREST:@"deadTimerEnabled"];
        [self exposeLocalKeyPathToREST:@"webFilterDownloadPort"];
        [self exposeLocalKeyPathToREST:@"webFilterQueryPort"];
        [self exposeLocalKeyPathToREST:@"remoteLogMode"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerAddress"];
        [self exposeLocalKeyPathToREST:@"remoteLogServerPort"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metadataUpgradePath"];
        [self exposeLocalKeyPathToREST:@"flowEvictionThreshold"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enableUnderlayTestsDuringActivation"];
        [self exposeLocalKeyPathToREST:@"underlayTestServer"];
        [self exposeLocalKeyPathToREST:@"underlayTestUplinkMode"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"controllerLessDuration"];
        [self exposeLocalKeyPathToREST:@"controllerLessEnabled"];
        [self exposeLocalKeyPathToREST:@"controllerLessForwardingMode"];
        [self exposeLocalKeyPathToREST:@"controllerLessRemoteDuration"];
        [self exposeLocalKeyPathToREST:@"forceImmediateSystemSync"];
        [self exposeLocalKeyPathToREST:@"openFlowAuditTimer"];
        [self exposeLocalKeyPathToREST:@"upgradeAction"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"proxyDNSName"];
        [self exposeLocalKeyPathToREST:@"useTwoFactor"];
        [self exposeLocalKeyPathToREST:@"statsCollectorPort"];
        [self exposeLocalKeyPathToREST:@"runUnderlayBandwidthTest"];
        [self exposeLocalKeyPathToREST:@"runUnderlayConnectivityTest"];
        [self exposeLocalKeyPathToREST:@"runUnderlayMTUDiscoveryTest"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemSyncScheduler"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
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