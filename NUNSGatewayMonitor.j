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



/*!
    This API can be used to gather read-only information about an NSG, including information on its state, system metrics, alarm counts, location and version. It is a single view of the full data available for an NSG.
*/
@implementation NUNSGatewayMonitor : NURESTObject
{
    /*!
        information about VRS reported from sysmon in JSON format. Has info about cpu usage, memory usage, physical interfaces etc.
    */
    NURESTObject _vrsinfo @accessors(property=vrsinfo);
    /*!
        List of controllers associated with the nsg
    */
    CPArrayController _vscs @accessors(property=vscs);
    /*!
        An embedded object from the nsinfo entity from VSD. Contains info such as software version, CPU type, BIOS version etc. The embedded object is returned in JSON format
    */
    NURESTObject _nsginfo @accessors(property=nsginfo);
    /*!
        Information from the NSGState object in VSD in JSON format. Contains information about connection status, TPM status, operation mode etc.
    */
    NURESTObject _nsgstate @accessors(property=nsgstate);
    /*!
        NSG summary in JSON format - contains alarm counts, locality, bootstrap info etc.
    */
    NURESTObject _nsgsummary @accessors(property=nsgsummary);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"nsgatewaysmonitor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"vrsinfo"];
        [self exposeLocalKeyPathToREST:@"vscs"];
        [self exposeLocalKeyPathToREST:@"nsginfo"];
        [self exposeLocalKeyPathToREST:@"nsgstate"];
        [self exposeLocalKeyPathToREST:@"nsgsummary"];
        
        
        
    }

    return self;
}

@end