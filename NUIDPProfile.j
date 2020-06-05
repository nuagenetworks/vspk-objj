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

@import "Fetchers/NUIDPProfileActionsFetcher.j"


/*!
    IDP Profile/Rules are used to detect intrusion attempts and/or inspect network traffic and take appropriate action.
*/
@implementation NUIDPProfile : NURESTObject
{
    /*!
        Symbolic name of the IDP Rule
    */
    CPString _name @accessors(property=name);
    /*!
        Descriptive text for IDP Profile
    */
    CPString _description @accessors(property=description);
    /*!
        Enable protection against insertion/evasion attacks.
    */
    BOOL _protectAgainstInsertionEvasion @accessors(property=protectAgainstInsertionEvasion);
    /*!
        The ID of the associated Enterprise
    */
    CPString _associatedEnterpriseID @accessors(property=associatedEnterpriseID);
    
    NUIDPProfileActionsFetcher _childrenIDPProfileActions @accessors(property=childrenIDPProfileActions);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"idpprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"protectAgainstInsertionEvasion"];
        [self exposeLocalKeyPathToREST:@"associatedEnterpriseID"];
        
        _childrenIDPProfileActions = [NUIDPProfileActionsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end