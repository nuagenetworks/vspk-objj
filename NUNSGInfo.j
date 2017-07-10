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


NUNSGInfoEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGInfoEntityScope_GLOBAL = @"GLOBAL";
NUNSGInfoFamily_ANY = @"ANY";
NUNSGInfoFamily_NSG_E = @"NSG_E";
NUNSGInfoFamily_NSG_V = @"NSG_V";
NUNSGInfoTPMStatus_DISABLED = @"DISABLED";
NUNSGInfoTPMStatus_ENABLED_NOT_OPERATIONAL = @"ENABLED_NOT_OPERATIONAL";
NUNSGInfoTPMStatus_ENABLED_OPERATIONAL = @"ENABLED_OPERATIONAL";
NUNSGInfoTPMStatus_UNKNOWN = @"UNKNOWN";


/*!
    Device information coming from the NSG
*/
@implementation NUNSGInfo : NURESTObject
{
    /*!
        MAC Address of the NSG
    */
    CPString _MACAddress @accessors(property=MACAddress);
    /*!
        NSG BIOS Version
    */
    CPString _BIOSVersion @accessors(property=BIOSVersion);
    /*!
        The part number of the NSG
    */
    CPString _SKU @accessors(property=SKU);
    /*!
        TPM status
    */
    CPString _TPMStatus @accessors(property=TPMStatus);
    /*!
        The NSG Processor Type
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        The NSG Version
    */
    CPString _NSGVersion @accessors(property=NSGVersion);
    /*!
        The Redhat UUID of the NSG
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        The NSG Type
    */
    CPString _family @accessors(property=family);
    /*!
        The NSG's serial number
    */
    CPString _serialNumber @accessors(property=serialNumber);
    /*!
        Tracks RPM package installed for some libraries installed on the NSG.
    */
    CPString _libraries @accessors(property=libraries);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        NSG Product Name
    */
    CPString _productName @accessors(property=productName);
    /*!
        Associated NS Gateway ID
    */
    CPString _associatedNSGatewayID @accessors(property=associatedNSGatewayID);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    
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
        [self exposeLocalKeyPathToREST:@"BIOSVersion"];
        [self exposeLocalKeyPathToREST:@"SKU"];
        [self exposeLocalKeyPathToREST:@"TPMStatus"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"libraries"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"productName"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayID"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        
        
    }

    return self;
}

@end