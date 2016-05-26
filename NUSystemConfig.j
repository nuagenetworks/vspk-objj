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

NUSystemConfigDomainTunnelType_DC_DEFAULT = @"DC_DEFAULT";
NUSystemConfigDomainTunnelType_GRE = @"GRE";
NUSystemConfigDomainTunnelType_VXLAN = @"VXLAN";
NUSystemConfigEntityScope_ENTERPRISE = @"ENTERPRISE";
NUSystemConfigEntityScope_GLOBAL = @"GLOBAL";
NUSystemConfigGroupKeyDefaultSEKPayloadEncryptionAlgorithm_RSA_1024 = @"RSA_1024";
NUSystemConfigGroupKeyDefaultSEKPayloadSigningAlgorithm_SHA1WITHRSA = @"SHA1withRSA";
NUSystemConfigGroupKeyDefaultSEKPayloadSigningAlgorithm_SHA224WITHRSA = @"SHA224withRSA";
NUSystemConfigGroupKeyDefaultSEKPayloadSigningAlgorithm_SHA256WITHRSA = @"SHA256withRSA";
NUSystemConfigGroupKeyDefaultSEKPayloadSigningAlgorithm_SHA384WITHRSA = @"SHA384withRSA";
NUSystemConfigGroupKeyDefaultSEKPayloadSigningAlgorithm_SHA512WITHRSA = @"SHA512withRSA";
NUSystemConfigGroupKeyDefaultSeedPayloadAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUSystemConfigGroupKeyDefaultSeedPayloadAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUSystemConfigGroupKeyDefaultSeedPayloadAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUSystemConfigGroupKeyDefaultSeedPayloadEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUSystemConfigGroupKeyDefaultSeedPayloadEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUSystemConfigGroupKeyDefaultSeedPayloadEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";
NUSystemConfigGroupKeyDefaultSeedPayloadSigningAlgorithm_SHA1WITHRSA = @"SHA1withRSA";
NUSystemConfigGroupKeyDefaultSeedPayloadSigningAlgorithm_SHA224WITHRSA = @"SHA224withRSA";
NUSystemConfigGroupKeyDefaultSeedPayloadSigningAlgorithm_SHA256WITHRSA = @"SHA256withRSA";
NUSystemConfigGroupKeyDefaultSeedPayloadSigningAlgorithm_SHA384WITHRSA = @"SHA384withRSA";
NUSystemConfigGroupKeyDefaultSeedPayloadSigningAlgorithm_SHA512WITHRSA = @"SHA512withRSA";
NUSystemConfigGroupKeyDefaultTrafficAuthenticationAlgorithm_HMAC_MD5 = @"HMAC_MD5";
NUSystemConfigGroupKeyDefaultTrafficAuthenticationAlgorithm_HMAC_SHA1 = @"HMAC_SHA1";
NUSystemConfigGroupKeyDefaultTrafficAuthenticationAlgorithm_HMAC_SHA256 = @"HMAC_SHA256";
NUSystemConfigGroupKeyDefaultTrafficAuthenticationAlgorithm_HMAC_SHA384 = @"HMAC_SHA384";
NUSystemConfigGroupKeyDefaultTrafficAuthenticationAlgorithm_HMAC_SHA512 = @"HMAC_SHA512";
NUSystemConfigGroupKeyDefaultTrafficEncryptionAlgorithm_AES_128_CBC = @"AES_128_CBC";
NUSystemConfigGroupKeyDefaultTrafficEncryptionAlgorithm_AES_192_CBC = @"AES_192_CBC";
NUSystemConfigGroupKeyDefaultTrafficEncryptionAlgorithm_AES_256_CBC = @"AES_256_CBC";
NUSystemConfigGroupKeyDefaultTrafficEncryptionAlgorithm_TRIPLE_DES_CBC = @"TRIPLE_DES_CBC";
NUSystemConfigSystemAvatarType_BASE64 = @"BASE64";
NUSystemConfigSystemAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUSystemConfigSystemAvatarType_URL = @"URL";


