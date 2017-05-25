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

@import "Fetchers/NUPSPATMapsFetcher.j"
@import "Fetchers/NUPTranslationMapsFetcher.j"


/*!
    Provider alias IP range to map provider private IPs from provider domain to provider public IPs in the customer domain.
*/
@implementation NUPSNATPool : NURESTObject
{
    /*!
        The last IP address in the range.
    */
    CPString _endAddress @accessors(property=endAddress);
    /*!
        The first IP address in the range.
    */
    CPString _startAddress @accessors(property=startAddress);
    
    NUPSPATMapsFetcher _childrenPSPATMaps @accessors(property=childrenPSPATMaps);
    NUPTranslationMapsFetcher _childrenPTranslationMaps @accessors(property=childrenPTranslationMaps);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"psnatpool";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"endAddress"];
        [self exposeLocalKeyPathToREST:@"startAddress"];
        
        _childrenPSPATMaps = [NUPSPATMapsFetcher fetcherWithParentObject:self];
        _childrenPTranslationMaps = [NUPTranslationMapsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end