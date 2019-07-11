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
@import "Fetchers/NUJobsFetcher.j"

NUZFBRequestAssociatedEntityType_GATEWAY = @"GATEWAY";
NUZFBRequestAssociatedEntityType_NSGATEWAY = @"NSGATEWAY";
NUZFBRequestEntityScope_ENTERPRISE = @"ENTERPRISE";
NUZFBRequestEntityScope_GLOBAL = @"GLOBAL";
NUZFBRequestZFBApprovalStatus_APPROVED = @"APPROVED";
NUZFBRequestZFBApprovalStatus_ASSIGNED = @"ASSIGNED";
NUZFBRequestZFBApprovalStatus_DENIED = @"DENIED";
NUZFBRequestZFBApprovalStatus_UNASSIGNED = @"UNASSIGNED";


/*!
    Pending requests reflect Network Services Gateways that have initiated request for bootstrapping. Requests can be assigned or matched to continue the bootstrapping process
*/
@implementation NUZFBRequest : NURESTObject
{
    /*!
        MAC Address fo the NSG Port1 interface
    */
    CPString _MACAddress @accessors(property=MACAddress);
    /*!
        the status of the request
    */
    CPString _ZFBApprovalStatus @accessors(property=ZFBApprovalStatus);
    /*!
        whether the NSG should bootstrap, or just simulate bootstrap. Set from System Config
    */
    BOOL _ZFBBootstrapEnabled @accessors(property=ZFBBootstrapEnabled);
    /*!
        The Base64 encoded JSON string of ZFB Attributes
    */
    CPString _ZFBInfo @accessors(property=ZFBInfo);
    /*!
        ZFB Request retry timer on the gateway. Set on VSD's System Config panel.
    */
    CPNumber _ZFBRequestRetryTimer @accessors(property=ZFBRequestRetryTimer);
    /*!
        The part number of the gateway being bootstrapped through ZFB.
    */
    CPString _SKU @accessors(property=SKU);
    /*!
        IP Address of the gateway being bootstrapped using ZFB.
    */
    CPString _IPAddress @accessors(property=IPAddress);
    /*!
        Processor Type
    */
    CPString _CPUType @accessors(property=CPUType);
    /*!
        The Nuage NSG Version
    */
    CPString _NSGVersion @accessors(property=NSGVersion);
    /*!
        Redhat UUID
    */
    CPString _UUID @accessors(property=UUID);
    /*!
        Gateway Type
    */
    CPString _family @accessors(property=family);
    /*!
        The time in which the last GET was made from the gateway.
    */
    CPNumber _lastConnectedTime @accessors(property=lastConnectedTime);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Registration URL to be used for a gateway to be bootstrapped using ZFB.
    */
    CPString _registrationURL @accessors(property=registrationURL);
    /*!
        The gateway's Serial Number.
    */
    CPString _serialNumber @accessors(property=serialNumber);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Hostname of the gateway bootstrapped using ZFB.
    */
    CPString _hostname @accessors(property=hostname);
    /*!
        the ID of the associated enteprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    /*!
        Name of the associated enterprise
    */
    CPString _associatedEnterpriseName @accessors(property=associatedEnterpriseName);
    /*!
        Associated Entity Type: NSGATEWAY or GATEWAY
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        ID of the assigned Gateway
    */
    CPString _associatedGatewayID @accessors(property=associatedGatewayID);
    /*!
        Name of the associated Gateway
    */
    CPString _associatedGatewayName @accessors(property=associatedGatewayName);
    /*!
        ID of the assigned NSG
    */
    CPString _associatedNSGatewayID @accessors(property=associatedNSGatewayID);
    /*!
        Name of the associated NSG
    */
    CPString _associatedNSGatewayName @accessors(property=associatedNSGatewayName);
    /*!
        Extra status info
    */
    CPString _statusString @accessors(property=statusString);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUJobsFetcher _childrenJobs @accessors(property=childrenJobs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"zfbrequest";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"MACAddress"];
        [self exposeLocalKeyPathToREST:@"ZFBApprovalStatus"];
        [self exposeLocalKeyPathToREST:@"ZFBBootstrapEnabled"];
        [self exposeLocalKeyPathToREST:@"ZFBInfo"];
        [self exposeLocalKeyPathToREST:@"ZFBRequestRetryTimer"];
        [self exposeLocalKeyPathToREST:@"SKU"];
        [self exposeLocalKeyPathToREST:@"IPAddress"];
        [self exposeLocalKeyPathToREST:@"CPUType"];
        [self exposeLocalKeyPathToREST:@"NSGVersion"];
        [self exposeLocalKeyPathToREST:@"UUID"];
        [self exposeLocalKeyPathToREST:@"family"];
        [self exposeLocalKeyPathToREST:@"lastConnectedTime"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"registrationURL"];
        [self exposeLocalKeyPathToREST:@"serialNumber"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"hostname"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseName"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayName"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedNSGatewayName"];
        [self exposeLocalKeyPathToREST:@"statusString"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenJobs = [NUJobsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end