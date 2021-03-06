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


NUNSGInfoBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGInfoBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUNSGInfoBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGInfoBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGInfoBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUNSGInfoCmdStatus_ABANDONED = @"ABANDONED";
NUNSGInfoCmdStatus_COMPLETED = @"COMPLETED";
NUNSGInfoCmdStatus_FAILED = @"FAILED";
NUNSGInfoCmdStatus_RUNNING = @"RUNNING";
NUNSGInfoCmdStatus_SKIPPED = @"SKIPPED";
NUNSGInfoCmdStatus_STARTED = @"STARTED";
NUNSGInfoCmdStatus_UNKNOWN = @"UNKNOWN";
NUNSGInfoCmdType_NSG_DOWNLOAD_OS_IMAGE = @"NSG_DOWNLOAD_OS_IMAGE";
NUNSGInfoCmdType_NSG_UPGRADE_TO_IMAGE = @"NSG_UPGRADE_TO_IMAGE";
NUNSGInfoEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGInfoEntityScope_GLOBAL = @"GLOBAL";
NUNSGInfoFamily_ANY = @"ANY";
NUNSGInfoFamily_NSG_AMI = @"NSG_AMI";
NUNSGInfoFamily_NSG_AZ = @"NSG_AZ";
NUNSGInfoFamily_NSG_C = @"NSG_C";
NUNSGInfoFamily_NSG_DOCKER = @"NSG_DOCKER";
NUNSGInfoFamily_NSG_E = @"NSG_E";
NUNSGInfoFamily_NSG_E200 = @"NSG_E200";
NUNSGInfoFamily_NSG_E300 = @"NSG_E300";
NUNSGInfoFamily_NSG_V = @"NSG_V";
NUNSGInfoFamily_NSG_X = @"NSG_X";
NUNSGInfoFamily_NSG_X200 = @"NSG_X200";
NUNSGInfoPersonality_NSG = @"NSG";
NUNSGInfoPersonality_NSGBR = @"NSGBR";
NUNSGInfoPersonality_NSGDUC = @"NSGDUC";


