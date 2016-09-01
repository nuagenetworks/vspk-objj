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


NUDiskStatEntityScope_ENTERPRISE = @"ENTERPRISE";
NUDiskStatEntityScope_GLOBAL = @"GLOBAL";
NUDiskStatUnit_BYTES = @"Bytes";
NUDiskStatUnit_EB = @"EB";
NUDiskStatUnit_GB = @"GB";
NUDiskStatUnit_KB = @"KB";
NUDiskStatUnit_MB = @"MB";
NUDiskStatUnit_PB = @"PB";
NUDiskStatUnit_TB = @"TB";
NUDiskStatUnit_YB = @"YB";
NUDiskStatUnit_ZB = @"ZB";


/*!
    Encapsulates the disk usage metrics for system monitor entity.
*/
@implementation NUDiskStat : NURESTObject
{
    /*!
        Name of the disk.
    */
    CPString _name @accessors(property=name);
    /*!
        Total disk space.
    */
    CPNumber _size @accessors(property=size);
    /*!
        Storage unit type (example: bytes, KB, MB, etc.,).
    */
    CPString _unit @accessors(property=unit);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Disk space used.
    */
    CPNumber _used @accessors(property=used);
    /*!
        Available disk space.
    */
    CPNumber _available @accessors(property=available);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"diskstat";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"size"];
        [self exposeLocalKeyPathToREST:@"unit"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"used"];
        [self exposeLocalKeyPathToREST:@"available"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        
        
    }

    return self;
}

@end