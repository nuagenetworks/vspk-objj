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

NUSystemConfigCsprootAuthenticationMethod_LDAP = @"LDAP";
NUSystemConfigCsprootAuthenticationMethod_LOCAL = @"LOCAL";
NUSystemConfigDomainTunnelType_GRE = @"GRE";
NUSystemConfigDomainTunnelType_VLAN = @"VLAN";
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
NUSystemConfigLastExecutedMigrationPhase_EXPAND = @"EXPAND";
NUSystemConfigLastExecutedMigrationPhase_REDUCE = @"REDUCE";
NUSystemConfigSystemAvatarType_BASE64 = @"BASE64";
NUSystemConfigSystemAvatarType_COMPUTEDURL = @"COMPUTEDURL";
NUSystemConfigSystemAvatarType_URL = @"URL";


/*!
    The System Configuration which can be dynamically managed using REST Api.
*/
@implementation NUSystemConfig : NURESTObject
{
    /*!
        AAR flow statistics collection interval in seconds.
    */
    CPNumber _AARFlowStatsInterval @accessors(property=AARFlowStatsInterval);
    /*!
        AAR probe statistics collection interval in seconds.
    */
    CPNumber _AARProbeStatsInterval @accessors(property=AARProbeStatsInterval);
    /*!
        Defines the domains allowed for access control list.
    */
    CPString _ACLAllowOrigin @accessors(property=ACLAllowOrigin);
    /*!
        System Default Equal-cost multi-path routing count. Every Domain derives ECMP count from this value unless specifically set for the domain.
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
        Timer in seconds for undefined VMs or auto-discovered NSGateway instances to be deleted from VSD.
    */
    CPNumber _ADGatewayPurgeTime @accessors(property=ADGatewayPurgeTime);
    /*!
        Route distinguisher (RD) lower limit.
    */
    CPNumber _RDLowerLimit @accessors(property=RDLowerLimit);
    /*!
        Route distinguisher (RD) public network lower limit.
    */
    CPNumber _RDPublicNetworkLowerLimit @accessors(property=RDPublicNetworkLowerLimit);
    /*!
        Route distinguisher (RD) public network upper limit.
    */
    CPNumber _RDPublicNetworkUpperLimit @accessors(property=RDPublicNetworkUpperLimit);
    /*!
        Route distinguisher (RD) upper limit.
    */
    CPNumber _RDUpperLimit @accessors(property=RDUpperLimit);
    /*!
        Whether the NSG should auto bootstrap using ZFB
    */
    BOOL _ZFBBootstrapEnabled @accessors(property=ZFBBootstrapEnabled);
    /*!
        Retry time for the ZFB daemon to recheck ZFBRequest Status in seconds
    */
    CPNumber _ZFBRequestRetryTimer @accessors(property=ZFBRequestRetryTimer);
    /*!
        Time for the ZFB scheduler to wait in seconds before deleting a stale request
    */
    CPNumber _ZFBSchedulerStaleRequestTimeout @accessors(property=ZFBSchedulerStaleRequestTimeout);
    /*!
        Lower limit for the policy group ID.
    */
    CPNumber _PGIDLowerLimit @accessors(property=PGIDLowerLimit);
    /*!
        Upper limit for the policy group ID.
    */
    CPNumber _PGIDUpperLimit @accessors(property=PGIDUpperLimit);
    /*!
        Defines total DHCP options that can be set on a domain.
    */
    CPNumber _DHCPOptionSize @accessors(property=DHCPOptionSize);
    /*!
        Offset for the Per domain VLAN ID for gateways of type HWVTEP
    */
    CPNumber _VLANIDLowerLimit @accessors(property=VLANIDLowerLimit);
    /*!
        Upper limit for the per domain VLAN ID for gateways of type HWVTEP
    */
    CPNumber _VLANIDUpperLimit @accessors(property=VLANIDUpperLimit);
    /*!
        Least Recently Used (LRU) Map size for VMs, this value has to be set based on the amount of memory given to VSD's JVM.
    */
    CPNumber _VMCacheSize @accessors(property=VMCacheSize);
    /*!
        Timer in seconds for undefined VMs to be deleted.
    */
    CPNumber _VMPurgeTime @accessors(property=VMPurgeTime);
    /*!
        After performing a resync on VMs, if no controller returns with a VM request within the specified timeframe then it will be deleted. The deletion wait time is in minutes.
    */
    CPNumber _VMResyncDeletionWaitTime @accessors(property=VMResyncDeletionWaitTime);
    /*!
        Outstanding VM resync interval (in seconds). System wide value.
    */
    CPNumber _VMResyncOutstandingInterval @accessors(property=VMResyncOutstandingInterval);
    /*!
        Timer in seconds for unreachable VMs to be marked for cleanup.
    */
    CPNumber _VMUnreachableCleanupTime @accessors(property=VMUnreachableCleanupTime);
    /*!
        Timer in seconds for considering a VM as unreachable.
    */
    CPNumber _VMUnreachableTime @accessors(property=VMUnreachableTime);
    /*!
        Timeout for VNF task running on the NSG by the NSG Agent (in seconds).
    */
    CPNumber _VNFTaskTimeout @accessors(property=VNFTaskTimeout);
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
        Defines the interval in seconds, before the expiry time, which can be used to renew the apiKey by making the '/me' API call. Minimum value is 60 s (1 minute) and maximum is 300 s (5 minutes).
    */
    CPNumber _APIKeyRenewalInterval @accessors(property=APIKeyRenewalInterval);
    /*!
        Defines the apiKey validity duration in seconds. Default and maximum values are 24 hours (86400 s) and minimum value is 10 minutes (600 s).
    */
    CPNumber _APIKeyValidity @accessors(property=APIKeyValidity);
    /*!
        Defines the timeout in seconds for vport initialization to stateful. Default value is 300 seconds and the timeout should be within a range going from 0 to 86400 seconds.
    */
    CPNumber _VPortInitStatefulTimer @accessors(property=VPortInitStatefulTimer);
    /*!
        Least Recently Used (LRU) Cache map size per subnet.  Serves to hold the deleted VM instances' IP addresses.
    */
    CPNumber _LRUCacheSizePerSubnet @accessors(property=LRUCacheSizePerSubnet);
    /*!
        This flag is used to indicate that whether VSC is on the same version as VSD or not.
    */
    BOOL _VSCOnSameVersionAsVSD @accessors(property=VSCOnSameVersionAsVSD);
    /*!
        Version of the current imported Application Signatures.
    */
    CPString _VSDAARApplicationVersion @accessors(property=VSDAARApplicationVersion);
    /*!
        Determines the time that Application Signatures were published and added in the VSD or if the signatures used are the ones that came with the current version of VSD.
    */
    CPString _VSDAARApplicationVersionPublishDate @accessors(property=VSDAARApplicationVersionPublishDate);
    /*!
        True means VSD readonly mode enabled. False means VSD readonly mode disabled.
    */
    BOOL _VSDReadOnlyMode @accessors(property=VSDReadOnlyMode);
    /*!
        This flag is used to indicate whether VSD upgrade is complete. It is expected that csproot will set the value to true after VSD upgrade is complete and ensuring that all VSC's audits and Gateway audits with VSD are completed.
    */
    BOOL _VSDUpgradeIsComplete @accessors(property=VSDUpgradeIsComplete);
    /*!
        In case of a dual-uplink NSG, the hold down time in seconds, after which an uplink connection that recovered from failure is re-used.
    */
    CPNumber _NSGUplinkHoldDownTimer @accessors(property=NSGUplinkHoldDownTimer);
    /*!
        System's Autonomous System (AS) number. Used in the automatic generation of Route Target (RT) and Route Distinguisher (RD) numbers.
    */
    CPNumber _ASNumber @accessors(property=ASNumber);
    /*!
        VSS statistics collection frequency in seconds.
    */
    CPNumber _VSSStatsInterval @accessors(property=VSSStatsInterval);
    /*!
        Route target (RT) lower limit.
    */
    CPNumber _RTLowerLimit @accessors(property=RTLowerLimit);
    /*!
        Route target (RT) public network lower limit.
    */
    CPNumber _RTPublicNetworkLowerLimit @accessors(property=RTPublicNetworkLowerLimit);
    /*!
        Route target (RT) public network upper limit.
    */
    CPNumber _RTPublicNetworkUpperLimit @accessors(property=RTPublicNetworkUpperLimit);
    /*!
        Route target (RT) upper limit
    */
    CPNumber _RTUpperLimit @accessors(property=RTUpperLimit);
    /*!
        Autonomous System Number used for 'EVPNBGPCommunityTag' generation.
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
        Determines the time that SaaS applications were imported in VSD or if they are the ones that came with this version of VSD (built-in).
    */
    CPString _SaaSApplicationsPublishDate @accessors(property=SaaSApplicationsPublishDate);
    /*!
        Defines upper bound for the page size. Configured or input page size should be less than this max page size.
    */
    CPNumber _pageMaxSize @accessors(property=pageMaxSize);
    /*!
        Defines the page size for the results returned by the ReST call. This value can not exceed what has been defined in 'pageMaxSize'.
    */
    CPNumber _pageSize @accessors(property=pageSize);
    /*!
        Indicates the last successfully executed phase of online schema migration. This value is set automatically upon execution of online schema migration scripts.
    */
    CPString _lastExecutedMigrationPhase @accessors(property=lastExecutedMigrationPhase);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        Gateway probe interval in seconds.
    */
    CPNumber _gatewayProbeInterval @accessors(property=gatewayProbeInterval);
    /*!
        Gateway probe window in seconds.
    */
    CPNumber _gatewayProbeWindow @accessors(property=gatewayProbeWindow);
    /*!
        Gateway rebalancing interval in seconds.
    */
    CPNumber _gatewayRebalancingInterval @accessors(property=gatewayRebalancingInterval);
    /*!
        Maximum failed login attempts before the account is locked. 0 = not enforced (unlimited attempts). This is not enforced if LDAP is used for authorization
    */
    CPNumber _maxFailedLogins @accessors(property=maxFailedLogins);
    /*!
        Defines maximum results returned by the REST call (allowed maximum value is 5000).
    */
    CPNumber _maxResponse @accessors(property=maxResponse);
    /*!
        Whether the various VRS license flavours be merged in one pool.
    */
    BOOL _accumulateLicensesEnabled @accessors(property=accumulateLicensesEnabled);
    /*!
        If VCIN Active/Standby is enabled, this needs to be the load-balancer IP which sits in front of the Active and Standby VCIN nodes. The VRS will make its API calls to this load-balancer
    */
    CPString _vcinLoadBalancerIP @accessors(property=vcinLoadBalancerIP);
    /*!
        Autonomous System Number, used for secondary RT auto-generation.
    */
    CPNumber _secondaryASNumber @accessors(property=secondaryASNumber);
    /*!
        Secondary route target lower limit.
    */
    CPNumber _secondaryRTLowerLimit @accessors(property=secondaryRTLowerLimit);
    /*!
        Secondary route target upper limit.
    */
    CPNumber _secondaryRTUpperLimit @accessors(property=secondaryRTUpperLimit);
    /*!
        Determines whether per domain VLAN ID generation is required.
    */
    BOOL _perDomainVlanIdEnabled @accessors(property=perDomainVlanIdEnabled);
    /*!
        Service ID upper limit system wide value.
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
        Customer ID offset, this value has to be set before JBoss starts, following its starting, any change of value will be ignored. This is a system wide value.
    */
    CPNumber _offsetCustomerID @accessors(property=offsetCustomerID);
    /*!
        Service ID offset, this value has to be set before JBoss starts during the time of VSD installation, from thereon, any change of value will be ignored. This is a system wide value.
    */
    CPNumber _offsetServiceID @accessors(property=offsetServiceID);
    /*!
        Enable Virtual Firewall Rule creation and management. This will be available only with VSS license
    */
    BOOL _virtualFirewallRulesEnabled @accessors(property=virtualFirewallRulesEnabled);
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
        Specifies the name of the Elastic Search Cluster.
    */
    CPString _elasticClusterName @accessors(property=elasticClusterName);
    /*!
        When enabled, it allows Enterprise Avatar (image) to be populated on the NSGateway bootstrapping portal.
    */
    BOOL _allowEnterpriseAvatarOnNSG @accessors(property=allowEnterpriseAvatarOnNSG);
    /*!
        the MAC Address to use for those subnets that have the useGlobalMAC flag enabled.
    */
    CPString _globalMACAddress @accessors(property=globalMACAddress);
    /*!
        Enables flow statistics collection. It is needed for the VSS feature, and requires a valid VSS license. This option requires 'statisticsEnabled'.
    */
    BOOL _flowCollectionEnabled @accessors(property=flowCollectionEnabled);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        This value limits the number of embedded Metadata objects returned in the API call. 
    */
    CPNumber _embeddedMetadataSize @accessors(property=embeddedMetadataSize);
    /*!
        Version of the current imported SaaS Application Type Master List.
    */
    CPString _importedSaaSApplicationsVersion @accessors(property=importedSaaSApplicationsVersion);
    /*!
        Defines the inactive timeout for the client. If the client is inactive for more than the timeout value, server clears off all the cached information regarding the client. This value should be greater than the maximum timeout for the event processor. Value is in milliseconds.
    */
    CPNumber _inactiveTimeout @accessors(property=inactiveTimeout);
    /*!
        Autonomous System Number, Used for Infrastructure BGP PE_CE.
    */
    CPNumber _infrastructureBGPASNumber @accessors(property=infrastructureBGPASNumber);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Default Domain Tunnel Type.
    */
    CPString _domainTunnelType @accessors(property=domainTunnelType);
    /*!
        Google Maps API Key used to display maps on Nuage UI applications
    */
    CPString _googleMapsAPIKey @accessors(property=googleMapsAPIKey);
    /*!
        Post processor thread count.
    */
    CPNumber _postProcessorThreadsCount @accessors(property=postProcessorThreadsCount);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Group Key Encryption Profile Default SEK Generation Interval in seconds.
    */
    CPNumber _groupKeyDefaultSEKGenerationInterval @accessors(property=groupKeyDefaultSEKGenerationInterval);
    /*!
        Group Key Encryption Profile Default SEK Lifetime in seconds.
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
        Group Key Encryption Profile Default Seed Generation Interval in seconds.
    */
    CPNumber _groupKeyDefaultSeedGenerationInterval @accessors(property=groupKeyDefaultSeedGenerationInterval);
    /*!
        Group Key Encryption Profile Default Seed Lifetime in seconds.
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
        Group Key Encryption Profile Default Traffic Encryption Key Lifetime in seconds.
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
        Group Key Encryption Profile Minimum SEK Generation Interval in seconds.
    */
    CPNumber _groupKeyMinimumSEKGenerationInterval @accessors(property=groupKeyMinimumSEKGenerationInterval);
    /*!
        Group Key Encryption Profile Minimum SEK Lifetime in seconds.
    */
    CPNumber _groupKeyMinimumSEKLifetime @accessors(property=groupKeyMinimumSEKLifetime);
    /*!
        Group Key Encryption Profile Default Seed Generation Interval in seconds.
    */
    CPNumber _groupKeyMinimumSeedGenerationInterval @accessors(property=groupKeyMinimumSeedGenerationInterval);
    /*!
        Group Key Encryption Profile Default Seed Lifetime in seconds.
    */
    CPNumber _groupKeyMinimumSeedLifetime @accessors(property=groupKeyMinimumSeedLifetime);
    /*!
        Group Key Encryption Profile Minimum TEK Lifetime in seconds.
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
        The bootstrapping UI URL on NSGateway. The URL will be redirected on NSG to its localhost so that the bootstrapping server on the NSGateway may handle the request.
    */
    CPString _nsgLocalUiUrl @accessors(property=nsgLocalUiUrl);
    /*!
        ESI ID offset
    */
    CPNumber _esiID @accessors(property=esiID);
    /*!
        Authentication method for csproot when local authentication is not used for CSP organization
    */
    CPString _csprootAuthenticationMethod @accessors(property=csprootAuthenticationMethod);
    /*!
        Set value to TRUE to enable stacktraces in the ReST calls.
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
        Timer in seconds for an unreacheable static WAN Services to be deleted.
    */
    CPNumber _staticWANServicePurgeTime @accessors(property=staticWANServicePurgeTime);
    /*!
        This flag is used to indicate if statistics is enabled in the system. CSProot is expected to activate this through the enable statistics script.
    */
    BOOL _statisticsEnabled @accessors(property=statisticsEnabled);
    /*!
        Specify the IP address(es) of the stats collector.
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
        The location of a public proxy to statistics database server in <FQDN>:<PORT> format.
    */
    CPString _statsDatabaseProxy @accessors(property=statsDatabaseProxy);
    /*!
        Specifies the maximum number of statistics data points to support.
    */
    CPNumber _statsMaxDataPoints @accessors(property=statsMaxDataPoints);
    /*!
        The minimum duration for statistics to be displayed on UI in seconds. Default is 30 days in seconds (2592000 s).
    */
    CPNumber _statsMinDuration @accessors(property=statsMinDuration);
    /*!
        Specifies number of data points.
    */
    CPNumber _statsNumberOfDataPoints @accessors(property=statsNumberOfDataPoints);
    /*!
        Specifies the Elastic Search server location.
    */
    CPString _statsTSDBServerAddress @accessors(property=statsTSDBServerAddress);
    /*!
        Sticky ECMP Idle Timeout in seconds.
    */
    CPNumber _stickyECMPIdleTimeout @accessors(property=stickyECMPIdleTimeout);
    /*!
        Flag to attach or remove system generated probes to system generated Network Performance Measurement (NPM) probes for IPSec.
    */
    BOOL _attachProbeToIPsecNPM @accessors(property=attachProbeToIPsecNPM);
    /*!
        Flag to attach or remove system generated probes to system generated Network Performance Measurement (NPM) probes for VxLAN.
    */
    BOOL _attachProbeToVXLANNPM @accessors(property=attachProbeToVXLANNPM);
    /*!
        Following a resync on a subnet, another resync on the same subnet will be allowed based on the completion of the previous subnet resync plus the defined wait time in minutes.
    */
    CPNumber _subnetResyncInterval @accessors(property=subnetResyncInterval);
    /*!
        Outstanding subnet resync interval (in seconds). System wide value.
    */
    CPNumber _subnetResyncOutstandingInterval @accessors(property=subnetResyncOutstandingInterval);
    /*!
        Customer ID value upper limit. This is a system wide value.
    */
    CPNumber _customerIDUpperLimit @accessors(property=customerIDUpperLimit);
    /*!
        Customer key associated with the license.
    */
    CPString _customerKey @accessors(property=customerKey);
    /*!
        Defines location, on VSD, where image files needs to be copied to. The Avatar Base URL should be configured to read the files from this location.
    */
    CPString _avatarBasePath @accessors(property=avatarBasePath);
    /*!
        Defines the URL to read the avatar image files.
    */
    CPString _avatarBaseURL @accessors(property=avatarBaseURL);
    /*!
        VSD event logs cleanup task execution interval in seconds.
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
        Defines the maximum time period in milliseconds for the ReST server to wait before sending the events from the system.
    */
    CPNumber _eventProcessorTimeout @accessors(property=eventProcessorTimeout);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        Two Factor Code Expiration time in seconds for bootstrapping gateways. (min = 60, max = 604800)
    */
    CPNumber _twoFactorCodeExpiry @accessors(property=twoFactorCodeExpiry);
    /*!
        The number of characters in the generated Two Factor Code for bootstrapping gateways. (min = 4, max = 10)
    */
    CPNumber _twoFactorCodeLength @accessors(property=twoFactorCodeLength);
    /*!
        Two Factor Seed length in bytes for generating the bootstrapping code. (min = 0, max = 255)
    */
    CPNumber _twoFactorCodeSeedLength @accessors(property=twoFactorCodeSeedLength);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Timer in seconds for dynamic WAN Services to be considered as not being seen by a 7x50.
    */
    CPNumber _dynamicWANServiceDiffTime @accessors(property=dynamicWANServiceDiffTime);
    /*!
        Specifies the remote syslog destination host for VSD logs.
    */
    CPString _syslogDestinationHost @accessors(property=syslogDestinationHost);
    /*!
        Specified the remote syslog destination port for VSD.
    */
    CPNumber _syslogDestinationPort @accessors(property=syslogDestinationPort);
    /*!
        Sysmon cleanup task run interval in seconds.
    */
    CPNumber _sysmonCleanupTaskInterval @accessors(property=sysmonCleanupTaskInterval);
    /*!
        Time interval in seconds at which sysmon messages are reported by controller.
    */
    CPNumber _sysmonNodePresenceTimeout @accessors(property=sysmonNodePresenceTimeout);
    /*!
        Probe response timeout in seconds.
    */
    CPNumber _sysmonProbeResponseTimeout @accessors(property=sysmonProbeResponseTimeout);
    /*!
        Time interval in seconds at which sysmon objects are purged.
    */
    CPNumber _sysmonPurgeInterval @accessors(property=sysmonPurgeInterval);
    /*!
        CSP Avatar Data
    */
    CPString _systemAvatarData @accessors(property=systemAvatarData);
    /*!
        Avatar type - URL or BASE64
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
        [self exposeLocalKeyPathToREST:@"AARFlowStatsInterval"];
        [self exposeLocalKeyPathToREST:@"AARProbeStatsInterval"];
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
        [self exposeLocalKeyPathToREST:@"ZFBBootstrapEnabled"];
        [self exposeLocalKeyPathToREST:@"ZFBRequestRetryTimer"];
        [self exposeLocalKeyPathToREST:@"ZFBSchedulerStaleRequestTimeout"];
        [self exposeLocalKeyPathToREST:@"PGIDLowerLimit"];
        [self exposeLocalKeyPathToREST:@"PGIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"DHCPOptionSize"];
        [self exposeLocalKeyPathToREST:@"VLANIDLowerLimit"];
        [self exposeLocalKeyPathToREST:@"VLANIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"VMCacheSize"];
        [self exposeLocalKeyPathToREST:@"VMPurgeTime"];
        [self exposeLocalKeyPathToREST:@"VMResyncDeletionWaitTime"];
        [self exposeLocalKeyPathToREST:@"VMResyncOutstandingInterval"];
        [self exposeLocalKeyPathToREST:@"VMUnreachableCleanupTime"];
        [self exposeLocalKeyPathToREST:@"VMUnreachableTime"];
        [self exposeLocalKeyPathToREST:@"VNFTaskTimeout"];
        [self exposeLocalKeyPathToREST:@"VNIDLowerLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDPublicNetworkLowerLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDPublicNetworkUpperLimit"];
        [self exposeLocalKeyPathToREST:@"VNIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"APIKeyRenewalInterval"];
        [self exposeLocalKeyPathToREST:@"APIKeyValidity"];
        [self exposeLocalKeyPathToREST:@"VPortInitStatefulTimer"];
        [self exposeLocalKeyPathToREST:@"LRUCacheSizePerSubnet"];
        [self exposeLocalKeyPathToREST:@"VSCOnSameVersionAsVSD"];
        [self exposeLocalKeyPathToREST:@"VSDAARApplicationVersion"];
        [self exposeLocalKeyPathToREST:@"VSDAARApplicationVersionPublishDate"];
        [self exposeLocalKeyPathToREST:@"VSDReadOnlyMode"];
        [self exposeLocalKeyPathToREST:@"VSDUpgradeIsComplete"];
        [self exposeLocalKeyPathToREST:@"NSGUplinkHoldDownTimer"];
        [self exposeLocalKeyPathToREST:@"ASNumber"];
        [self exposeLocalKeyPathToREST:@"VSSStatsInterval"];
        [self exposeLocalKeyPathToREST:@"RTLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RTPublicNetworkLowerLimit"];
        [self exposeLocalKeyPathToREST:@"RTPublicNetworkUpperLimit"];
        [self exposeLocalKeyPathToREST:@"RTUpperLimit"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagASNumber"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagLowerLimit"];
        [self exposeLocalKeyPathToREST:@"EVPNBGPCommunityTagUpperLimit"];
        [self exposeLocalKeyPathToREST:@"SaaSApplicationsPublishDate"];
        [self exposeLocalKeyPathToREST:@"pageMaxSize"];
        [self exposeLocalKeyPathToREST:@"pageSize"];
        [self exposeLocalKeyPathToREST:@"lastExecutedMigrationPhase"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"gatewayProbeInterval"];
        [self exposeLocalKeyPathToREST:@"gatewayProbeWindow"];
        [self exposeLocalKeyPathToREST:@"gatewayRebalancingInterval"];
        [self exposeLocalKeyPathToREST:@"maxFailedLogins"];
        [self exposeLocalKeyPathToREST:@"maxResponse"];
        [self exposeLocalKeyPathToREST:@"accumulateLicensesEnabled"];
        [self exposeLocalKeyPathToREST:@"vcinLoadBalancerIP"];
        [self exposeLocalKeyPathToREST:@"secondaryASNumber"];
        [self exposeLocalKeyPathToREST:@"secondaryRTLowerLimit"];
        [self exposeLocalKeyPathToREST:@"secondaryRTUpperLimit"];
        [self exposeLocalKeyPathToREST:@"perDomainVlanIdEnabled"];
        [self exposeLocalKeyPathToREST:@"serviceIDUpperLimit"];
        [self exposeLocalKeyPathToREST:@"keyServerMonitorEnabled"];
        [self exposeLocalKeyPathToREST:@"keyServerVSDDataSynchronizationInterval"];
        [self exposeLocalKeyPathToREST:@"offsetCustomerID"];
        [self exposeLocalKeyPathToREST:@"offsetServiceID"];
        [self exposeLocalKeyPathToREST:@"virtualFirewallRulesEnabled"];
        [self exposeLocalKeyPathToREST:@"ejbcaNSGCertificateProfile"];
        [self exposeLocalKeyPathToREST:@"ejbcaNSGEndEntityProfile"];
        [self exposeLocalKeyPathToREST:@"ejbcaOCSPResponderCN"];
        [self exposeLocalKeyPathToREST:@"ejbcaOCSPResponderURI"];
        [self exposeLocalKeyPathToREST:@"ejbcaVspRootCa"];
        [self exposeLocalKeyPathToREST:@"alarmsMaxPerObject"];
        [self exposeLocalKeyPathToREST:@"elasticClusterName"];
        [self exposeLocalKeyPathToREST:@"allowEnterpriseAvatarOnNSG"];
        [self exposeLocalKeyPathToREST:@"globalMACAddress"];
        [self exposeLocalKeyPathToREST:@"flowCollectionEnabled"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadataSize"];
        [self exposeLocalKeyPathToREST:@"importedSaaSApplicationsVersion"];
        [self exposeLocalKeyPathToREST:@"inactiveTimeout"];
        [self exposeLocalKeyPathToREST:@"infrastructureBGPASNumber"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"domainTunnelType"];
        [self exposeLocalKeyPathToREST:@"googleMapsAPIKey"];
        [self exposeLocalKeyPathToREST:@"postProcessorThreadsCount"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
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
        [self exposeLocalKeyPathToREST:@"csprootAuthenticationMethod"];
        [self exposeLocalKeyPathToREST:@"stackTraceEnabled"];
        [self exposeLocalKeyPathToREST:@"statefulACLNonTCPTimeout"];
        [self exposeLocalKeyPathToREST:@"statefulACLTCPTimeout"];
        [self exposeLocalKeyPathToREST:@"staticWANServicePurgeTime"];
        [self exposeLocalKeyPathToREST:@"statisticsEnabled"];
        [self exposeLocalKeyPathToREST:@"statsCollectorAddress"];
        [self exposeLocalKeyPathToREST:@"statsCollectorPort"];
        [self exposeLocalKeyPathToREST:@"statsCollectorProtoBufPort"];
        [self exposeLocalKeyPathToREST:@"statsDatabaseProxy"];
        [self exposeLocalKeyPathToREST:@"statsMaxDataPoints"];
        [self exposeLocalKeyPathToREST:@"statsMinDuration"];
        [self exposeLocalKeyPathToREST:@"statsNumberOfDataPoints"];
        [self exposeLocalKeyPathToREST:@"statsTSDBServerAddress"];
        [self exposeLocalKeyPathToREST:@"stickyECMPIdleTimeout"];
        [self exposeLocalKeyPathToREST:@"attachProbeToIPsecNPM"];
        [self exposeLocalKeyPathToREST:@"attachProbeToVXLANNPM"];
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
        [self exposeLocalKeyPathToREST:@"owner"];
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
        [self exposeLocalKeyPathToREST:@"sysmonPurgeInterval"];
        [self exposeLocalKeyPathToREST:@"systemAvatarData"];
        [self exposeLocalKeyPathToREST:@"systemAvatarType"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end