/*!
    Device information coming from the NSG.  That includes the hardware type of the NSG (CPU, memory, family), the version of BIOS, build information, and software application packages installed.
*/
@implementation NUNSGInfo : NURESTObject
{
    /*!
        A comma separated list of MAC Addresses associated to the NSG's interfaces (eg, port1, port2, port3).
    */
    CPString _MACAddress @accessors(property=MACAddress);
    /*!
        The certficate metadata of NSG's certificate authority.
    */
    NURESTObject _CACertificate @accessors(property=CACertificate);
    /*!
        Release Date of the AAR Application
    */
    CPString _AARApplicationReleaseDate @accessors(property=AARApplicationReleaseDate);
    /*!
        The AAR Application Version
    */
    CPString _AARApplicationVersion @accessors(property=AARApplicationVersion);
    /*!
        Release Date of the NSG BiOS
    */
    CPString _BIOSReleaseDate @accessors(property=BIOSReleaseDate);
    /*!
        NSG BIOS Version as received from the NSG during bootstrap or a reboot.  If the information exeeds 255 characters, the extra characters will be truncated.
    */
    CPString _BIOSVersion @accessors(property=BIOSVersion);
    /*!
        The part number of the NSG
    */
    CPString _SKU @accessors(property=SKU);
    /*!
        TPM status code as reported by the NSG during bootstrapping. This informate indicates if TPM is being used in securing the private key/certificate of an NSG. Possible values are 0(Unknown), 1(Enabled_Not_Operational), 2(Enabled_Operational), 3(Disabled).
    */
    CPNumber _TPMStatus @accessors(property=TPMStatus);
    /*!
        TPM (Trusted Platform Module) version as reported by the NSG.
    */
    CPString _TPMVersion @accessors(property=TPMVersion);
    /*!
        Current CPU allocation for network accelerated gateways.  Displays total number of cores and those isolated.
    */
    CPString _CPUCoreAllocation @accessors(property=CPUCoreAllocation);
    /*!
        The NSG Processor Type based on information extracted during bootstrapping.  This may refer to a type of processor manufactured by Intel, ARM, AMD, Cyrix, VIA, or others.
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        The NSG Version as reported during a bootstrap or a reboot of the NSG. 
    */
    CPString _NSGVersion @accessors(property=NSGVersion);
    /*!
        The Redhat/CentOS UUID of the NSG
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        Name of the Gateway.
    */
    CPString _name @accessors(property=name);
    /*!
        The NSG Family type as it was returned by the NSG during bootstrapping.
    */
    CPString _family @accessors(property=family);
    /*!
        Base64 Encoded JSON String of the extra details pertaining to each successfully installed patch
    */
    CPString _patchesDetail @accessors(property=patchesDetail);
    /*!
        The NSG's serial number as it is stored in the system's CMOS (Motherboard)
    */
    CPString _serialNumber @accessors(property=serialNumber);
    /*!
        Personality of the Gateway.
    */
    CPString _personality @accessors(property=personality);
    /*!
        The certificate metadata of NSG's current certficate.
    */
    NURESTObject _certificate @accessors(property=certificate);
    /*!
        Tracks RPM package installed for some libraries installed on the NSG.
    */
    CPString _libraries @accessors(property=libraries);
    /*!
        Detailed status of the current running or last run command.
    */
    CPString _cmdDetailedStatus @accessors(property=cmdDetailedStatus);
    /*!
        Numerical value representing the code mapping to detailed status of the current or last command operation.
    */
    CPNumber _cmdDetailedStatusCode @accessors(property=cmdDetailedStatusCode);
    /*!
        DownloadProgress object representing the progress of Gateway image download.
    */
    NURESTObject _cmdDownloadProgress @accessors(property=cmdDownloadProgress);
    /*!
        Identifier of the running or last Command.
    */
    CPString _cmdID @accessors(property=cmdID);
    /*!
        Time stamp when the command was last updated.
    */
    CPNumber _cmdLastUpdatedDate @accessors(property=cmdLastUpdatedDate);
    /*!
        Status of the current or last command.
    */
    CPString _cmdStatus @accessors(property=cmdStatus);
    /*!
        Specifies the type of command that is stated for execution on the system. A request for download or a request for upgrade.
    */
    CPString _cmdType @accessors(property=cmdType);
    /*!
        The enterprise associated with this Gateway.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Name of the Enterprise associated with this Gateway.
    */
    CPString _enterpriseName @accessors(property=enterpriseName);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The bootstrap status of the NSG from which the infomation was collected.
    */
    CPString _bootstrapStatus @accessors(property=bootstrapStatus);
    /*!
        NSG Product Name as reported when the device bootstraps.
    */
    CPString _productName @accessors(property=productName);
    /*!
        Object type of the associated entity.
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        The ID of the NSG from which the infomation was collected.
    */
    CPString _associatedNSGatewayID @accessors(property=associatedNSGatewayID);
    /*!
        The size and number of huge pages for an NSG that is running in network accelerated mode.  Hugepage values states the portion of memory reserved for network accelerated services.
    */
    CPString _hugePageSetting @accessors(property=hugePageSetting);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        System identifier of the Gateway.
    */
    CPString _systemID @accessors(property=systemID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsginfo";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MACAddress"];
        [self exposeLocalKeyPathToREST:@"CACertificate"];
        [self exposeLocalKeyPathToREST:@"AARApplicationReleaseDate"];
        [self exposeLocalKeyPathToREST:@"AARApplicationVersion"];
        [self exposeLocalKeyPathToREST:@"BIOSReleaseDate"];
        [self exposeLocalKeyPathToREST:@"BIOSVersion"];
        [self exposeLocalKeyPathToREST:@"SKU"];
        [self exposeLocalKeyPathToREST:@"TPMStatus"];
        [self exposeLocalKeyPathToREST:@"TPMVersion"];
        [self exposeLocalKeyPathToREST:@"CPUCoreAllocation"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"patchesDetail"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"certificate"];
        [self exposeLocalKeyPathToREST:@"libraries"];
        [self exposeLocalKeyPathToREST:@"cmdDetailedStatus"];
        [self exposeLocalKeyPathToREST:@"cmdDetailedStatusCode"];
        [self exposeLocalKeyPathToREST:@"cmdDownloadProgress"];
        [self exposeLocalKeyPathToREST:@"cmdID"];
        [self exposeLocalKeyPathToREST:@"cmdLastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"cmdStatus"];
        [self exposeLocalKeyPathToREST:@"cmdType"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"enterpriseName"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"productName"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayID"];
        [self exposeLocalKeyPathToREST:@"hugePageSetting"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        
        
    }

    return self;
}

@end