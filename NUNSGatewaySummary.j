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

NUNSGatewaySummaryBootstrapStatus_ACTIVE = @"ACTIVE";
NUNSGatewaySummaryBootstrapStatus_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUNSGatewaySummaryBootstrapStatus_INACTIVE = @"INACTIVE";
NUNSGatewaySummaryBootstrapStatus_NOTIFICATION_APP_REQ_ACK = @"NOTIFICATION_APP_REQ_ACK";
NUNSGatewaySummaryBootstrapStatus_NOTIFICATION_APP_REQ_SENT = @"NOTIFICATION_APP_REQ_SENT";
NUNSGatewaySummaryBootstrapStatus_QUARANTINED = @"QUARANTINED";
NUNSGatewaySummaryBootstrapStatus_REVOKED = @"REVOKED";
NUNSGatewaySummaryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUNSGatewaySummaryEntityScope_GLOBAL = @"GLOBAL";
NUNSGatewaySummaryPersonality_NSG = @"NSG";
NUNSGatewaySummaryPersonality_NSGBR = @"NSGBR";
NUNSGatewaySummaryPersonality_NSGDUC = @"NSGDUC";


/*!
    Summary information such as alarm counts, location, version, boostrap status for Network Services Gateway
*/
@implementation NUNSGatewaySummary : NURESTObject
{
    /*!
        The NSG Version (software) as reported during bootstrapping or following an upgrade.
    */
    CPString _NSGVersion @accessors(property=NSGVersion);
    /*!
        Total number of alarms with MAJOR severity
    */
    CPNumber _majorAlarmsCount @accessors(property=majorAlarmsCount);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The ID of the NSG from which the infomation was collected.
    */
    CPString _gatewayID @accessors(property=gatewayID);
    /*!
        The name of the gateway
    */
    CPString _gatewayName @accessors(property=gatewayName);
    /*!
        Details on the type of gateway for which the summary is given.  For NSGs, the value would be NSGateway.
    */
    CPString _gatewayType @accessors(property=gatewayType);
    /*!
        The latitude of the location of the NSG
    */
    CPNumber _latitude @accessors(property=latitude);
    /*!
        Formatted address including property number, street name, suite or office number of the NSG
    */
    CPString _address @accessors(property=address);
    /*!
        The ID of the Redundant Group which has this gateway
    */
    CPString _redundantGroupID @accessors(property=redundantGroupID);
    /*!
        The Name of the Redundant Group which has this gateway
    */
    CPString _redundantGroupName @accessors(property=redundantGroupName);
    /*!
        Personality of the corresponding Network Services Gateway
    */
    CPString _personality @accessors(property=personality);
    /*!
        Time zone in which the Gateway is located.  This can be in the form of a UTC/GMT offset, continent/city location, or country/region.  The available time zones can be found in /usr/share/zoneinfo on a Linux machine or retrieved with TimeZone.getAvailableIDs() in Java.  Refer to the IANA (Internet Assigned Numbers Authority) for a list of time zones.  URL :  http://www.iana.org/time-zones  Default value is UTC (translating to Etc/Zulu)
    */
    CPString _timezoneID @accessors(property=timezoneID);
    /*!
        Total number of alarms with MINOR severity
    */
    CPNumber _minorAlarmsCount @accessors(property=minorAlarmsCount);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Total number of alarms with INFO severity
    */
    CPNumber _infoAlarmsCount @accessors(property=infoAlarmsCount);
    /*!
        The enterprise associated with this NSG
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
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
        State/Province/Region
    */
    CPString _state @accessors(property=state);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Identifier of the gateway
    */
    CPString _systemID @accessors(property=systemID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"majorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"gatewayID"];
        [self exposeLocalKeyPathToREST:@"gatewayName"];
        [self exposeLocalKeyPathToREST:@"gatewayType"];
        [self exposeLocalKeyPathToREST:@"latitude"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"redundantGroupID"];
        [self exposeLocalKeyPathToREST:@"redundantGroupName"];
        [self exposeLocalKeyPathToREST:@"personality"];
        [self exposeLocalKeyPathToREST:@"timezoneID"];
        [self exposeLocalKeyPathToREST:@"minorAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"infoAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"locality"];
        [self exposeLocalKeyPathToREST:@"longitude"];
        [self exposeLocalKeyPathToREST:@"bootstrapStatus"];
        [self exposeLocalKeyPathToREST:@"country"];
        [self exposeLocalKeyPathToREST:@"criticalAlarmsCount"];
        [self exposeLocalKeyPathToREST:@"state"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"systemID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end