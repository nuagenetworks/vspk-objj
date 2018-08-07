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

NUIngressQOSPolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUIngressQOSPolicyEntityScope_GLOBAL = @"GLOBAL";
NUIngressQOSPolicyQueue1ForwardingClasses_A = @"A";
NUIngressQOSPolicyQueue1ForwardingClasses_B = @"B";
NUIngressQOSPolicyQueue1ForwardingClasses_C = @"C";
NUIngressQOSPolicyQueue1ForwardingClasses_D = @"D";
NUIngressQOSPolicyQueue1ForwardingClasses_E = @"E";
NUIngressQOSPolicyQueue1ForwardingClasses_F = @"F";
NUIngressQOSPolicyQueue1ForwardingClasses_G = @"G";
NUIngressQOSPolicyQueue1ForwardingClasses_H = @"H";
NUIngressQOSPolicyQueue1ForwardingClasses_NONE = @"NONE";
NUIngressQOSPolicyQueue2ForwardingClasses_A = @"A";
NUIngressQOSPolicyQueue2ForwardingClasses_B = @"B";
NUIngressQOSPolicyQueue2ForwardingClasses_C = @"C";
NUIngressQOSPolicyQueue2ForwardingClasses_D = @"D";
NUIngressQOSPolicyQueue2ForwardingClasses_E = @"E";
NUIngressQOSPolicyQueue2ForwardingClasses_F = @"F";
NUIngressQOSPolicyQueue2ForwardingClasses_G = @"G";
NUIngressQOSPolicyQueue2ForwardingClasses_H = @"H";
NUIngressQOSPolicyQueue2ForwardingClasses_NONE = @"NONE";
NUIngressQOSPolicyQueue3ForwardingClasses_A = @"A";
NUIngressQOSPolicyQueue3ForwardingClasses_B = @"B";
NUIngressQOSPolicyQueue3ForwardingClasses_C = @"C";
NUIngressQOSPolicyQueue3ForwardingClasses_D = @"D";
NUIngressQOSPolicyQueue3ForwardingClasses_E = @"E";
NUIngressQOSPolicyQueue3ForwardingClasses_F = @"F";
NUIngressQOSPolicyQueue3ForwardingClasses_G = @"G";
NUIngressQOSPolicyQueue3ForwardingClasses_H = @"H";
NUIngressQOSPolicyQueue3ForwardingClasses_NONE = @"NONE";
NUIngressQOSPolicyQueue4ForwardingClasses_A = @"A";
NUIngressQOSPolicyQueue4ForwardingClasses_B = @"B";
NUIngressQOSPolicyQueue4ForwardingClasses_C = @"C";
NUIngressQOSPolicyQueue4ForwardingClasses_D = @"D";
NUIngressQOSPolicyQueue4ForwardingClasses_E = @"E";
NUIngressQOSPolicyQueue4ForwardingClasses_F = @"F";
NUIngressQOSPolicyQueue4ForwardingClasses_G = @"G";
NUIngressQOSPolicyQueue4ForwardingClasses_H = @"H";
NUIngressQOSPolicyQueue4ForwardingClasses_NONE = @"NONE";


/*!
    A Tunnel Shaper QoS Policy is a policy that groups rate-limiting profiles, traffic directionality and classifiers to govern the rate of traffic being sent or received by an end-host or application.
*/
@implementation NUIngressQOSPolicy : NURESTObject
{
    /*!
        A unique name of the QoS object
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the parent rate limiter associated with this Ingress QOS policy.
    */
    CPString _parentQueueAssociatedRateLimiterID @accessors(property=parentQueueAssociatedRateLimiterID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        A description of the QoS object
    */
    CPString _description @accessors(property=description);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        ID of object associated with this QoS object
    */
    CPString _assocEgressQosId @accessors(property=assocEgressQosId);
    /*!
        ID of the queue1 rate limiter associated with this Ingress QOS policy.
    */
    CPString _queue1AssociatedRateLimiterID @accessors(property=queue1AssociatedRateLimiterID);
    /*!
        Queue1 Forwarding Classes for this Ingress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue1ForwardingClasses @accessors(property=queue1ForwardingClasses);
    /*!
        ID of the queue2 rate limiter associated with this Ingress QOS policy.
    */
    CPString _queue2AssociatedRateLimiterID @accessors(property=queue2AssociatedRateLimiterID);
    /*!
        Queue2 Forwarding Classes for this Ingress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue2ForwardingClasses @accessors(property=queue2ForwardingClasses);
    /*!
        ID of the queue3 rate limiter associated with this Ingress QOS policy.
    */
    CPString _queue3AssociatedRateLimiterID @accessors(property=queue3AssociatedRateLimiterID);
    /*!
        Queue3 Forwarding Classes for this Ingress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue3ForwardingClasses @accessors(property=queue3ForwardingClasses);
    /*!
        ID of the queue4 rate limiter associated with this Ingress QOS policy.
    */
    CPString _queue4AssociatedRateLimiterID @accessors(property=queue4AssociatedRateLimiterID);
    /*!
        Queue4 Forwarding Classes for this Ingress QOS Policy Possible values are NONE, A, B, C, D, E, F, G, H, .
    */
    CPArrayController _queue4ForwardingClasses @accessors(property=queue4ForwardingClasses);
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
    return @"ingressqospolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"parentQueueAssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"assocEgressQosId"];
        [self exposeLocalKeyPathToREST:@"queue1AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue1ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue2AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue2ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue3AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue3ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue4AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue4ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end