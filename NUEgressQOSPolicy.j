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

@import "Fetchers/NUGlobalMetadatasFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"

NUEgressQOSPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUEgressQOSPolicyEntityScope_GLOBAL = @"GLOBAL";
NUEgressQOSPolicyQueue1ForwardingClasses_A = @"A";
NUEgressQOSPolicyQueue1ForwardingClasses_B = @"B";
NUEgressQOSPolicyQueue1ForwardingClasses_C = @"C";
NUEgressQOSPolicyQueue1ForwardingClasses_D = @"D";
NUEgressQOSPolicyQueue1ForwardingClasses_E = @"E";
NUEgressQOSPolicyQueue1ForwardingClasses_F = @"F";
NUEgressQOSPolicyQueue1ForwardingClasses_G = @"G";
NUEgressQOSPolicyQueue1ForwardingClasses_H = @"H";
NUEgressQOSPolicyQueue1ForwardingClasses_NONE = @"NONE";
NUEgressQOSPolicyQueue2ForwardingClasses_A = @"A";
NUEgressQOSPolicyQueue2ForwardingClasses_B = @"B";
NUEgressQOSPolicyQueue2ForwardingClasses_C = @"C";
NUEgressQOSPolicyQueue2ForwardingClasses_D = @"D";
NUEgressQOSPolicyQueue2ForwardingClasses_E = @"E";
NUEgressQOSPolicyQueue2ForwardingClasses_F = @"F";
NUEgressQOSPolicyQueue2ForwardingClasses_G = @"G";
NUEgressQOSPolicyQueue2ForwardingClasses_H = @"H";
NUEgressQOSPolicyQueue2ForwardingClasses_NONE = @"NONE";
NUEgressQOSPolicyQueue3ForwardingClasses_A = @"A";
NUEgressQOSPolicyQueue3ForwardingClasses_B = @"B";
NUEgressQOSPolicyQueue3ForwardingClasses_C = @"C";
NUEgressQOSPolicyQueue3ForwardingClasses_D = @"D";
NUEgressQOSPolicyQueue3ForwardingClasses_E = @"E";
NUEgressQOSPolicyQueue3ForwardingClasses_F = @"F";
NUEgressQOSPolicyQueue3ForwardingClasses_G = @"G";
NUEgressQOSPolicyQueue3ForwardingClasses_H = @"H";
NUEgressQOSPolicyQueue3ForwardingClasses_NONE = @"NONE";
NUEgressQOSPolicyQueue4ForwardingClasses_A = @"A";
NUEgressQOSPolicyQueue4ForwardingClasses_B = @"B";
NUEgressQOSPolicyQueue4ForwardingClasses_C = @"C";
NUEgressQOSPolicyQueue4ForwardingClasses_D = @"D";
NUEgressQOSPolicyQueue4ForwardingClasses_E = @"E";
NUEgressQOSPolicyQueue4ForwardingClasses_F = @"F";
NUEgressQOSPolicyQueue4ForwardingClasses_G = @"G";
NUEgressQOSPolicyQueue4ForwardingClasses_H = @"H";
NUEgressQOSPolicyQueue4ForwardingClasses_NONE = @"NONE";


/*!
    The object manipulates Egress QoS parameters attached to a Access Port / VLAN or Network port.
*/
@implementation NUEgressQOSPolicy : NURESTObject
{
    /*!
        ID of object associated with this QoS object
    */
    CPString _assocEgressQosId @accessors(property=assocEgressQosId);
    /*!
        A description of the QoS object
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        A unique name of the QoS object
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the parent rate limiter associated with this Egress QOS policy.
    */
    CPString _parentQueueAssociatedRateLimiterID @accessors(property=parentQueueAssociatedRateLimiterID);
    /*!
        ID of the queue1 rate limiter associated with this Egress QOS policy.
    */
    CPString _queue1AssociatedRateLimiterID @accessors(property=queue1AssociatedRateLimiterID);
    /*!
        Queue1 Forwarding Classes for this Egress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue1ForwardingClasses @accessors(property=queue1ForwardingClasses);
    /*!
        ID of the queue2 rate limiter associated with this Egress QOS policy.
    */
    CPString _queue2AssociatedRateLimiterID @accessors(property=queue2AssociatedRateLimiterID);
    /*!
        Queue2 Forwarding Classes for this Egress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue2ForwardingClasses @accessors(property=queue2ForwardingClasses);
    /*!
        ID of the queue3 rate limiter associated with this Egress QOS policy.
    */
    CPString _queue3AssociatedRateLimiterID @accessors(property=queue3AssociatedRateLimiterID);
    /*!
        Queue3 Forwarding Classes for this Egress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue3ForwardingClasses @accessors(property=queue3ForwardingClasses);
    /*!
        ID of the queue4 rate limiter associated with this Egress QOS policy.
    */
    CPString _queue4AssociatedRateLimiterID @accessors(property=queue4AssociatedRateLimiterID);
    /*!
        Queue4 Forwarding Classes for this Egress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue4ForwardingClasses @accessors(property=queue4ForwardingClasses);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"egressqospolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"assocEgressQosId"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"parentQueueAssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue1AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue1ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue2AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue2ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue3AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue3ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue4AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue4ForwardingClasses"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end