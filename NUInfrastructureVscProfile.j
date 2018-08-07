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

NUInfrastructureVscProfileAddressFamily_DUALSTACK = @"DUALSTACK";
NUInfrastructureVscProfileAddressFamily_IPV4 = @"IPV4";
NUInfrastructureVscProfileAddressFamily_IPV6 = @"IPV6";
NUInfrastructureVscProfileEntityScope_ENTERPRISE = @"ENTERPRISE";
NUInfrastructureVscProfileEntityScope_GLOBAL = @"GLOBAL";


/*!
    Infrastructure VSC Profiles identify a set of controllers which will be used to connect bootstrapped NSGs.
*/
@implementation NUInfrastructureVscProfile : NURESTObject
{
    /*!
        Name of the Infrastructure VSC Profile
    */
    CPString _name @accessors(property=name);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        The type of IP address used in the identification of the active and standby controllers.
    */
    CPString _addressFamily @accessors(property=addressFamily);
    /*!
        Second VSC Controller :  IP Address of the secondary VSC system NSG instances associated to this profile will be reaching for.
    */
    CPString _secondController @accessors(property=secondController);
    /*!
        Second VSC Controller:  IPv6 address of the secondary VSC system NSG instances associated to this profile will be reaching for.
    */
    CPString _secondControllerV6 @accessors(property=secondControllerV6);
    /*!
        A description of the VSC Profile instance created.
    */
    CPString _description @accessors(property=description);
    /*!
        First VSC Controller :  IP Address of the first VSC system NSG instances associated to this profile will be reaching for.
    */
    CPString _firstController @accessors(property=firstController);
    /*!
        First VSC Controller: IPv6 address of the first VSC system NSG instances associated to this profile will be reaching for.
    */
    CPString _firstControllerV6 @accessors(property=firstControllerV6);
    /*!
        Enterprise/Organisation associated with this Profile instance.
    */
    CPString _enterpriseID @accessors(property=enterpriseID);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Openflow echo timer in milliseconds.
    */
    CPNumber _probeInterval @accessors(property=probeInterval);
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
    return @"infrastructurevscprofile";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"addressFamily"];
        [self exposeLocalKeyPathToREST:@"secondController"];
        [self exposeLocalKeyPathToREST:@"secondControllerV6"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"firstController"];
        [self exposeLocalKeyPathToREST:@"firstControllerV6"];
        [self exposeLocalKeyPathToREST:@"enterpriseID"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"probeInterval"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        _probeInterval = 5000;
        
    }

    return self;
}

@end