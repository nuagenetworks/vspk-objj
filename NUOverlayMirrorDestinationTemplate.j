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


NUOverlayMirrorDestinationTemplateEndPointType_NONE = @"NONE";
NUOverlayMirrorDestinationTemplateEndPointType_VIRTUAL_WIRE = @"VIRTUAL_WIRE";
NUOverlayMirrorDestinationTemplateTriggerType_GARP = @"GARP";
NUOverlayMirrorDestinationTemplateTriggerType_NONE = @"NONE";


/*!
    None
*/
@implementation NUOverlayMirrorDestinationTemplate : NURESTObject
{
    /*!
        Name of this overlay mirror destination template
    */
    CPString _name @accessors(property=name);
    /*!
        Allow/Disallow redundant appliances and VIP
    */
    BOOL _redundancyEnabled @accessors(property=redundancyEnabled);
    /*!
        Description of this overlay mirror destination template
    */
    CPString _description @accessors(property=description);
    /*!
        VPortTagEndPointType is an enum. It defines the type of header rewrite and forwarding performed by VRS when the endpoint is used as a overlay mirror destination. Possible value is VIRTUAL_WIRE.
    */
    CPString _endPointType @accessors(property=endPointType);
    /*!
        Trigger type, could be NONE/GARP - THIS IS READONLY
    */
    CPString _triggerType @accessors(property=triggerType);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"overlaymirrordestinationtemplate";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"redundancyEnabled"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"endPointType"];
        [self exposeLocalKeyPathToREST:@"triggerType"];
        
        
        
    }

    return self;
}

@end