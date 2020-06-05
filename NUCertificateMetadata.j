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



/*!
    An object to store metadata about an end entity's certificate.
*/
@implementation NUCertificateMetadata : NURESTObject
{
    /*!
        The SHA1 FingerPrint of the certificate.
    */
    CPString _SHA1Fingerprint @accessors(property=SHA1Fingerprint);
    /*!
        The unique serial number of the certificate assigned by the certificate authority.
    */
    CPString _serial @accessors(property=serial);
    /*!
        The end date of the certificate validity period.
    */
    CPNumber _notAfter @accessors(property=notAfter);
    /*!
        The start date of the certificate validity period.
    */
    CPNumber _notBefore @accessors(property=notBefore);
    /*!
        The distinguished name of the certificate issuer.
    */
    CPString _issuer @accessors(property=issuer);
    /*!
        The subject distinguished name of the certificate.
    */
    CPString _subject @accessors(property=subject);
    
    
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
        [self exposeLocalKeyPathToREST:@"SHA1Fingerprint"];
        [self exposeLocalKeyPathToREST:@"serial"];
        [self exposeLocalKeyPathToREST:@"notAfter"];
        [self exposeLocalKeyPathToREST:@"notBefore"];
        [self exposeLocalKeyPathToREST:@"issuer"];
        [self exposeLocalKeyPathToREST:@"subject"];
        
        
        
    }

    return self;
}

@end