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


NUDemarcationServiceType_BR_PORT = @"BR_PORT";
NUDemarcationServiceType_GATEWAY = @"GATEWAY";


/*!
    None
*/
@implementation NUDemarcationService : NURESTObject
{
    /*!
        The route distinguisher associated with the next hop. This is a read only property automatically created by VSD.
    */
    CPString _routeDistinguisher @accessors(property=routeDistinguisher);
    /*!
        Next hop priority assigned by the user.
    */
    CPString _priority @accessors(property=priority);
    /*!
        The ID of the NSGBR Gateway used as next hop in the untrusted domain.
    */
    CPString _associatedGatewayID @accessors(property=associatedGatewayID);
    /*!
        The VLAN ID of the BR VLAN used as next hop in the trusted domain.
    */
    CPString _associatedVLANID @accessors(property=associatedVLANID);
    /*!
        The type of next hop determines linking direction for a demarcation service, possible values: BR_PORT, GATEWAY 
    */
    CPString _type @accessors(property=type);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"demarcationservice";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"routeDistinguisher"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"associatedGatewayID"];
        [self exposeLocalKeyPathToREST:@"associatedVLANID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        
        
    }

    return self;
}

@end