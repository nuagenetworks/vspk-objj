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

@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUSSIDConnectionsFetcher.j"
@import "Fetchers/NUStatisticsFetcher.j"
@import "Fetchers/NUEventLogsFetcher.j"

NUWirelessPortCountryCode_AT = @"AT";
NUWirelessPortCountryCode_AU = @"AU";
NUWirelessPortCountryCode_BE = @"BE";
NUWirelessPortCountryCode_BR = @"BR";
NUWirelessPortCountryCode_CA = @"CA";
NUWirelessPortCountryCode_CH = @"CH";
NUWirelessPortCountryCode_CN = @"CN";
NUWirelessPortCountryCode_CY = @"CY";
NUWirelessPortCountryCode_CZ = @"CZ";
NUWirelessPortCountryCode_DE = @"DE";
NUWirelessPortCountryCode_DK = @"DK";
NUWirelessPortCountryCode_EE = @"EE";
NUWirelessPortCountryCode_ES = @"ES";
NUWirelessPortCountryCode_FI = @"FI";
NUWirelessPortCountryCode_FR = @"FR";
NUWirelessPortCountryCode_GB = @"GB";
NUWirelessPortCountryCode_GR = @"GR";
NUWirelessPortCountryCode_HK = @"HK";
NUWirelessPortCountryCode_HU = @"HU";
NUWirelessPortCountryCode_ID = @"ID";
NUWirelessPortCountryCode_IE = @"IE";
NUWirelessPortCountryCode_IL = @"IL";
NUWirelessPortCountryCode_IN = @"IN";
NUWirelessPortCountryCode_IT = @"IT";
NUWirelessPortCountryCode_JP = @"JP";
NUWirelessPortCountryCode_KR = @"KR";
NUWirelessPortCountryCode_LT = @"LT";
NUWirelessPortCountryCode_LU = @"LU";
NUWirelessPortCountryCode_LV = @"LV";
NUWirelessPortCountryCode_MY = @"MY";
NUWirelessPortCountryCode_NL = @"NL";
NUWirelessPortCountryCode_NO = @"NO";
NUWirelessPortCountryCode_NZ = @"NZ";
NUWirelessPortCountryCode_PH = @"PH";
NUWirelessPortCountryCode_PL = @"PL";
NUWirelessPortCountryCode_PT = @"PT";
NUWirelessPortCountryCode_SE = @"SE";
NUWirelessPortCountryCode_SG = @"SG";
NUWirelessPortCountryCode_SI = @"SI";
NUWirelessPortCountryCode_SK = @"SK";
NUWirelessPortCountryCode_TH = @"TH";
NUWirelessPortCountryCode_TW = @"TW";
NUWirelessPortCountryCode_US = @"US";
NUWirelessPortCountryCode_ZA = @"ZA";
NUWirelessPortFrequencyChannel_CH_0 = @"CH_0";
NUWirelessPortFrequencyChannel_CH_1 = @"CH_1";
NUWirelessPortFrequencyChannel_CH_10 = @"CH_10";
NUWirelessPortFrequencyChannel_CH_100 = @"CH_100";
NUWirelessPortFrequencyChannel_CH_104 = @"CH_104";
NUWirelessPortFrequencyChannel_CH_108 = @"CH_108";
NUWirelessPortFrequencyChannel_CH_11 = @"CH_11";
NUWirelessPortFrequencyChannel_CH_112 = @"CH_112";
NUWirelessPortFrequencyChannel_CH_116 = @"CH_116";
NUWirelessPortFrequencyChannel_CH_12 = @"CH_12";
NUWirelessPortFrequencyChannel_CH_120 = @"CH_120";
NUWirelessPortFrequencyChannel_CH_124 = @"CH_124";
NUWirelessPortFrequencyChannel_CH_128 = @"CH_128";
NUWirelessPortFrequencyChannel_CH_13 = @"CH_13";
NUWirelessPortFrequencyChannel_CH_132 = @"CH_132";
NUWirelessPortFrequencyChannel_CH_136 = @"CH_136";
NUWirelessPortFrequencyChannel_CH_14 = @"CH_14";
NUWirelessPortFrequencyChannel_CH_140 = @"CH_140";
NUWirelessPortFrequencyChannel_CH_144 = @"CH_144";
NUWirelessPortFrequencyChannel_CH_149 = @"CH_149";
NUWirelessPortFrequencyChannel_CH_153 = @"CH_153";
NUWirelessPortFrequencyChannel_CH_157 = @"CH_157";
NUWirelessPortFrequencyChannel_CH_161 = @"CH_161";
NUWirelessPortFrequencyChannel_CH_165 = @"CH_165";
NUWirelessPortFrequencyChannel_CH_2 = @"CH_2";
NUWirelessPortFrequencyChannel_CH_3 = @"CH_3";
NUWirelessPortFrequencyChannel_CH_36 = @"CH_36";
NUWirelessPortFrequencyChannel_CH_4 = @"CH_4";
NUWirelessPortFrequencyChannel_CH_40 = @"CH_40";
NUWirelessPortFrequencyChannel_CH_44 = @"CH_44";
NUWirelessPortFrequencyChannel_CH_48 = @"CH_48";
NUWirelessPortFrequencyChannel_CH_5 = @"CH_5";
NUWirelessPortFrequencyChannel_CH_52 = @"CH_52";
NUWirelessPortFrequencyChannel_CH_56 = @"CH_56";
NUWirelessPortFrequencyChannel_CH_6 = @"CH_6";
NUWirelessPortFrequencyChannel_CH_60 = @"CH_60";
NUWirelessPortFrequencyChannel_CH_64 = @"CH_64";
NUWirelessPortFrequencyChannel_CH_7 = @"CH_7";
NUWirelessPortFrequencyChannel_CH_8 = @"CH_8";
NUWirelessPortFrequencyChannel_CH_9 = @"CH_9";
NUWirelessPortPortType_ACCESS = @"ACCESS";
NUWirelessPortWifiFrequencyBand_FREQ_2_4_GHZ = @"FREQ_2_4_GHZ";
NUWirelessPortWifiFrequencyBand_FREQ_5_0_GHZ = @"FREQ_5_0_GHZ";
NUWirelessPortWifiMode_WIFI_A = @"WIFI_A";
NUWirelessPortWifiMode_WIFI_A_AC = @"WIFI_A_AC";
NUWirelessPortWifiMode_WIFI_A_N = @"WIFI_A_N";
NUWirelessPortWifiMode_WIFI_A_N_AC = @"WIFI_A_N_AC";
NUWirelessPortWifiMode_WIFI_B_G = @"WIFI_B_G";
NUWirelessPortWifiMode_WIFI_B_G_N = @"WIFI_B_G_N";


