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

@import "Fetchers/NUL2DomainsFetcher.j"
@import "Fetchers/NUMACFilterProfilesFetcher.j"
@import "Fetchers/NUSAPEgressQoSProfilesFetcher.j"
@import "Fetchers/NUSAPIngressQoSProfilesFetcher.j"
@import "Fetchers/NUGatewaySecuritiesFetcher.j"
@import "Fetchers/NUPATNATPoolsFetcher.j"
@import "Fetchers/NUDeploymentFailuresFetcher.j"
@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUWANServicesFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUEgressProfilesFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUInfrastructureConfigsFetcher.j"
@import "Fetchers/NUIngressProfilesFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"
@import "Fetchers/NUJobsFetcher.j"
@import "Fetchers/NULocationsFetcher.j"
@import "Fetchers/NUDomainsFetcher.j"
@import "Fetchers/NUBootstrapsFetcher.j"
@import "Fetchers/NUBootstrapActivationsFetcher.j"
@import "Fetchers/NUPortsFetcher.j"
@import "Fetchers/NUIPFilterProfilesFetcher.j"
@import "Fetchers/NUIPv6FilterProfilesFetcher.j"
@import "Fetchers/NUSubnetsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUGatewayBootstrapStatus_ACTIVE = @"ACTIVE";
NUGatewayBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUGatewayBootstrapStatus_INACTIVE = @"INACTIVE";
NUGatewayBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUGatewayBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUGatewayEntityScope_ENTERPRISE = @"ENTERPRISE";
NUGatewayEntityScope_GLOBAL = @"GLOBAL";
NUGatewayFamily_ANY = @"ANY";
NUGatewayFamily_NSG_AMI = @"NSG_AMI";
NUGatewayFamily_NSG_AZ = @"NSG_AZ";
NUGatewayFamily_NSG_C = @"NSG_C";
NUGatewayFamily_NSG_E = @"NSG_E";
NUGatewayFamily_NSG_E200 = @"NSG_E200";
NUGatewayFamily_NSG_E300 = @"NSG_E300";
NUGatewayFamily_NSG_V = @"NSG_V";
NUGatewayFamily_NSG_X = @"NSG_X";
NUGatewayFamily_NSG_X200 = @"NSG_X200";
NUGatewayFamily_VRS = @"VRS";
NUGatewayPermittedAction_ALL = @"ALL";
NUGatewayPermittedAction_DEPLOY = @"DEPLOY";
NUGatewayPermittedAction_EXTEND = @"EXTEND";
NUGatewayPermittedAction_INSTANTIATE = @"INSTANTIATE";
NUGatewayPermittedAction_READ = @"READ";
NUGatewayPermittedAction_USE = @"USE";
NUGatewayPersonality_DC7X50 = @"DC7X50";
NUGatewayPersonality_EVDF = @"EVDF";
NUGatewayPersonality_EVDFB = @"EVDFB";
NUGatewayPersonality_HARDWARE_VTEP = @"HARDWARE_VTEP";
NUGatewayPersonality_NETCONF_7X50 = @"NETCONF_7X50";
NUGatewayPersonality_NETCONF_THIRDPARTY_HW_VTEP = @"NETCONF_THIRDPARTY_HW_VTEP";
NUGatewayPersonality_NUAGE_210_WBX_32_Q = @"NUAGE_210_WBX_32_Q";
NUGatewayPersonality_NUAGE_210_WBX_48_S = @"NUAGE_210_WBX_48_S";
NUGatewayPersonality_OTHER = @"OTHER";
NUGatewayPersonality_VDFG = @"VDFG";
NUGatewayPersonality_VRSB = @"VRSB";
NUGatewayPersonality_VRSG = @"VRSG";
NUGatewayPersonality_VSA = @"VSA";
NUGatewayPersonality_VSG = @"VSG";
NUGatewayVendor_CISCO = @"CISCO";
NUGatewayZFBMatchAttribute_HOSTNAME = @"HOSTNAME";
NUGatewayZFBMatchAttribute_IP_ADDRESS = @"IP_ADDRESS";
NUGatewayZFBMatchAttribute_MAC_ADDRESS = @"MAC_ADDRESS";
NUGatewayZFBMatchAttribute_NONE = @"NONE";
NUGatewayZFBMatchAttribute_SERIAL_NUMBER = @"SERIAL_NUMBER";
NUGatewayZFBMatchAttribute_UUID = @"UUID";


