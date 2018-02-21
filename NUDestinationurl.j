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

NUDestinationurlEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDestinationurlEntityScope_GLOBAL = @"GLOBAL";
NUDestinationurlHTTPMethod_GET = @"GET";
NUDestinationurlHTTPMethod_HEAD = @"HEAD";


/*!
    destination URL under tier
*/
@implementation NUDestinationurl : NURESTObject
{
    /*!
        Uniform Resource Locator
    */
    CPString _URL @accessors(property=URL);
    /*!
        HTTP probe method (GET/HEAD)
    */
    CPString _HTTPMethod @accessors(property=HTTPMethod);
    /*!
        packet count (part of rate along with probeInterval). Applicable only if this URL's parent is Tier1
    */
    CPNumber _packetCount @accessors(property=packetCount);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Weight of the URL in %. Applicable only when parent is Tier1
    */
    CPNumber _percentageWeight @accessors(property=percentageWeight);
    /*!
        number of milliseconds to wait until the probe is timed out. Applicable only if this URL's parent is Tier1
    */
    CPNumber _timeout @accessors(property=timeout);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Successive Probe threshold. Applicable only if this URL's parent is Tier1
    */
    CPNumber _downThresholdCount @accessors(property=downThresholdCount);
    /*!
        probe interval (part of rate along with packetCount). Applicable only if this URL's parent is Tier1
    */
    CPNumber _probeInterval @accessors(property=probeInterval);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"destinationurl";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"URL"];
        [self exposeLocalKeyPathToREST:@"HTTPMethod"];
        [self exposeLocalKeyPathToREST:@"packetCount"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"percentageWeight"];
        [self exposeLocalKeyPathToREST:@"timeout"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"downThresholdCount"];
        [self exposeLocalKeyPathToREST:@"probeInterval"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end