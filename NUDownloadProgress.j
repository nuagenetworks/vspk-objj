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
    An object representing the progress of gateway image download
*/
@implementation NUDownloadProgress : NURESTObject
{
    /*!
        The total percentage of image download transfer that was completed
    */
    CPNumber _percentage @accessors(property=percentage);
    /*!
        Time remaining (in HH:MM:SS) for the download of image
    */
    CPString _timeLeft @accessors(property=timeLeft);
    /*!
        Time spent (in HH:MM:SS) for the download of image
    */
    CPString _timeSpent @accessors(property=timeSpent);
    /*!
        Name of the image file getting downloaded, as specified in upgrade meta-data file.
    */
    CPString _imageFileName @accessors(property=imageFileName);
    /*!
        The version of image getting downloaded, as specified in upgrade meta-data file.
    */
    CPString _imageVersion @accessors(property=imageVersion);
    /*!
        Time when the download of image was started
    */
    CPNumber _startTime @accessors(property=startTime);
    /*!
        Current speed in kilobyte per second (kB/s) of the image download
    */
    CPNumber _currentSpeed @accessors(property=currentSpeed);
    /*!
        Average speed in kilobyte per second (kB/s) of the image download
    */
    CPNumber _averageSpeed @accessors(property=averageSpeed);
    
    
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
        [self exposeLocalKeyPathToREST:@"percentage"];
        [self exposeLocalKeyPathToREST:@"timeLeft"];
        [self exposeLocalKeyPathToREST:@"timeSpent"];
        [self exposeLocalKeyPathToREST:@"imageFileName"];
        [self exposeLocalKeyPathToREST:@"imageVersion"];
        [self exposeLocalKeyPathToREST:@"startTime"];
        [self exposeLocalKeyPathToREST:@"currentSpeed"];
        [self exposeLocalKeyPathToREST:@"averageSpeed"];
        
        
        
    }

    return self;
}

@end