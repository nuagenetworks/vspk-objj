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

NUBootstrapActivationAction_AUTHENTICATE = @"AUTHENTICATE";
NUBootstrapActivationAction_BOOTSTRAP_COMPLETE = @"BOOTSTRAP_COMPLETE";
NUBootstrapActivationAction_CERTIFICATE_RENEW = @"CERTIFICATE_RENEW";
NUBootstrapActivationAction_CERTIFICATE_REVOKE = @"CERTIFICATE_REVOKE";
NUBootstrapActivationAction_CERTIFICATE_SIGNED = @"CERTIFICATE_SIGNED";
NUBootstrapActivationAction_CONFIRM = @"CONFIRM";
NUBootstrapActivationAction_INITIATE = @"INITIATE";
NUBootstrapActivationAction_INITIATE_RENEW = @"INITIATE_RENEW";
NUBootstrapActivationAction_NEW_NCPE_AUTH_REQUIRED = @"NEW_NCPE_AUTH_REQUIRED";
NUBootstrapActivationAction_NO_AUTH_REQUIRED = @"NO_AUTH_REQUIRED";
NUBootstrapActivationAction_ROLLBACK = @"ROLLBACK";
NUBootstrapActivationAction_ROLLED_BACK = @"ROLLED_BACK";
NUBootstrapActivationAction_UNSPECIFIED = @"UNSPECIFIED";
NUBootstrapActivationEntityScope_ENTERPRISE = @"ENTERPRISE";
NUBootstrapActivationEntityScope_GLOBAL = @"GLOBAL";


/*!
    NSG Gateway initiated Bootstrap Activation
*/
@implementation NUBootstrapActivation : NURESTObject
{
    /*!
        The CA Certificate Chain
    */
    CPString _cacert @accessors(property=cacert);
    /*!
        The authentication hash of this request
    */
    CPString _hash @accessors(property=hash);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Time stamp when this object was last updated.
    */
    CPString _lastUpdatedDate @accessors(property=lastUpdatedDate);
    /*!
        The bootstrap action to perform.
    */
    CPString _action @accessors(property=action);
    /*!
        The random seed for this request
    */
    CPString _seed @accessors(property=seed);
    /*!
        The signed Certificate
    */
    CPString _cert @accessors(property=cert);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The configuration URL
    */
    CPString _configURL @accessors(property=configURL);
    /*!
        TPM owner passphrase
    */
    CPString _tpmOwnerPassword @accessors(property=tpmOwnerPassword);
    /*!
        Gateway TPM Status reported by the device when generating CSR.
    */
    CPNumber _tpmState @accessors(property=tpmState);
    /*!
        Time stamp when this object was created.
    */
    CPString _creationDate @accessors(property=creationDate);
    /*!
        TPM SRK passphrase
    */
    CPString _srkPassword @accessors(property=srkPassword);
    /*!
        VSD Server time when an NSG is initiating a Bootstrapping request
    */
    CPNumber _vsdTime @accessors(property=vsdTime);
    /*!
        The CSR of the request
    */
    CPString _csr @accessors(property=csr);
    /*!
        Object type of the associated entity.
    */
    CPString _associatedEntityType @accessors(property=associatedEntityType);
    /*!
        The agent status for the request
    */
    CPString _status @accessors(property=status);
    /*!
        Indicates whether auto bootstrap is being used to bootstrap this NSG
    */
    BOOL _autoBootstrap @accessors(property=autoBootstrap);
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
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"bootstrapactivation";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"cacert"];
        [self exposeLocalKeyPathToREST:@"hash"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedDate"];
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"seed"];
        [self exposeLocalKeyPathToREST:@"cert"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"configURL"];
        [self exposeLocalKeyPathToREST:@"tpmOwnerPassword"];
        [self exposeLocalKeyPathToREST:@"tpmState"];
        [self exposeLocalKeyPathToREST:@"creationDate"];
        [self exposeLocalKeyPathToREST:@"srkPassword"];
        [self exposeLocalKeyPathToREST:@"vsdTime"];
        [self exposeLocalKeyPathToREST:@"csr"];
        [self exposeLocalKeyPathToREST:@"associatedEntityType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"autoBootstrap"];
        [self exposeLocalKeyPathToREST:@"owner"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end