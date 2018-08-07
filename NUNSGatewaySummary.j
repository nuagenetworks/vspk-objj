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


NUNSGatewaySummaryBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGatewaySummaryBootstrapStatus_CERTIFICATE_REQUIRED = @"CERTIFICATE_REQUIRED";
NUNSGatewaySummaryBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGatewaySummaryBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGatewaySummaryBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";


/*!
    Summary information such as alarm counts, location, version, boostrap status for Network Services Gateway
*/
@implementation NUNSGatewaySummary : NURESTObject
{
    /*!
        Total number of alarms with MAJOR severity
    */
    CPNumber _majorAlarmsCount @accessors(property=majorAlarmsCount);
    /*!
        The ID of the NSG from which the infomation was collected.
    */
    CPString _gatewayID @accessors(property=gatewayID);
    /*!
        The name of the gateway
    */
    CPString _gatewayName @accessors(property=gatewayName);
    /*!
        The latitude of the location of the NSG
    */
    CPNumber _latitude @accessors(property=latitude);
    /*!
        Formatted address including property number, street name, suite or office number of the NSG
    */
    CPString _address @accessors(property=address);
    /*!
        Time zone in which the Gateway is located.  This can be in the form of a UTC/GMT offset, continent/city location, or country/region.  The available time zones can be found in /usr/share/zoneinfo on a Linux machine or retrieved with TimeZone.getAvailableIDs() in Java.  Refer to the IANA (Internet Assigned Numbers Authority) for a list of time zones.  URL :  http://www.iana.org/time-zones  Default value is UTC (translating to Etc/Zulu)
    */
    CPString _timeZoneID @accessors(property=timeZoneID);
    /*!
        Total number of alarms with MINOR severity
    */
    CPNumber _minorAlarmsCount @accessors(property=minorAlarmsCount);
    /*!
        Total number of alarms with INFO severity
    */
    CPString _infoAlarmsCount @accessors(property=infoAlarmsCount);
    /*!
        The enterprise associated with this NSG
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Locality/City/County of the NSG
    */
    CPString _locality @accessors(property=locality);
    /*!
        The longitude of the location of the NSG
    */
    CPNumber _longitude @accessors(property=longitude);
    /*!
        Bootstrap status of the NSG
    */
    CPString _bootstrapStatus @accessors(property=bootstrapStatus);
    /*!
        Country in which the NSG is located
    */
    CPString _country @accessors(property=country);
    /*!
        Total number of alarms with CRITICAL severity
    */
    CPNumber _criticalAlarmsCount @accessors(property=criticalAlarmsCount);
    /*!
        The NSG Version (software) as reported during bootstrapping or following an upgrade.
    */
    CPString _nsgVersion @accessors(property=nsgVersion);
    /*!
        State/Province/Region
    */
    CPString _state @accessors(property=state);
    /*!
        Identifier of the gateway
    */
    CPString _systemID @accessors(property=systemID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsgatewayssummary";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"majorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"gatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayName"];
        [self exposeLocalKeyPathToREST:@"latitude"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"timeZoneID"];
        [self exposeLocalKeyPathToREST:@"minorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"infoAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"locality"];
        [self exposeLocalKeyPathToREST:@"longitude"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"country"];
        [self exposeLocalKeyPathToREST:@"criticalAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"nsgVersion"];
        [self exposeLocalKeyPathToREST:@"state"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        
        
    }

    return self;
}

@end