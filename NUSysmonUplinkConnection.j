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


NUSysmonUplinkConnectionDTLSState_ADMIN_DOWN = @"ADMIN_DOWN";
NUSysmonUplinkConnectionDTLSState_DOWN = @"DOWN";
NUSysmonUplinkConnectionDTLSState_NONE = @"NONE";
NUSysmonUplinkConnectionDTLSState_UP = @"UP";
NUSysmonUplinkConnectionJSONState_ADMIN_DOWN = @"ADMIN_DOWN";
NUSysmonUplinkConnectionJSONState_DOWN = @"DOWN";
NUSysmonUplinkConnectionJSONState_NONE = @"NONE";
NUSysmonUplinkConnectionJSONState_UP = @"UP";
NUSysmonUplinkConnectionOpenflowState_ADMIN_DOWN = @"ADMIN_DOWN";
NUSysmonUplinkConnectionOpenflowState_DOWN = @"DOWN";
NUSysmonUplinkConnectionOpenflowState_NONE = @"NONE";
NUSysmonUplinkConnectionOpenflowState_UP = @"UP";


/*!
    Models the connection between a VRS and the controller.
*/
@implementation NUSysmonUplinkConnection : NURESTObject
{
    /*!
        JSON Connection Status
    */
    CPString _JSONState @accessors(property=JSONState);
    /*!
        DTLS Connection State
    */
    CPString _DTLSState @accessors(property=DTLSState);
    /*!
        Datapath Uplink ID
    */
    CPString _datapathUplinkId @accessors(property=datapathUplinkId);
    /*!
        Openflow Connection Status
    */
    CPString _openflowState @accessors(property=openflowState);
    /*!
        Private IP of connection
    */
    CPString _privateIP @accessors(property=privateIP);
    /*!
        Public IP of connection
    */
    CPString _publicIP @accessors(property=publicIP);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"None";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"JSONState"];
        [self exposeLocalKeyPathToREST:@"DTLSState"];
        [self exposeLocalKeyPathToREST:@"datapathUplinkId"];
        [self exposeLocalKeyPathToREST:@"openflowState"];
        [self exposeLocalKeyPathToREST:@"privateIP"];
        [self exposeLocalKeyPathToREST:@"publicIP"];
        
        
        
    }

    return self;
}

@end