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
@import "Fetchers/NUEventLogsFetcher.j"

NUPublicNetworkMacroEntityScope_ENTERPRISE = @"ENTERPRISE";
NUPublicNetworkMacroEntityScope_GLOBAL = @"GLOBAL";
NUPublicNetworkMacroIPType_DUALSTACK = @"DUALSTACK";
NUPublicNetworkMacroIPType_IPV4 = @"IPV4";
NUPublicNetworkMacroIPType_IPV6 = @"IPV6";


/*!
    Similar to the enterprise macros, the public network macro allows an administrator of an enterprise to define range of subnets that can be used by users in the ACL definition.
*/
@implementation NUPublicNetworkMacro : NURESTObject
{
    /*!
        IPv4 or IPv6(only IPv4 is supported in R1.0) Possible values are IPV4, IPV6, .
    */
    CPString _IPType @accessors(property=IPType);
    /*!
        IPv6 address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _IPv6Address @accessors(property=IPv6Address);
    /*!
        Name of the current entity(Zone or zone template or subnet etc..) Valid characters are alphabets, numbers, space and hyphen( - ).
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        IP address of the subnet defined. In case of zone, this is an optional field for and allows users to allocate an IP address range to a zone. The VSD will auto-assign IP addresses to subnets from this range if a specific IP address is not defined for the subnet
    */
    CPString _address @accessors(property=address);
    /*!
        Netmask of the subnet defined
    */
    CPString _netmask @accessors(property=netmask);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
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
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUEventLogsFetcher _childrenEventLogs @accessors(property=childrenEventLogs);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"publicnetwork";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"IPType"];
        [self exposeLocalKeyPathToREST:@"IPv6Address"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"address"];
        [self exposeLocalKeyPathToREST:@"netmask"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenEventLogs = [NUEventLogsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end