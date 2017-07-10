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


NUWirelessPortTemplateCountryCode_CA = @"CA";
NUWirelessPortTemplateCountryCode_FR = @"FR";
NUWirelessPortTemplateCountryCode_UK = @"UK";
NUWirelessPortTemplateCountryCode_US = @"US";
NUWirelessPortTemplateFrequencyChannel_CH_0 = @"CH_0";
NUWirelessPortTemplateFrequencyChannel_CH_1 = @"CH_1";
NUWirelessPortTemplateFrequencyChannel_CH_2 = @"CH_2";
NUWirelessPortTemplatePortType_ACCESS = @"ACCESS";
NUWirelessPortTemplateWifiFrequencyBand_FREQ_2_4_GHZ = @"FREQ_2_4_GHZ";
NUWirelessPortTemplateWifiFrequencyBand_FREQ_5_0_GHZ = @"FREQ_5_0_GHZ";
NUWirelessPortTemplateWifiMode_WIFI_A = @"WIFI_A";
NUWirelessPortTemplateWifiMode_WIFI_A_AC = @"WIFI_A_AC";
NUWirelessPortTemplateWifiMode_WIFI_A_N = @"WIFI_A_N";
NUWirelessPortTemplateWifiMode_WIFI_A_N_AC = @"WIFI_A_N_AC";
NUWirelessPortTemplateWifiMode_WIFI_B_G = @"WIFI_B_G";
NUWirelessPortTemplateWifiMode_WIFI_B_G_N = @"WIFI_B_G_N";


/*!
    Template of a Wireless Interface that may exist on a NSGateway Template instance.  Instantiation of NSG Template will result in the creation of a Wireless Port instance on the NSG instance.  Parameters defined on the template will be used to polulate the attributes on the Wireless Port instance inheriting from the template.
*/
@implementation NUWirelessPortTemplate : NURESTObject
{
    /*!
        A customer friendly name for the Wireless Port template.
    */
    CPString _name @accessors(property=name);
    /*!
        Configuration blob for the Wireless Port/Card installed on the NSG.  It contains the less common Wireless parameters that can be configured at the OS level for the WiFi card.
    */
    CPString _genericConfig @accessors(property=genericConfig);
    /*!
        A customer friendly description to be given to the Wireless Port Template.
    */
    CPString _description @accessors(property=description);
    /*!
        The identifier of the wireless port as identified by the OS running on the NSG.  This name can't be modified once the port is created.
    */
    CPString _physicalName @accessors(property=physicalName);
    /*!
        Wireless frequency band set on the WiFi card installed.  The standard currently supports two frequency bands, 5 GHz and 2.4 GHz.  A future variant under name 802.11ad will support 60 GHz.
    */
    CPString _wifiFrequencyBand @accessors(property=wifiFrequencyBand);
    /*!
        WirelessFidelity 802.11 norm used.  The values supported represents a combination of modes that are to be enabled at once on the WiFi Card.
    */
    CPString _wifiMode @accessors(property=wifiMode);
    /*!
        Port type for the wireless port.  This can be a port of type Access or Network.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Country code where the NSG with a Wireless Port installed is defined.  The country code allows some WiFi features to be enabled or disabled on the Wireless card.
    */
    CPString _countryCode @accessors(property=countryCode);
    /*!
        The selected wireless frequency and channel used by the wireless interface.  Channels range is from 0 to 165 where 0 stands for Auto Channel Selection.
    */
    CPString _frequencyChannel @accessors(property=frequencyChannel);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"wirelessporttemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"genericConfig"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"wifiFrequencyBand"];
        [self exposeLocalKeyPathToREST:@"wifiMode"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"countryCode"];
        [self exposeLocalKeyPathToREST:@"frequencyChannel"];
        
        
        
    }

    return self;
}

@end