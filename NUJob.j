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

NUJobCommand_APPLICATION_SIGNATURE_IMPORT = @"APPLICATION_SIGNATURE_IMPORT";
NUJobCommand_APPLY_POLICY_CHANGES = @"APPLY_POLICY_CHANGES";
NUJobCommand_ASSIGN_SELF_REBOOTSTRAP_REQ = @"ASSIGN_SELF_REBOOTSTRAP_REQ";
NUJobCommand_BATCH_CRUD_REQUEST = @"BATCH_CRUD_REQUEST";
NUJobCommand_BEGIN_POLICY_CHANGES = @"BEGIN_POLICY_CHANGES";
NUJobCommand_CERTIFICATE_NSG_RENEW = @"CERTIFICATE_NSG_RENEW";
NUJobCommand_CERTIFICATE_NSG_REVOKE = @"CERTIFICATE_NSG_REVOKE";
NUJobCommand_CLEAR_IPSEC_DATA = @"CLEAR_IPSEC_DATA";
NUJobCommand_CLEAR_MAC_MOVE_ALARMS = @"CLEAR_MAC_MOVE_ALARMS";
NUJobCommand_CLOUD_FORCE_CONFIG = @"CLOUD_FORCE_CONFIG";
NUJobCommand_CLOUD_SYNC = @"CLOUD_SYNC";
NUJobCommand_DEPLOY = @"DEPLOY";
NUJobCommand_DISCARD_POLICY_CHANGES = @"DISCARD_POLICY_CHANGES";
NUJobCommand_EXPORT = @"EXPORT";
NUJobCommand_FORCE_KEYSERVER_UPDATE = @"FORCE_KEYSERVER_UPDATE";
NUJobCommand_FORCE_KEYSERVER_UPDATE_ACK = @"FORCE_KEYSERVER_UPDATE_ACK";
NUJobCommand_FORCE_KEYSERVER_VSD_RESYNC = @"FORCE_KEYSERVER_VSD_RESYNC";
NUJobCommand_GATEWAY_AUDIT = @"GATEWAY_AUDIT";
NUJobCommand_GET_ZFB_INFO = @"GET_ZFB_INFO";
NUJobCommand_IMPORT = @"IMPORT";
NUJobCommand_KEYSERVER_NOTIFICATION_TEST = @"KEYSERVER_NOTIFICATION_TEST";
NUJobCommand_NETCONF_FORCE_DEPLOY = @"NETCONF_FORCE_DEPLOY";
NUJobCommand_NETCONF_SYNC = @"NETCONF_SYNC";
NUJobCommand_NOTIFY_NSG_REGISTRATION = @"NOTIFY_NSG_REGISTRATION";
NUJobCommand_NOTIFY_NSG_REGISTRATION_ACK = @"NOTIFY_NSG_REGISTRATION_ACK";
NUJobCommand_NOTIFY_NSG_REGISTRATION_TEST = @"NOTIFY_NSG_REGISTRATION_TEST";
NUJobCommand_NSG_LIFT_QUARANTINE = @"NSG_LIFT_QUARANTINE";
NUJobCommand_NSG_NOTIFICATION_TEST = @"NSG_NOTIFICATION_TEST";
NUJobCommand_NSG_QUARANTINE = @"NSG_QUARANTINE";
NUJobCommand_NSG_REGISTRATION_INFO = @"NSG_REGISTRATION_INFO";
NUJobCommand_NSG_VALIDATE_CONFIGURATION = @"NSG_VALIDATE_CONFIGURATION";
NUJobCommand_PUBSUBNODE_AUDIT = @"PUBSUBNODE_AUDIT";
NUJobCommand_RECOVER_NSG = @"RECOVER_NSG";
NUJobCommand_REDEPLOY = @"REDEPLOY";
NUJobCommand_REJECT_ZFB_REQUEST = @"REJECT_ZFB_REQUEST";
NUJobCommand_RELOAD = @"RELOAD";
NUJobCommand_RELOAD_GEO_REDUNDANT_INFO = @"RELOAD_GEO_REDUNDANT_INFO";
NUJobCommand_RELOAD_NSG_CONFIG = @"RELOAD_NSG_CONFIG";
NUJobCommand_RESTART = @"RESTART";
NUJobCommand_RETRIEVE_ACTIVE_NSGS = @"RETRIEVE_ACTIVE_NSGS";
NUJobCommand_SAAS_APPLICATION_TYPE = @"SAAS_APPLICATION_TYPE";
NUJobCommand_START = @"START";
NUJobCommand_STATUS = @"STATUS";
NUJobCommand_STOP = @"STOP";
NUJobCommand_SYNC = @"SYNC";
NUJobCommand_UNDEPLOY = @"UNDEPLOY";
NUJobCommand_VCENTER_ADD_COMPUTERESOURCE_INSCOPE = @"VCENTER_ADD_COMPUTERESOURCE_INSCOPE";
NUJobCommand_VCENTER_DELETE_AGENCY = @"VCENTER_DELETE_AGENCY";
NUJobCommand_VCENTER_MARK_AGENT_VM_AVAILABLE = @"VCENTER_MARK_AGENT_VM_AVAILABLE";
NUJobCommand_VCENTER_RECONNECT = @"VCENTER_RECONNECT";
NUJobCommand_VCENTER_RELOAD = @"VCENTER_RELOAD";
NUJobCommand_VCENTER_REMOVE_COMPUTERESOURCE_INSCOPE = @"VCENTER_REMOVE_COMPUTERESOURCE_INSCOPE";
NUJobCommand_VCENTER_SCRIPT_UPGRADE_VRS = @"VCENTER_SCRIPT_UPGRADE_VRS";
NUJobCommand_VCENTER_SYNC = @"VCENTER_SYNC";
NUJobCommand_VCENTER_UPGRADE_VRS = @"VCENTER_UPGRADE_VRS";
NUJobEntityScope_ENTERPRISE = @"ENTERPRISE";
NUJobEntityScope_GLOBAL = @"GLOBAL";
NUJobStatus_FAILED = @"FAILED";
NUJobStatus_RUNNING = @"RUNNING";
NUJobStatus_SUCCESS = @"SUCCESS";


