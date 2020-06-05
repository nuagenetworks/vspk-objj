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
@import "Fetchers/NUVLANsFetcher.j"
@import "Fetchers/NUAlarmsFetcher.j"
@import "Fetchers/NUEnterprisePermissionsFetcher.j"

NUEthernetSegmentGroupPortType_ACCESS = @"ACCESS";


/*!
    Group of Ethernet Segments with same ID.
*/
@implementation NUEthernetSegmentGroup : NURESTObject
{
    /*!
        VLAN Range of the EthernetSegment. Format must conform to a-b,c,d-f where a,b,c,d,f are integers from range 0 to 4094.
    */
    CPString _VLANRange @accessors(property=VLANRange);
    /*!
        Name of the Ethernet Segment Group
    */
    CPString _name @accessors(property=name);
    /*!
        Description of the Ethernet Segment Group
    */
    CPString _description @accessors(property=description);
    /*!
        Indicates if Ethernet Segment is Virtual.
    */
    BOOL _virtual @accessors(property=virtual);
    /*!
        Type of the Port.
    */
    CPString _portType @accessors(property=portType);
    /*!
        Unique Identifier of the Ethernet Segment.
    */
    CPString _ethernetSegmentID @accessors(property=ethernetSegmentID);
    
    NUPermissionsFetcher _childrenPermissions @accessors(property=childrenPermissions);
    NUVLANsFetcher _childrenVLANs @accessors(property=childrenVLANs);
    NUAlarmsFetcher _childrenAlarms @accessors(property=childrenAlarms);
    NUEnterprisePermissionsFetcher _childrenEnterprisePermissions @accessors(property=childrenEnterprisePermissions);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"ethernetsegmentgroup";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"VLANRange"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"virtual"];
        [self exposeLocalKeyPathToREST:@"portType"];
        [self exposeLocalKeyPathToREST:@"ethernetSegmentID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenVLANs = [NUVLANsFetcher fetcherWithParentObject:self];
        _childrenAlarms = [NUAlarmsFetcher fetcherWithParentObject:self];
        _childrenEnterprisePermissions = [NUEnterprisePermissionsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end