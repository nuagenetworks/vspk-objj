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
        The bootstrap action to perform.
    */
    CPString _action @accessors(property=action);
    /*!
        The CA Certificate Chain
    */
    CPString _cacert @accessors(property=cacert);
    /*!
        The signed Certificate
    */
    CPString _cert @accessors(property=cert);
    /*!
        The configuration URL
    */
    CPString _configURL @accessors(property=configURL);
    /*!
        The CSR of the request
    */
    CPString _csr @accessors(property=csr);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        The authentication hash of this request
    */
    CPString _hash @accessors(property=hash);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The random seed for this request
    */
    CPString _seed @accessors(property=seed);
    /*!
        TPM SRK passphrase
    */
    CPString _srkPassword @accessors(property=srkPassword);
    /*!
        The agent status for the request
    */
    CPString _status @accessors(property=status);
    /*!
        TPM owner passphrase
    */
    CPString _tpmOwnerPassword @accessors(property=tpmOwnerPassword);
    /*!
        Gateway TPM Status reported by the device when generating CSR.
    */
    CPNumber _tpmState @accessors(property=tpmState);
    /*!
        VSD Server time when an NSG is initiating a Bootstrapping request
    */
    CPNumber _vsdTime @accessors(property=vsdTime);
    
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    
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
        [self exposeLocalKeyPathToREST:@"action"];
        [self exposeLocalKeyPathToREST:@"cacert"];
        [self exposeLocalKeyPathToREST:@"cert"];
        [self exposeLocalKeyPathToREST:@"configURL"];
        [self exposeLocalKeyPathToREST:@"csr"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"hash"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"seed"];
        [self exposeLocalKeyPathToREST:@"srkPassword"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"tpmOwnerPassword"];
        [self exposeLocalKeyPathToREST:@"tpmState"];
        [self exposeLocalKeyPathToREST:@"vsdTime"];
        
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end