/*!
    Represents JOB entity. The job API accepts a command and parameters and executes the job and returns the results. Jobs API are typically used for long running tasks.
*/
@implementation NUJob : NURESTObject
{
    /*!
        Additional arguments required for the specific command. Differs based on types of command.
    */
    NURESTObject _parameters @accessors(property=parameters);
    /*!
        ID of the user who last updated the object.
    */
    CPString _lastUpdatedBy @accessors(property=lastUpdatedBy);
    /*!
        Results from the execution of the job
    */
    NURESTObject _result @accessors(property=result);
    /*!
        Metadata objects associated with this entity. This will contain a list of Metadata objects if the API request is made using the special flag to enable the embedded Metadata feature. Only a maximum of Metadata objects is returned based on the value set in the system configuration.
    */
    CPArrayController _embeddedMetadata @accessors(property=embeddedMetadata);
    /*!
        Specify if scope of entity is Data center or Enterprise level
    */
    CPString _entityScope @accessors(property=entityScope);
    /*!
        Name of the command.
    */
    CPString _command @accessors(property=command);
    /*!
        Indicates the progress of the job as a faction. eg : 0.5 means 50% done.
    */
    CPNumber _progress @accessors(property=progress);
    /*!
        Entity with which this job is associated Refer to API section for supported types.
    */
    CPString _assocEntityType @accessors(property=assocEntityType);
    /*!
        Current status of the job. Possible values are RUNNING, FAILED, SUCCESS, .
    */
    CPString _status @accessors(property=status);
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
    return @"job";
}


#pragma mark -
#pragma mark Initialization

- (id)init
{
    if (self = [super init])
    {
        [self exposeLocalKeyPathToREST:@"parameters"];
        [self exposeLocalKeyPathToREST:@"lastUpdatedBy"];
        [self exposeLocalKeyPathToREST:@"result"];
        [self exposeLocalKeyPathToREST:@"embeddedMetadata"];
        [self exposeLocalKeyPathToREST:@"entityScope"];
        [self exposeLocalKeyPathToREST:@"command"];
        [self exposeLocalKeyPathToREST:@"progress"];
        [self exposeLocalKeyPathToREST:@"assocEntityType"];
        [self exposeLocalKeyPathToREST:@"status"];
        [self exposeLocalKeyPathToREST:@"externalID"];
        
        _childrenPermissions = [NUPermissionsFetcher fetcherWithParentObject:self];
        _childrenMetadatas = [NUMetadatasFetcher fetcherWithParentObject:self];
        _childrenGlobalMetadatas = [NUGlobalMetadatasFetcher fetcherWithParentObject:self];
        
        
    }

    return self;
}

@end