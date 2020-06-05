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
@import "Fetchers/NUVNFInterfaceDescriptorsFetcher.j"

NUVNFDescriptorEntityScope_ENTERPRISE = @"ENTERPRISE";
NUVNFDescriptorEntityScope_GLOBAL = @"GLOBAL";
NUVNFDescriptorType_FIREWALL = @"FIREWALL";
NUVNFDescriptorType_THREAT_PREVENTION = @"THREAT_PREVENTION";
NUVNFDescriptorType_WAN_OPT = @"WAN_OPT";


/*!
    The behavioral and deployment information of a VNF is defined in the VNF descriptor template. The template is based on the libvirt domain XML and is on-boarded in a VNF catalog. The resource requirements for CPU, memory and storage are defined in this screen and the rest of the template is inherited from the VNF Metadata object.
*/
@implementation NUVNFDescriptor : NURESTObject
{
    /*!
        Number of CPUs to be allocated VNF instance when deployed
    */
    CPNumber _CPUCount @accessors(property=CPUCount);
    /*!
        Name of the VNF Descriptor
    */
    CPString _name @accessors(property=name);
    /*!
        Memory (in MB) to be allocated for VNF instance when deployed
    */
    CPNumber _memoryMB @accessors(property=memoryMB);
    /*!
        The vendor generating this VNF Descriptor
    */
    CPString _vendor @accessors(property=vendor);
    /*!
        A description of the VNF Descriptor
    */
    CPString _description @accessors(property=description);
    /*!
        Id of referenced Metadata Object
    */
    CPString _metadataID @accessors(property=metadataID);
    /*!
        Controls if descriptor visible in catalog to create new VNF
    */
    BOOL _visible @accessors(property=visible);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        The Id of referenced VNF threshold policy
    */
    CPString _associatedVNFThresholdPolicyID @accessors(property=associatedVNFThresholdPolicyID);
    /*!
        Disk storage (in GB) to be allocated VNF instance when deployed
    */
    CPNumber _storageGB @accessors(property=storageGB);
    /*!
        External object ID. Used for integration with third party systems
    */
    CPString _externalID @accessors(property=externalID);
    /*!
        Type of virtual network function
    */
    CPString _type @accessors(property=type);
    
    NUMetadatasFetcher _childrenMetadatas @accessors(property=childrenMetadatas);
    NUGlobalMetadatasFetcher _childrenGlobalMetadatas @accessors(property=childrenGlobalMetadatas);
    NUVNFInterfaceDescriptorsFetcher _childrenVNFInterfaceDescriptors @accessors(property=childrenVNFInterfaceDescriptors);
    
}


#pragma mark -
#pragma mark Class Method

+ (CPString)RESTName
{
    return @"vnfdescriptor";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"CPUCount"];
        [self exposeLocalKeyPathToREST:@"name"];
        [self exposeLocalKeyPathToREST:@"memoryMB"];
        [self exposeLocalKeyPathToREST:@"vendor"];
        [self exposeLocalKeyPathToREST:@"description"];
        [self exposeLocalKeyPathToREST:@"metadataID"];
        [self exposeLocalKeyPathToREST:@"visible"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"associatedVNFThresholdPolicyID"];
        [self exposeLocalKeyPathToREST:@"storageGB"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        [self exposeLocalKeyPathToREST:@"type"];
        
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        _childrenVNFInterfaceDescriptors = [NUVNFInterfaceDescriptorsFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end