/*!
    Represents Gateway object.
*/
@implementation NUGateway : NURESTObject
{
    /*!
        MAC Address of the first interface
    */
    CPString _MACAddress @accessors(property=MACAddress);
    /*!
        The Zero Factor Bootstrapping (ZFB) Attribute that should be used to match the gateway on when it tries to bootstrap.
    */
    CPString _ZFBMatchAttribute @accessors(property=ZFBMatchAttribute);
    /*!
        The Zero Factor Bootstrapping (ZFB) value that needs to match with the gateway during the bootstrap attempt. This value needs to match with the ZFB Match Attribute.
    */
    CPString _ZFBMatchValue @accessors(property=ZFBMatchValue);
    /*!
        Release Date of the BIOS.  The format can vary based on the manufacturer but normally includes year/month/day or year/week details (eg. 01/01/2011 or 2018/06/15 or 2018/22)
    */
    CPString _BIOSReleaseDate @accessors(property=BIOSReleaseDate);
    /*!
        BIOS Version (eg. 0.5.1)
    */
    CPString _BIOSVersion @accessors(property=BIOSVersion);
    /*!
        The Processor Type as reported during bootstrapping.
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        UUID of the device
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        Name of the Gateway
    */
    CPString _name @accessors(property=name);
    /*!
        The family type of the gateway based on common characteristics with other members of a particular variation of an NSG hardware or of a virtual deployment.
    */
    CPString _family @accessors(property=family);
    /*!
        The identifier of this gateway's management interface.
    */
    CPString _managementID @accessors(property=managementID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Identifier of the Gateway, based on the systemID which is generated when the instance is created in VSD.
    */
    CPString _datapathID @accessors(property=datapathID);
    /*!
        Patches that have been installed on the NSG
    */
    CPString _patches @accessors(property=patches);
    /*!
        Release version of gateway, which is used to determine the feature capabilties of gateway.
    */
    CPString _gatewayConfigRawVersion @accessors(property=gatewayConfigRawVersion);
    /*!
        Interpreted version of gateway, which is used to determine the feature capabilities of gateway.
    */
    CPString _gatewayConfigVersion @accessors(property=gatewayConfigVersion);
    /*!
        A boolean flag indicating the status of the gateway.
    */
    BOOL _gatewayConnected @accessors(property=gatewayConnected);
    /*!
        The model string of the gateway. Applicable to netconf managed gateways
    */
    CPString _gatewayModel @accessors(property=gatewayModel);
    /*!
        The Gateway Software Version as reported during bootstrapping.
    */
    CPString _gatewayVersion @accessors(property=gatewayVersion);
    /*!
        The Redundancy Gateway Group associated with this Gateway Instance. This is a read only attribute
    */
    CPString _redundancyGroupID @accessors(property=redundancyGroupID);
    /*!
        The System ID of the peer gateway associated with this Gateway instance when it is discovered by the network manager (VSD) as being redundant.
    */
    CPString _peer @accessors(property=peer);
    /*!
        The ID of the template that this Gateway was created from. This should be set when instantiating a Gateway
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        Indicates that this gateway is pending state or state. When in pending state it cannot be modified from REST.
    */
    BOOL _pending @accessors(property=pending);
    /*!
        The vendor of the gateway. Applicable to netconf managed gateways
    */
    CPString _vendor @accessors(property=vendor);
    /*!
        The device's serial number
    */
    CPString _serialNumber @accessors(property=serialNumber);
    /*!
        The permitted  action to USE/EXTEND  this Gateway.
    */
    CPString _permittedAction @accessors(property=permittedAction);
    /*!
        Personality of the Gateway, cannot be changed after creation.
    */
    CPString _personality @accessors(property=personality);
    /*!
        A description of the Gateway
    */
    CPString _description @accessors(property=description);
    /*!
        Versions of monitored libraries currently installed on the Gateway.
    */
    CPString _libraries @accessors(property=libraries);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        The enterprise associated with this Gateway. This is a read only attribute
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Association to an object which contains location information about this gateway instance.
    */
    CPString _locationID @accessors(property=locationID);
    /*!
        The bootstrap details associated with this Gateway. NOTE: This is a read only property, it can only be set during creation of a gateway.
    */
    CPString _bootstrapID @accessors(property=bootstrapID);
    /*!
        The bootstrap status of this Gateway. NOTE: This is a read only property.
    */
    CPString _bootstrapStatus @accessors(property=bootstrapStatus);
    /*!
        Product Name as reported during bootstrapping.
    */
    CPString _productName @accessors(property=productName);
    /*!
        When set, VLAN-VNID mapping must be unique for all the vports of the gateway
    */
    BOOL _useGatewayVLANVNID @accessors(property=useGatewayVLANVNID);
    /*!
        Read only ID of the associated gateway security object.
    */
    CPString _associatedGatewaySecurityID @accessors(property=associatedGatewaySecurityID);
    /*!
        Readonly Id of the associated gateway security profile object
    */
    CPString _associatedGatewaySecurityProfileID @accessors(property=associatedGatewaySecurityProfileID);
    /*!
        Read only ID of the associated gateway information object
    */
    CPString _associatedNSGInfoID @accessors(property=associatedNSGInfoID);
    /*!
        UUID of the Netconf Profile associated to this gateway.
    */
    CPString _associatedNetconfProfileID @accessors(property=associatedNetconfProfileID);
    /*!
        Represent the system ID or the Virtual IP of a service used by a Gateway (VSG for now) to establish a tunnel with a remote VSG or hypervisor.  The format of this field is consistent with an IP address.
    */
    CPString _vtep @accessors(property=vtep);
    /*!
        The Auto Discovered Gateway associated with this Gateway Instance
    */
    CPString _autoDiscGatewayID @accessors(property=autoDiscGatewayID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Identifier of the Gateway, cannot be modified after creation
    */
    CPString _systemID @accessors(property=systemID);
    
    NUL2DomainsFetcher _childrenL2Domains @accessors(property=childrenL2Domains);
    NUMACFilterProfilesFetcher _childrenMACFilterProfiles @accessors(property=childrenMACFilterProfiles);
    NUSAPEgressQoSProfilesFetcher _childrenSAPEgressQoSProfiles @accessors(property=childrenSAPEgressQoSProfiles);
    NUSAPIngressQoSProfilesFetcher _childrenSAPIngressQoSProfiles @accessors(property=childrenSAPIngressQoSProfiles);
    NUGatewaySecuritiesFetcher _childrenGatewaySecurities @accessors(property=childrenGatewaySecurities);
    NUPATNATPoolsFetcher _childrenPATNATPools @accessors(property=childrenPATNATPools);
    NUDeploymentFailuresFetcher _childrenDeploymentFailures @accessors(property=childrenDeploymentFailures);
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUWANServicesFetcher _childrenWANServices @accessors(property=childrenWANServices);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUEgressProfilesFetcher _childrenEgressProfiles @accessors(property=childrenEgressProfiles);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUInfrastructureConfigsFetcher _childrenInfrastructureConfigs @accessors(property=childrenInfrastructureConfigs);
    NUIngressProfilesFetcher _childrenIngressProfiles @accessors(property=childrenIngressProfiles);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    NULocationsFetcher _childrenLocations @accessors(property=childrenLocations);
    NUDomainsFetcher _childrenDomains @accessors(property=childrenDomains);
    NUBootstrapsFetcher _childrenBootstraps @accessors(property=childrenBootstraps);
    NUBootstrapActivationsFetcher _childrenBootstrapActivations @accessors(property=childrenBootstrapActivations);
    NUPortsFetcher _childrenPorts @accessors(property=childrenPorts);
    NUIPFilterProfilesFetcher _childrenIPFilterProfiles @accessors(property=childrenIPFilterProfiles);
    NUIPv6FilterProfilesFetcher _childrenIPv6FilterProfiles @accessors(property=childrenIPv6FilterProfiles);
    NUSubnetsFetcher _childrenSubnets @accessors(property=childrenSubnets);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"gateway";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MACAddress"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchAttribute"];
        [self exposeLocalKeyPathToREST:@"ZFBMatchValue"];
        [self exposeLocalKeyPathToREST:@"BIOSReleaseDate"];
        [self exposeLocalKeyPathToREST:@"BIOSVersion"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"managementID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"datapathID"];
        [self exposeLocalKeyPathToREST:@"patches"];
        [self exposeLocalKeyPathToREST:@"gatewayConfigRawVersion"];
        [self exposeLocalKeyPathToREST:@"gatewayConfigVersion"];
        [self exposeLocalKeyPathToREST:@"gatewayConnected"];
        [self exposeLocalKeyPathToREST:@"gatewayModel"];
        [self exposeLocalKeyPathToREST:@"gatewayVersion"];
        [self exposeLocalKeyPathToREST:@"redundancyGroupID"];
        [self exposeLocalKeyPathToREST:@"peer"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"pending"];
        [self exposeLocalKeyPathToREST:@"vendor"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"permittedAction"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"libraries"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locationID"];
        [self exposeLocalKeyPathToREST:@"bootstrapID"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"productName"];
        [self exposeLocalKeyPathToREST:@"useGatewayVLANVNID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewaySecurityProfileID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGInfoID"];
        [self exposeLocalKeyPathToREST:@"associatedNetconfProfileID"];
        [self exposeLocalKeyPathToREST:@"vtep"];
        [self exposeLocalKeyPathToREST:@"autoDiscGatewayID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenL2Domains = [NUL2DomainsFetcher fetcherWithParentObject:self];
        _childrenMACFilterProfiles = [NUMACFilterProfilesFetcher fetcherWithParentObject:self];
        _childrenSAPEgressQoSProfiles = [NUSAPEgressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenSAPIngressQoSProfiles = [NUSAPIngressQoSProfilesFetcher fetcherWithParentObject:self];
        _childrenGatewaySecurities = [NUGatewaySecuritiesFetcher fetcherWithParentObject:self];
        _childrenPATNATPools = [NUPATNATPoolsFetcher fetcherWithParentObject:self];
        _childrenDeploymentFailures = [NUDeploymentFailuresFetcher fetcherWithParentObject:self];
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenWANServices = [NUWANServicesFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenEgressProfiles = [NUEgressProfilesFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenInfrastructureConfigs = [NUInfrastructureConfigsFetcher fetcherWithParentObject:self];
        _childrenIngressProfiles = [NUIngressProfilesFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        _childrenLocations = [NULocationsFetcher fetcherWithParentObject:self];
        _childrenDomains = [NUDomainsFetcher fetcherWithParentObject:self];
        _childrenBootstraps = [NUBootstrapsFetcher fetcherWithParentObject:self];
        _childrenBootstrapActivations = [NUBootstrapActivationsFetcher fetcherWithParentObject:self];
        _childrenPorts = [NUPortsFetcher fetcherWithParentObject:self];
        _childrenIPFilterProfiles = [NUIPFilterProfilesFetcher fetcherWithParentObject:self];
        _childrenIPv6FilterProfiles = [NUIPv6FilterProfilesFetcher fetcherWithParentObject:self];
        _childrenSubnets = [NUSubnetsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        _personality = @"VRSG";
        
    }

    return self;
}

@end