/*!
    Represents a wireless (WiFi) interface configured on a Network Service Gateway (NSG) instance.  The WirelessPort instance may map to a physical WiFi card or a WiFi port.
*/
@implementation NUWirelessPort : NURESTObject
{
    /*!
        A customer friendly name for the Wireless Port instance.
    */
    CPString _name @accessors(property=name);
    /*!
        The ID of the template that this Wireless Port was created from.  If the wireless port was not created from a template, then the value will be null.
    */
    CPString _templateID @accessors(property=templateID);
    /*!
        This field is used to contain the "blob" parameters for the WiFi Card (physical module) on the NSG.
    */
    CPString _genericConfig @accessors(property=genericConfig);
    /*!
        A customer friendly description to be given to the Wireless Port instance.
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
    
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUSSIDConnectionsFetcher _childrenSSIDConnections @accessors(property=childrenSSIDConnections);
    NUStatisticsFetcher _childrenStatistics @accessors(property=childrenStatistics);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"wirelessport";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"templateID"];
        [self exposeLocalKeyPathToREST:@"genericConfig"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"physicalName"];
        [self exposeLocalKeyPathToREST:@"wifiFrequencyBand"];
        [self exposeLocalKeyPathToREST:@"wifiMode"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"countryCode"];
        [self exposeLocalKeyPathToREST:@"frequencyChannel"];
        
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenSSIDConnections = [NUSSIDConnectionsFetcher fetcherWithParentObject:self];
        _childrenStatistics = [NUStatisticsFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end