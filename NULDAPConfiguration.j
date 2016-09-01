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

NULDAPConfigurationEntityScope_ENTERPRISE = @"ENTERPRISE";
NULDAPConfigurationEntityScope_GLOBAL = @"GLOBAL";


/*!
    Configuration of LDAP parameters associated with an enterprise. This will enable authentication through an external LDAP server for this enterprise.
*/
@implementation NULDAPConfiguration : NURESTObject
{
    /*!
        Enable SSL for communication with the LDAP server
    */
    BOOL _SSLEnabled @accessors(property=SSLEnabled);
    /*!
        This attribute is a mandatory field for LDAP authorization. Password that will be used to verify the integrity of groups and users in LDAP server for the enterprise.
    */
    CPString _password @accessors(property=password);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Accept all certificates from the LDAP server
    */
    BOOL _acceptAllCertificates @accessors(property=acceptAllCertificates);
    /*!
        The certificate to authenticate with the LDAP server
    */
    CPString _certificate @accessors(property=certificate);
    /*!
        The LDAP server IP or FQDN
    */
    CPString _server @accessors(property=server);
    /*!
        To enable LDAP authentication for an enterprise, set this attribute to true. If enabled is set to false, authorizationEnabled attribute is ignored and LDAP is not used for authentication as well as authorization. The relationship between enabled and authorizationEnabled attributes is as follows, enabled = true, authorizationEnabled = false, LDAP is used only for Authentication enabled = true, authorizationEnabled = true, LDAP is used for both authentication and authorization. enabled = false, authorizationEnabled = true, LDAP is not used. enabled = false, authorizationEnabled = false, LDAP is not used.
    */
    BOOL _enabled @accessors(property=enabled);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Port to be used for the LDAP server
    */
    CPString _port @accessors(property=port);
    /*!
        This attribute is a mandatory field for LDAP authorization. When LDAP is used for authorization for an enterprise, the group DN will be used to get the list of VSD specific groups in LDAP server for the enterprise. For example, OU=VSDGroups,DC=company,DC=com
    */
    CPString _groupDN @accessors(property=groupDN);
    /*!
        The DN template to be used for authentication. The template needs to have a string _USERID_ in it. This will be replaced by  the userId of the user who makes the REST API call. For example, template UID=_USERID_,OU=company,DC=com will converted to  UID=admin,OU=company,DC=com and this will be used as DN for LDAP authentication.
    */
    CPString _userDNTemplate @accessors(property=userDNTemplate);
    /*!
        To enable LDAP authorization for an enterprise, both authorizationEnabled and enabled attributes must be set to true. If enabled attribute is not set, this attribute is ignored. The relationship between enabled and authorizationEnabled attributes is as follows, enabled = true, authorizationEnabled = false, LDAP is used only for Authentication. enabled = true, authorizationEnabled = true, LDAP is used for both authentication and authorization. enabled = false, authorizationEnabled = true, LDAP is not used. enabled = false, authorizationEnabled = false, LDAP is not used.
    */
    BOOL _authorizationEnabled @accessors(property=authorizationEnabled);
    /*!
        This attribute is a mandatory field for LDAP authorization. When LDAP is used for authorization for an enterprise, the user DN that will be used to verify the integrity of groups and users in LDAP server for the enterprise. For example, CN=groupAdmin,OU=VSD_USERS,OU=Personal,OU=Domain Users,DC=company,DC=com
    */
    CPString _authorizingUserDN @accessors(property=authorizingUserDN);
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
    return @"ldapconfiguration";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"SSLEnabled"];
        [self exposeLocalKeyPathToREST:@"password"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"acceptAllCertificates"];
        [self exposeLocalKeyPathToREST:@"certificate"];
        [self exposeLocalKeyPathToREST:@"server"];
        [self exposeLocalKeyPathToREST:@"enabled"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"port"];
        [self exposeLocalKeyPathToREST:@"groupDN"];
        [self exposeLocalKeyPathToREST:@"userDNTemplate"];
        [self exposeLocalKeyPathToREST:@"authorizationEnabled"];
        [self exposeLocalKeyPathToREST:@"authorizingUserDN"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end