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

@import "Fetchers/NUPermissionsFetcher.j"
@import "Fetchers/NUMetadatasFetcher.j"
@import "Fetchers/NUGlobalMetadatasFetcher.j"

NUEgressQOSPolicyDefaultServiceClass_A = @"A";
NUEgressQOSPolicyDefaultServiceClass_B = @"B";
NUEgressQOSPolicyDefaultServiceClass_C = @"C";
NUEgressQOSPolicyDefaultServiceClass_D = @"D";
NUEgressQOSPolicyDefaultServiceClass_E = @"E";
NUEgressQOSPolicyDefaultServiceClass_F = @"F";
NUEgressQOSPolicyDefaultServiceClass_G = @"G";
NUEgressQOSPolicyDefaultServiceClass_H = @"H";
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
    An Egress QoS Policy is a policy that groups rate-limiting profiles, traffic directionality and classifiers to govern the rate of traffic being sent or received by an end-host or application.
*/
@implementation NUEgressQOSPolicy : NURESTObject
{
    /*!
        A unique name of the QoS object
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the parent rate limiter associated with this Egress QoS policy.
    */
    CPString _parentQueueAssociatedRateLimiterID @accessors(property=parentQueueAssociatedRateLimiterID);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The Default Service Class for this Egress QoS Policy. The queue that contains the default service class will be treated as the default queue.
    */
    CPString _defaultServiceClass @accessors(property=defaultServiceClass);
    /*!
        A description of the QoS object
    */
    CPString _description @accessors(property=description);
    /*!
        Rate limiter ID associated to the Network Control Queue for this Egress QoS Policy. 
    */
    CPString _networkCtrlQueueAssociatedRateLimiterID @accessors(property=networkCtrlQueueAssociatedRateLimiterID);
    /*!
        Rate Limiter ID associated to the Management Queue for this Egress QoS Policy. 
    */
    CPString _mgmtQueueAssociatedRateLimiterID @accessors(property=mgmtQueueAssociatedRateLimiterID);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        ID of object associated with this QoS object
    */
    CPString _assocEgressQosId @accessors(property=assocEgressQosId);
    /*!
        ID of the associated CoS Remarking Policy table. 
    */
    CPString _associatedCOSRemarkingPolicyTableID @accessors(property=associatedCOSRemarkingPolicyTableID);
    /*!
        ID of the DSCP Remarking Policy Table associated with this Egress QoS policy.
    */
    CPString _associatedDSCPRemarkingPolicyTableID @accessors(property=associatedDSCPRemarkingPolicyTableID);
    /*!
        ID of the queue1 rate limiter associated with this Egress QoS policy.
    */
    CPString _queue1AssociatedRateLimiterID @accessors(property=queue1AssociatedRateLimiterID);
    /*!
        Queue1 Forwarding Classes for this Egress QoS Policy Possible values are NONE, A, B, C, D, E, F, G, H.
    */
    CPArrayController _queue1ForwardingClasses @accessors(property=queue1ForwardingClasses);
    /*!
        ID of the queue2 rate limiter associated with this Egress QoS policy.
    */
    CPString _queue2AssociatedRateLimiterID @accessors(property=queue2AssociatedRateLimiterID);
    /*!
        Queue2 Forwarding Classes for this Egress QoS Policy Possible values are NONE, A, B, C, D, E, F, G, H.
    */
    CPArrayController _queue2ForwardingClasses @accessors(property=queue2ForwardingClasses);
    /*!
        ID of the queue3 rate limiter associated with this Egress QoS policy.
    */
    CPString _queue3AssociatedRateLimiterID @accessors(property=queue3AssociatedRateLimiterID);
    /*!
        Queue3 Forwarding Classes for this Egress QoS Policy Possible values are NONE, A, B, C, D, E, F, G, H.
    */
    CPArrayController _queue3ForwardingClasses @accessors(property=queue3ForwardingClasses);
    /*!
        ID of the queue4 rate limiter associated with this Egress QoS policy.
    */
    CPString _queue4AssociatedRateLimiterID @accessors(property=queue4AssociatedRateLimiterID);
    /*!
        Queue4 Forwarding Classes for this Egress QoS Policy Possible values are NONE, A, B, C, D, E, F, G, H.
    */
    CPArrayController _queue4ForwardingClasses @accessors(property=queue4ForwardingClasses);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"parentQueueAssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"defaultServiceClass"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"networkCtrlQueueAssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"mgmtQueueAssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"assocEgressQosId"];
        [self exposeLocalKeyPathToREST:@"associatedCOSRemarkingPolicyTableID"];
        [self exposeLocalKeyPathToREST:@"associatedDSCPRemarkingPolicyTableID"];
        [self exposeLocalKeyPathToREST:@"queue1AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue1ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue2AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue2ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue3AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue3ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"queue4AssociatedRateLimiterID"];
        [self exposeLocalKeyPathToREST:@"queue4ForwardingClasses"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end