/*!
    The system configuration which can be dynamically managed using rest api.
*/
@implementation NUSystemConfig : NURESTObject
{
    /*!
        Defines the domains allowed for access control list.
    */
    CPString _ACLAllowOrigin @accessors(property=ACLAllowOrigin);
    /*!
        System Default Equal-cost multi-path routing count,Every Domain derives ECMP count from this value unless specifically set for the domain
    */
    CPNumber _ECMPCount @accessors(property=ECMPCount);
    /*!
        LDAP Sync-Up task interval in seconds.
    */
    CPNumber _LDAPSyncInterval @accessors(property=LDAPSyncInterval);
    /*!
        Location of the truststore which is need to store LDAP server certificates. Default is cacerts located in java.home/lib/security/cacerts. Uncomment below setting if you need to use a different file
    */
    CPString _LDAPTrustStoreCertifcate @accessors(property=LDAPTrustStoreCertifcate);
    /*!
        Password to access the truststore. Uncomment below line to change its value.
    */
    CPString _LDAPTrustStorePassword @accessors(property=LDAPTrustStorePassword);
    /*!
        Timers in sec for undefined vms to be deleted(min =7200, max = 86400).
    */
    CPNumber _ADGatewayPurgeTime @accessors(property=ADGatewayPurgeTime);
    /*!
        route distinguisher lower limit
    */
    CPNumber _RDLowerLimit @accessors(property=RDLowerLimit);
    /*!
        route distinguisher public network lower limit
    */
    CPNumber _RDPublicNetworkLowerLimit @accessors(property=RDPublicNetworkLowerLimit);
    /*!
        route distinguisher public network upper limit
    */
    CPNumber _RDPublicNetworkUpperLimit @accessors(property=RDPublicNetworkUpperLimit);
    /*!
        route distinguisher upper limit
    */
    CPNumber _RDUpperLimit @accessors(property=RDUpperLimit);
    /*!
        Defines total DHCP options that can be set on a domain.
    */
    CPNumber _DHCPOptionSize @accessors(property=DHCPOptionSize);
    /*!
        LRU Map size for vm, this value has to set based on memory given to VSD jvm not finalized.
    */
    CPNumber _VMCacheSize @accessors(property=VMCacheSize);
    /*!
        Timers in sec for undefined vms to be deleted.
    */
    CPNumber _VMPurgeTime @accessors(property=VMPurgeTime);
    /*!
        After resync on vm , if no controller returns with a VM request with in the below timeframe then it will get deleted deletion wait time in minutes.
    */
    CPNumber _VMResyncDeletionWaitTime @accessors(property=VMResyncDeletionWaitTime);
    /*!
        Outstanding VM resync interval (in secs). System wide value.
    */
    CPNumber _VMResyncOutstandingInterval @accessors(property=VMResyncOutstandingInterval);
    /*!
        Timers in sec for unreachable VMs for cleanup.
    */
    CPNumber _VMUnreachableCleanupTime @accessors(property=VMUnreachableCleanupTime);
    /*!
        Timers in sec for unreachable VMs.
    */
    CPNumber _VMUnreachableTime @accessors(property=VMUnreachableTime);
    /*!
        Virtual network ID offset
    */
    CPNumber _VNIDLowerLimit @accessors(property=VNIDLowerLimit);
    /*!
        Virtual network ID public network lower limit
    */
    CPNumber _VNIDPublicNetworkLowerLimit @accessors(property=VNIDPublicNetworkLowerLimit);
    /*!
        Virtual network ID public network upper limit
    */
    CPNumber _VNIDPublicNetworkUpperLimit @accessors(property=VNIDPublicNetworkUpperLimit);
    /*!
        Virtual network ID upper limit
    */
    CPNumber _VNIDUpperLimit @accessors(property=VNIDUpperLimit);
    /*!
        Defines the interval in seconds, before the expiry time, that can used to renew the apiKey by making me API call. Minimum value is 1 min and maximum is 5 min.
    */
    CPNumber _APIKeyRenewalInterval @accessors(property=APIKeyRenewalInterval);
    /*!
        Defines the apiKey validity duration in seconds. Default is 24 hours and minimum value is 10 min.
    */
    CPNumber _APIKeyValidity @accessors(property=APIKeyValidity);
    /*!
        Defines the timeout in seconds for vport initialization to stateful. Default value is 300 secs and the timeout should be between 0 to 86400 seconds.
    */
    CPNumber _VPortInitStatefulTimer @accessors(property=VPortInitStatefulTimer);
    /*!
        LRU Map size per subnet (to hold the deleted vm's ip addresses).
    */
    CPNumber _LRUCacheSizePerSubnet @accessors(property=LRUCacheSizePerSubnet);
    /*!
        This flag is used to indicate that whether VSC is on the same version as VSD or not.
    */
    BOOL _VSCOnSameVersionAsVSD @accessors(property=VSCOnSameVersionAsVSD);
    /*!
        True means VSD readonly mode enabled. False means VSD readonly mode disabled
    */
    BOOL _VSDReadOnlyMode @accessors(property=VSDReadOnlyMode);
    /*!
        This flag is used to indicate that whether VSD upgrade is complete,it is expected that csproot will set to true,after VSD upgrade is complete and also making sure that all VSC's audits and Gateway audits with VSD are done
    */
    BOOL _VSDUpgradeIsComplete @accessors(property=VSDUpgradeIsComplete);
    /*!
         Autonomous System Number,Used for RT/RD auto-generation
    */
    CPNumber _ASNumber @accessors(property=ASNumber);
    /*!
        route target lower limit
    */
    CPNumber _RTLowerLimit @accessors(property=RTLowerLimit);
    /*!
        route target public network lower limit
    */
    CPNumber _RTPublicNetworkLowerLimit @accessors(property=RTPublicNetworkLowerLimit);
    /*!
        route target public network upper limit
    */
    CPNumber _RTPublicNetworkUpperLimit @accessors(property=RTPublicNetworkUpperLimit);
    /*!
        route target upper limit
    */
    CPNumber _RTUpperLimit @accessors(property=RTUpperLimit);
    /*!
        Autonomous System Number,Used for EVPNBGPCommunityTag auto-generation
    */
    CPNumber _EVPNBGPCommunityTagASNumber @accessors(property=EVPNBGPCommunityTagASNumber);
    /*!
        EVPNBGPCommunityTag lower limit
    */
    CPNumber _EVPNBGPCommunityTagLowerLimit @accessors(property=EVPNBGPCommunityTagLowerLimit);
    /*!
        EVPNBGPCommunityTag upper limit
    */
    CPNumber _EVPNBGPCommunityTagUpperLimit @accessors(property=EVPNBGPCommunityTagUpperLimit);
    /*!
        Defines upper bound for the page size. Configured or input page size should be less than this max page size.
    */
    CPNumber _pageMaxSize @accessors(property=pageMaxSize);
    /*!
        Defines the page size for the results returned by the REST call.
    */
    CPNumber _pageSize @accessors(property=pageSize);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Maximum failed login attempts before the account is locked (min = 5, max = 10). 0 = not enforced (unlimited attempts). This is not enforced if LDAP is used for authorization
    */
    CPNumber _maxFailedLogins @accessors(property=maxFailedLogins);
    /*!
        Defines maximum results returned by the REST call (allowed max=5000).
    */
    CPNumber _maxResponse @accessors(property=maxResponse);
    /*!
        Service id upper limit system wide value
    */
    CPNumber _serviceIDUpperLimit @accessors(property=serviceIDUpperLimit);
    /*!
        Enable the keyserver debug monitor (ie. ksmon command)
    */
    BOOL _keyServerMonitorEnabled @accessors(property=keyServerMonitorEnabled);
    /*!
        KeyServer time in seconds between full resyncs of VSD data (just in case of missed events)
    */
    CPNumber _keyServerVSDDataSynchronizationInterval @accessors(property=keyServerVSDDataSynchronizationInterval);
    /*!
        Customer id offset, this value has to be set before jboss starts , after that any change of value is ignored (minexclusive = 0, max = 20000) system wide value
    */
    CPNumber _offsetCustomerID @accessors(property=offsetCustomerID);
    /*!
        Service id offset, this value has to be set before jboss starts during install time, after that any change of value is ignored (minexclusive = 0, max = 40000) system wide value
    */
    CPNumber _offsetServiceID @accessors(property=offsetServiceID);
    /*!
        EJBCA NSG Certificate Profile
    */
    CPString _ejbcaNSGCertificateProfile @accessors(property=ejbcaNSGCertificateProfile);
    /*!
        EJBCA NSG End Entity Profile
    */
    CPString _ejbcaNSGEndEntityProfile @accessors(property=ejbcaNSGEndEntityProfile);
    /*!
        EJBCA OCSP Responder CommonName
    */
    CPString _ejbcaOCSPResponderCN @accessors(property=ejbcaOCSPResponderCN);
    /*!
        EJBCA OCSP Responder URI
    */
    CPString _ejbcaOCSPResponderURI @accessors(property=ejbcaOCSPResponderURI);
    /*!
        EJBCA VSP CA
    */
    CPString _ejbcaVspRootCa @accessors(property=ejbcaVspRootCa);
    /*!
        Maximum alarms per object for example max distinct alarms for specific VM (min = 5, max =20)
    */
    CPNumber _alarmsMaxPerObject @accessors(property=alarmsMaxPerObject);
    /*!
        Allow Enterprise Avatar to be populated on NSG Portal
    */
    BOOL _allowEnterpriseAvatarOnNSG @accessors(property=allowEnterpriseAvatarOnNSG);
    /*!
        Defines the inactive timeout for the client. If the client is inactive for more than timeout, server clears off all the cache/information regarding the client. This value should be greater than event processor max timeout
    */
    CPNumber _inactiveTimeout @accessors(property=inactiveTimeout);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Default Domain Tunnel Type .Possible values are VXLAN,GRE Possible values are DC_DEFAULT, GRE, VXLAN, .
    */
    CPString _domainTunnelType @accessors(property=domainTunnelType);
    /*!
        Post processor thread count.
    */
    CPNumber _postProcessorThreadsCount @accessors(property=postProcessorThreadsCount);
    /*!
        Group Key Encryption Profile Default SEK Generation Interval
    */
    CPNumber _groupKeyDefaultSEKGenerationInterval @accessors(property=groupKeyDefaultSEKGenerationInterval);
    /*!
        Group Key Encryption Profile Default SEK Lifetime
    */
    CPNumber _groupKeyDefaultSEKLifetime @accessors(property=groupKeyDefaultSEKLifetime);
    /*!
        Group Key Encryption Profile Default Sek Payload Encryption Algorithm.
    */
    CPString _groupKeyDefaultSEKPayloadEncryptionAlgorithm @accessors(property=groupKeyDefaultSEKPayloadEncryptionAlgorithm);
    /*!
        Group Key Encryption Profile Default Sek Payload Signing Algorithm.
    */
    CPString _groupKeyDefaultSEKPayloadSigningAlgorithm @accessors(property=groupKeyDefaultSEKPayloadSigningAlgorithm);
    /*!
        Group Key Encryption Profile Default Seed Generation Interval
    */
    CPNumber _groupKeyDefaultSeedGenerationInterval @accessors(property=groupKeyDefaultSeedGenerationInterval);
    /*!
        Group Key Encryption Profile Default Seed Lifetime
    */
    CPNumber _groupKeyDefaultSeedLifetime @accessors(property=groupKeyDefaultSeedLifetime);
    /*!
        Group Key Encryption Profile Default Seed Payload Authentication Algorithm.
    */
    CPString _groupKeyDefaultSeedPayloadAuthenticationAlgorithm @accessors(property=groupKeyDefaultSeedPayloadAuthenticationAlgorithm);
    /*!
        Group Key Encryption Profile Default Seed Payload Encryption Algorithm.
    */
    CPString _groupKeyDefaultSeedPayloadEncryptionAlgorithm @accessors(property=groupKeyDefaultSeedPayloadEncryptionAlgorithm);
    /*!
        Group Key Encryption Profile Default Seed Payload Signature Algorithm.
    */
    CPString _groupKeyDefaultSeedPayloadSigningAlgorithm @accessors(property=groupKeyDefaultSeedPayloadSigningAlgorithm);
    /*!
        Group Key Encryption Profile Default Traffic Authentication Algorithm.
    */
    CPString _groupKeyDefaultTrafficAuthenticationAlgorithm @accessors(property=groupKeyDefaultTrafficAuthenticationAlgorithm);
    /*!
        Group Key Encryption Profile Default Traffic Encryption Algorithm.
    */
    CPString _groupKeyDefaultTrafficEncryptionAlgorithm @accessors(property=groupKeyDefaultTrafficEncryptionAlgorithm);
    /*!
        Group Key Encryption Profile Default Traffic Encryption Key Lifetime
    */
    CPNumber _groupKeyDefaultTrafficEncryptionKeyLifetime @accessors(property=groupKeyDefaultTrafficEncryptionKeyLifetime);
    /*!
        Time in seconds before new keys will be generated in the case of a forced re-key event
    */
    CPNumber _groupKeyGenerationIntervalOnForcedReKey @accessors(property=groupKeyGenerationIntervalOnForcedReKey);
    /*!
        Time in seconds before new keys will be generated in the case of a revoke event
    */
    CPNumber _groupKeyGenerationIntervalOnRevoke @accessors(property=groupKeyGenerationIntervalOnRevoke);
    /*!
        Group Key Encryption Profile Minimum SEK Generation Interval
    */
    CPNumber _groupKeyMinimumSEKGenerationInterval @accessors(property=groupKeyMinimumSEKGenerationInterval);
    /*!
        Group Key Encryption Profile Minimum SEK Lifetime
    */
    CPNumber _groupKeyMinimumSEKLifetime @accessors(property=groupKeyMinimumSEKLifetime);
    /*!
        Group Key Encryption Profile Default Seed Generation Interval
    */
    CPNumber _groupKeyMinimumSeedGenerationInterval @accessors(property=groupKeyMinimumSeedGenerationInterval);
    /*!
        Group Key Encryption Profile Default Seed Lifetime
    */
    CPNumber _groupKeyMinimumSeedLifetime @accessors(property=groupKeyMinimumSeedLifetime);
    /*!
        Group Key Encryption Profile Minimum TEK Lifetime
    */
    CPNumber _groupKeyMinimumTrafficEncryptionKeyLifetime @accessors(property=groupKeyMinimumTrafficEncryptionKeyLifetime);
    /*!
        NSG Bootstrap Endpoint
    */
    CPString _nsgBootstrapEndpoint @accessors(property=nsgBootstrapEndpoint);
    /*!
        NSG Config Endpoint
    */
    CPString _nsgConfigEndpoint @accessors(property=nsgConfigEndpoint);
    /*!
        NSG Local UI URL - will be redirected on NSG to localhost
    */
    CPString _nsgLocalUiUrl @accessors(property=nsgLocalUiUrl);
    /*!
        ESI ID offset
    */
    CPNumber _esiID @accessors(property=esiID);
    /*!
        True to enable stacktrace in the REST call.
    */
    BOOL _stackTraceEnabled @accessors(property=stackTraceEnabled);
    /*!
        Defines the timeout in seconds for stateful ACLs that are not of type TCP.
    */
    CPNumber _statefulACLNonTCPTimeout @accessors(property=statefulACLNonTCPTimeout);
    /*!
        Defines the timeout in seconds for stateful ACLs that are of type TCP.
    */
    CPNumber _statefulACLTCPTimeout @accessors(property=statefulACLTCPTimeout);
    /*!
        Timers in sec for unreacheable static WAN Services to be deleted.
    */
    CPNumber _staticWANServicePurgeTime @accessors(property=staticWANServicePurgeTime);
    /*!
        Specify the ip address(es) of the stats collector.
    */
    CPString _statsCollectorAddress @accessors(property=statsCollectorAddress);
    /*!
        Specify the port number(s) of the stats collector.
    */
    CPString _statsCollectorPort @accessors(property=statsCollectorPort);
    /*!
        Specify the protobuf port number(s) of the stats collector.
    */
    CPString _statsCollectorProtoBufPort @accessors(property=statsCollectorProtoBufPort);
    /*!
        Specifies the maximum number of data points to support.
    */
    CPNumber _statsMaxDataPoints @accessors(property=statsMaxDataPoints);
    /*!
        Default minimum duration for statistics to be displayed in UI is 30 days in seconds.
    */
    CPNumber _statsMinDuration @accessors(property=statsMinDuration);
    /*!
        Specifies number of data points.
    */
    CPNumber _statsNumberOfDataPoints @accessors(property=statsNumberOfDataPoints);
    /*!
        Specifies the TSDB server location.
    */
    CPString _statsTSDBServerAddress @accessors(property=statsTSDBServerAddress);
    /*!
        After resync on a subnet , another resync on the same subnet is allowed based on the below value subnet resync complete wait time in min.
    */
    CPNumber _subnetResyncInterval @accessors(property=subnetResyncInterval);
    /*!
        Outstanding subnet resync interval (in secs). System wide value.
    */
    CPNumber _subnetResyncOutstandingInterval @accessors(property=subnetResyncOutstandingInterval);
    /*!
        Customer id upper limit, system wide value
    */
    CPNumber _customerIDUpperLimit @accessors(property=customerIDUpperLimit);
    /*!
        Customer key associated with the licese
    */
    CPString _customerKey @accessors(property=customerKey);
    /*!
        Defines location where image files needs to be copied. Above URL should be configured to read the file from this location.
    */
    CPString _avatarBasePath @accessors(property=avatarBasePath);
    /*!
        Defines the url to read the avatar image files
    */
    CPString _avatarBaseURL @accessors(property=avatarBaseURL);
    /*!
        Cleanup task run interval in seconds.
    */
    CPNumber _eventLogCleanupInterval @accessors(property=eventLogCleanupInterval);
    /*!
        Maximum age in days for cleanup of the eventlog entries. On every periodic interval run, any eventlog entries older than this max age will be deleted.
    */
    CPNumber _eventLogEntryMaxAge @accessors(property=eventLogEntryMaxAge);
    /*!
        Defines time interval in milliseconds when events collected for a client should be processed.
    */
    CPNumber _eventProcessorInterval @accessors(property=eventProcessorInterval);
    /*!
        Defines the maximum number of events to be collected in case of events burst.
    */
    CPNumber _eventProcessorMaxEventsCount @accessors(property=eventProcessorMaxEventsCount);
    /*!
        Defines the maximum time period in milliseconds for the Rest server to wait before sending the events from the system.
    */
    CPNumber _eventProcessorTimeout @accessors(property=eventProcessorTimeout);
    /*!
        Two Factor Code Expiry in Seconds
    */
    CPNumber _twoFactorCodeExpiry @accessors(property=twoFactorCodeExpiry);
    /*!
        Two Factor Code Length
    */
    CPNumber _twoFactorCodeLength @accessors(property=twoFactorCodeLength);
    /*!
        Two Factor Seed length in bytes
    */
    CPNumber _twoFactorCodeSeedLength @accessors(property=twoFactorCodeSeedLength);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Timers in sec for  dynamic WAN Services to be considered not seen by 7X50.
    */
    CPNumber _dynamicWANServiceDiffTime @accessors(property=dynamicWANServiceDiffTime);
    /*!
        Specifies the remote syslog destination host
    */
    CPString _syslogDestinationHost @accessors(property=syslogDestinationHost);
    /*!
        Specified the remote syslog destination port
    */
    CPNumber _syslogDestinationPort @accessors(property=syslogDestinationPort);
    /*!
        Sysmon cleanup task run interval in seconds.
    */
    CPNumber _sysmonCleanupTaskInterval @accessors(property=sysmonCleanupTaskInterval);
    /*!
        Node presence timeout in seconds if no messages.
    */
    CPNumber _sysmonNodePresenceTimeout @accessors(property=sysmonNodePresenceTimeout);
    /*!
        Probe response timeout in seconds.
    */
    CPNumber _sysmonProbeResponseTimeout @accessors(property=sysmonProbeResponseTimeout);
    /*!
        CSP Avatar Data
    */
    CPString _systemAvatarData @accessors(property=systemAvatarData);
    /*!
        None
    */
    CPString _systemAvatarType @accessors(property=systemAvatarType);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"systemconfig";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ACLAllowOrigin"];
        [self exposeLocalKeyPathToREST:@"ECMPCount"];
        [self exposeLocalKeyPathToREST:@"LDAPSyncInterval"];
        [self exposeLocalKeyPathToREST:@"LDAPTrustStoreCertifcate"];
        [self exposeLocalKeyPathToREST:@"LDAPTrustStorePassword"];
        [self exposeLocalKeyPathToREST:@"ADGatewayPurgeTime"];
        [self exposeLocalKeyPathToREST:@"RDLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RDPublicNetworkLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RDPublicNetworkUpperLimit"];
        [self exposeLocalKeyPathToREST:@"RDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"DHCPOptionSize"];
        [self exposeLocalKeyPathToREST:@"VMCacheSize"];
        [self exposeLocalKeyPathToREST:@"VMPurgeTime"];
        [self exposeLocalKeyPathToREST:@"VMResyncDeletionWaitTime"];
        [self exposeLocalKeyPathToREST:@"VMResyncOutstandingInterval"];
        [self exposeLocalKeyPathToREST:@"VMUnreachableCleanupTime"];
        [self exposeLocalKeyPathToREST:@"VMUnreachableTime"];
        [self exposeLocalKeyPathToREST:@"VNIDLowerLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDPublicNetworkLowerLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDPublicNetworkUpperLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"APIKeyRenewalInterval"];
        [self exposeLocalKeyPathToREST:@"APIKeyValidity"];
        [self exposeLocalKeyPathToREST:@"VPortInitStatefulTimer"];
        [self exposeLocalKeyPathToREST:@"LRUCacheSizePerSubnet"];
        [self exposeLocalKeyPathToREST:@"VSCOnSameVersionAsVSD"];
        [self exposeLocalKeyPathToREST:@"VSDReadOnlyMode"];
        [self exposeLocalKeyPathToREST:@"VSDUpgradeIsComplete"];
        [self exposeLocalKeyPathToREST:@"ASNumber"];
        [self exposeLocalKeyPathToREST:@"RTLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RTPublicNetworkLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RTPublicNetworkUpperLimit"];
        [self exposeLocalKeyPathToREST:@"RTUpperLimit"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagASNumber"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagLowerLimit"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagUpperLimit"];
        [self exposeLocalKeyPathToREST:@"pageMaxSize"];
        [self exposeLocalKeyPathToREST:@"pageSize"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"maxFailedLogins"];
        [self exposeLocalKeyPathToREST:@"maxResponse"];
        [self exposeLocalKeyPathToREST:@"serviceIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"keyServerMonitorEnabled"];
        [self exposeLocalKeyPathToREST:@"keyServerVSDDataSynchronizationInterval"];
        [self exposeLocalKeyPathToREST:@"offsetCustomerID"];
        [self exposeLocalKeyPathToREST:@"offsetServiceID"];
        [self exposeLocalKeyPathToREST:@"ejbcaNSGCertificateProfile"];
        [self exposeLocalKeyPathToREST:@"ejbcaNSGEndEntityProfile"];
        [self exposeLocalKeyPathToREST:@"ejbcaOCSPResponderCN"];
        [self exposeLocalKeyPathToREST:@"ejbcaOCSPResponderURI"];
        [self exposeLocalKeyPathToREST:@"ejbcaVspRootCa"];
        [self exposeLocalKeyPathToREST:@"alarmsMaxPerObject"];
        [self exposeLocalKeyPathToREST:@"allowEnterpriseAvatarOnNSG"];
        [self exposeLocalKeyPathToREST:@"inactiveTimeout"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainTunnelType"];
        [self exposeLocalKeyPathToREST:@"postProcessorThreadsCount"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSEKGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSEKLifetime"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSEKPayloadEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSEKPayloadSigningAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSeedGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSeedLifetime"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSeedPayloadAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSeedPayloadEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultSeedPayloadSigningAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultTrafficAuthenticationAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultTrafficEncryptionAlgorithm"];
        [self exposeLocalKeyPathToREST:@"groupKeyDefaultTrafficEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"groupKeyGenerationIntervalOnForcedReKey"];
        [self exposeLocalKeyPathToREST:@"groupKeyGenerationIntervalOnRevoke"];
        [self exposeLocalKeyPathToREST:@"groupKeyMinimumSEKGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"groupKeyMinimumSEKLifetime"];
        [self exposeLocalKeyPathToREST:@"groupKeyMinimumSeedGenerationInterval"];
        [self exposeLocalKeyPathToREST:@"groupKeyMinimumSeedLifetime"];
        [self exposeLocalKeyPathToREST:@"groupKeyMinimumTrafficEncryptionKeyLifetime"];
        [self exposeLocalKeyPathToREST:@"nsgBootstrapEndpoint"];
        [self exposeLocalKeyPathToREST:@"nsgConfigEndpoint"];
        [self exposeLocalKeyPathToREST:@"nsgLocalUiUrl"];
        [self exposeLocalKeyPathToREST:@"esiID"];
        [self exposeLocalKeyPathToREST:@"stackTraceEnabled"];
        [self exposeLocalKeyPathToREST:@"statefulACLNonTCPTimeout"];
        [self exposeLocalKeyPathToREST:@"statefulACLTCPTimeout"];
        [self exposeLocalKeyPathToREST:@"staticWANServicePurgeTime"];
        [self exposeLocalKeyPathToREST:@"statsCollectorAddress"];
        [self exposeLocalKeyPathToREST:@"statsCollectorPort"];
        [self exposeLocalKeyPathToREST:@"statsCollectorProtoBufPort"];
        [self exposeLocalKeyPathToREST:@"statsMaxDataPoints"];
        [self exposeLocalKeyPathToREST:@"statsMinDuration"];
        [self exposeLocalKeyPathToREST:@"statsNumberOfDataPoints"];
        [self exposeLocalKeyPathToREST:@"statsTSDBServerAddress"];
        [self exposeLocalKeyPathToREST:@"subnetResyncInterval"];
        [self exposeLocalKeyPathToREST:@"subnetResyncOutstandingInterval"];
        [self exposeLocalKeyPathToREST:@"customerIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"customerKey"];
        [self exposeLocalKeyPathToREST:@"avatarBasePath"];
        [self exposeLocalKeyPathToREST:@"avatarBaseURL"];
        [self exposeLocalKeyPathToREST:@"eventLogCleanupInterval"];
        [self exposeLocalKeyPathToREST:@"eventLogEntryMaxAge"];
        [self exposeLocalKeyPathToREST:@"eventProcessorInterval"];
        [self exposeLocalKeyPathToREST:@"eventProcessorMaxEventsCount"];
        [self exposeLocalKeyPathToREST:@"eventProcessorTimeout"];
        [self exposeLocalKeyPathToREST:@"twoFactorCodeExpiry"];
        [self exposeLocalKeyPathToREST:@"twoFactorCodeLength"];
        [self exposeLocalKeyPathToREST:@"twoFactorCodeSeedLength"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"dynamicWANServiceDiffTime"];
        [self exposeLocalKeyPathToREST:@"syslogDestinationHost"];
        [self exposeLocalKeyPathToREST:@"syslogDestinationPort"];
        [self exposeLocalKeyPathToREST:@"sysmonCleanupTaskInterval"];
        [self exposeLocalKeyPathToREST:@"sysmonNodePresenceTimeout"];
        [self exposeLocalKeyPathToREST:@"sysmonProbeResponseTimeout"];
        [self exposeLocalKeyPathToREST:@"systemAvatarData"];
        [self exposeLocalKeyPathToREST:@"systemAvatarType"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end