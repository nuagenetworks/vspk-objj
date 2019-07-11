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

NUForwardingPathListEntryEntityScope_ENTERPRISE = @"ENTERPRISE";
NUForwardingPathListEntryEntityScope_GLOBAL = @"GLOBAL";
NUForwardingPathListEntryFCOverride_A = @"A";
NUForwardingPathListEntryFCOverride_B = @"B";
NUForwardingPathListEntryFCOverride_C = @"C";
NUForwardingPathListEntryFCOverride_D = @"D";
NUForwardingPathListEntryFCOverride_E = @"E";
NUForwardingPathListEntryFCOverride_F = @"F";
NUForwardingPathListEntryFCOverride_G = @"G";
NUForwardingPathListEntryFCOverride_H = @"H";
NUForwardingPathListEntryFCOverride_NONE = @"NONE";
NUForwardingPathListEntryForwardingAction_IKE = @"IKE";
NUForwardingPathListEntryForwardingAction_OVERLAY = @"OVERLAY";
NUForwardingPathListEntryForwardingAction_UNDERLAY_PAT = @"UNDERLAY_PAT";
NUForwardingPathListEntryForwardingAction_UNDERLAY_ROUTE = @"UNDERLAY_ROUTE";
NUForwardingPathListEntryRemoteUplinkPreference_DEFAULT = @"DEFAULT";
NUForwardingPathListEntryRemoteUplinkPreference_PRIMARY = @"PRIMARY";
NUForwardingPathListEntryRemoteUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUForwardingPathListEntryRemoteUplinkPreference_SECONDARY = @"SECONDARY";
NUForwardingPathListEntryRemoteUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";
NUForwardingPathListEntryUplinkPreference_DEFAULT = @"DEFAULT";
NUForwardingPathListEntryUplinkPreference_PRIMARY = @"PRIMARY";
NUForwardingPathListEntryUplinkPreference_PRIMARY_SECONDARY = @"PRIMARY_SECONDARY";
NUForwardingPathListEntryUplinkPreference_SECONDARY = @"SECONDARY";
NUForwardingPathListEntryUplinkPreference_SECONDARY_PRIMARY = @"SECONDARY_PRIMARY";


/*!
    Forwarding path list entry to be associated with forwarding path list for l4 based policy to PAT / IKE to underlay.
*/
@implementation NUForwardingPathListEntry : NURESTObject
{
    /*!
        Value of the Service Class to be overridden in the packet when the match conditions are satisfied.
    */
    CPString _FCOverride @accessors(property=FCOverride);
    /*!
        Remarking value for the DSCP field in IP header of customer packet.DSCP value range from enumeration of 65 values: NONE, 0, 1, ..., 63
    */
    CPString _DSCPRemarking @accessors(property=DSCPRemarking);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Indicates the preferencial path selection for network traffic.
    */
    CPString _remoteUplinkPreference @accessors(property=remoteUplinkPreference);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Type of forwarding action associated with this entry.
    */
    CPString _forwardingAction @accessors(property=forwardingAction);
    /*!
        Type of forwarding uplink preference associated with this entry. In case of forwardingAction "IKE", uplinkPreference must not be set.
    */
    CPString _uplinkPreference @accessors(property=uplinkPreference);
    /*!
        Autogenerated priority of a Forwarding Path List Entry for a given Forwarding Path List.
    */
    CPNumber _priority @accessors(property=priority);
    /*!
        This flag denotes whether the Uplink Preference configured by the user will work with AAR or will over-ride AAR.
    */
    BOOL _isSLAAware @accessors(property=isSLAAware);
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
    return @"forwardingpathlistentry";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"FCOverride"];
        [self exposeLocalKeyPathToREST:@"DSCPRemarking"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"remoteUplinkPreference"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"forwardingAction"];
        [self exposeLocalKeyPathToREST:@"uplinkPreference"];
        [self exposeLocalKeyPathToREST:@"priority"];
        [self exposeLocalKeyPathToREST:@"isSLAAware"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end