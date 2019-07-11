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


NUForwardingClassForwardingClass_A = @"A";
NUForwardingClassForwardingClass_B = @"B";
NUForwardingClassForwardingClass_C = @"C";
NUForwardingClassForwardingClass_D = @"D";
NUForwardingClassForwardingClass_E = @"E";
NUForwardingClassForwardingClass_F = @"F";
NUForwardingClassForwardingClass_G = @"G";
NUForwardingClassForwardingClass_H = @"H";


/*!
    Contains the Forwarding Class and its usage for load balancing.
*/
@implementation NUForwardingClass : NURESTObject
{
    /*!
        Indicates whether the Service Class is used to used for load balancing in the forwarding path.
    */
    BOOL _loadBalancing @accessors(property=loadBalancing);
    /*!
        Class of service to be used.Service classes in order of priority are A, B, C, D, E, F, G, and H.
    */
    CPString _forwardingClass @accessors(property=forwardingClass);
    
    
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
        [self exposeLocalKeyPathToREST:@"loadBalancing"];
        [self exposeLocalKeyPathToREST:@"forwardingClass"];
        
        
        
    }

    return self;
}

@end