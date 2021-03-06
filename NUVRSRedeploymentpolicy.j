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


NUVRSRedeploymentpolicyEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVRSRedeploymentpolicyEntityScope_GLOBAL = @"GLOBAL";


/*!
    None
*/
@implementation NUVRSRedeploymentpolicy : NURESTObject
{
    /*!
        ALU br0 Status Redeployment Enabled
    */
    BOOL _ALUbr0StatusRedeploymentEnabled @accessors(property=ALUbr0StatusRedeploymentEnabled);
    /*!
        CPU Utilization Redeployment Enabled
    */
    BOOL _CPUUtilizationRedeploymentEnabled @accessors(property=CPUUtilizationRedeploymentEnabled);
    /*!
        CPU Utilization Threshold
    */
    CPNumber _CPUUtilizationThreshold @accessors(property=CPUUtilizationThreshold);
    /*!
        VRS Corrective Action Delay in seconds
    */
    CPNumber _VRSCorrectiveActionDelay @accessors(property=VRSCorrectiveActionDelay);
    /*!
        VRS Process Redeployment Enabled
    */
    BOOL _VRSProcessRedeploymentEnabled @accessors(property=VRSProcessRedeploymentEnabled);
    /*!
        VRSVSC Status Redeployment Enabled
    */
    BOOL _VRSVSCStatusRedeploymentEnabled @accessors(property=VRSVSCStatusRedeploymentEnabled);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        redeployment Delay
    */
    CPNumber _redeploymentDelay @accessors(property=redeploymentDelay);
    /*!
        memory Utilization Redeployment Enabled
    */
    BOOL _memoryUtilizationRedeploymentEnabled @accessors(property=memoryUtilizationRedeploymentEnabled);
    /*!
        memory Utilization Threshold
    */
    CPNumber _memoryUtilizationThreshold @accessors(property=memoryUtilizationThreshold);
    /*!
        deployment count threshold
    */
    CPNumber _deploymentCountThreshold @accessors(property=deploymentCountThreshold);
    /*!
        jesxmon Process Redeployment Enabled
    */
    BOOL _jesxmonProcessRedeploymentEnabled @accessors(property=jesxmonProcessRedeploymentEnabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Log disk Utilization Redeployment Enabled
    */
    BOOL _logDiskUtilizationRedeploymentEnabled @accessors(property=logDiskUtilizationRedeploymentEnabled);
    /*!
        Log disk Utilization Threshold
    */
    CPNumber _logDiskUtilizationThreshold @accessors(property=logDiskUtilizationThreshold);
    /*!
        Root disk Utilization Redeployment Enabled
    */
    BOOL _rootDiskUtilizationRedeploymentEnabled @accessors(property=rootDiskUtilizationRedeploymentEnabled);
    /*!
        Root disk Utilization Threshold
    */
    CPNumber _rootDiskUtilizationThreshold @accessors(property=rootDiskUtilizationThreshold);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        Identifies the user that has created this object.
    */
    CPString _owner @accessors(property=owner);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vrsredeploymentpolicy";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"ALUbr0StatusRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"CPUUtilizationRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"CPUUtilizationThreshold"];
        [self exposeLocalKeyPathToREST:@"VRSCorrectiveActionDelay"];
        [self exposeLocalKeyPathToREST:@"VRSProcessRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"VRSVSCStatusRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"redeploymentDelay"];
        [self exposeLocalKeyPathToREST:@"memoryUtilizationRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"memoryUtilizationThreshold"];
        [self exposeLocalKeyPathToREST:@"deploymentCountThreshold"];
        [self exposeLocalKeyPathToREST:@"jesxmonProcessRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"logDiskUtilizationRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"logDiskUtilizationThreshold"];
        [self exposeLocalKeyPathToREST:@"rootDiskUtilizationRedeploymentEnabled"];
        [self exposeLocalKeyPathToREST:@"rootDiskUtilizationThreshold"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        
        
    }

    return self;
}

@end