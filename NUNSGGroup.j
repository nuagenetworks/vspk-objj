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

@import "Fetchers/NUNSGatewaysFetcher.j"
@import "Fetchers/NUDUCGroupBindingsFetcher.j"


/*!
    None
*/
@implementation NUNSGGroup : NURESTObject
{
    /*!
        Name of the NSG Group
    */
    CPString _name @accessors(property=name);
    /*!
        UUID of the NSG Group
    */
    CPString _id @accessors(property=id);
    /*!
        Description of the NSG Group
    */
    CPString _description  @accessors(property=description );
    /*!
        List of NSGs that belong to NSG Group
    */
    CPArrayController _associatedNSGs @accessors(property=associatedNSGs);
    
    NUNSGatewaysFetcher _childrenNSGateways @accessors(property=childrenNSGateways);
    NUDUCGroupBindingsFetcher _childrenDUCGroupBindings @accessors(property=childrenDUCGroupBindings);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsggroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"id"];
        [self exposeLocalKeyPathToREST:@"description "];
        [self exposeLocalKeyPathToREST:@"associatedNSGs"];
        
        _childrenNSGateways = [NUNSGatewaysFetcher fetcherWithParentObject:self];
        _childrenDUCGroupBindings = [NUDUCGroupBindingsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end