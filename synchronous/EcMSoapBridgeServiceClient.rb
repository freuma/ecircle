#!/usr/bin/env ruby
require File.expand_path(File.dirname(__FILE__) + '/synchronousDriver')    

endpoint_url = ARGV.shift
obj = EcMSoapBridge.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   getVersion(parameters)
#
# ARGS
#   parameters      GetVersion - {http://webservices.ecircleag.com/rpcns}getVersion
#
# RETURNS
#   parameters      GetVersionResponse - {http://webservices.ecircleag.com/rpcns}getVersionResponse
#
parameters = nil
puts obj.getVersion(parameters)

# SYNOPSIS
#   getGroupId(parameters)
#
# ARGS
#   parameters      GetGroupId - {http://webservices.ecircleag.com/rpcns}getGroupId
#
# RETURNS
#   parameters      GetGroupIdResponse - {http://webservices.ecircleag.com/rpcns}getGroupIdResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.getGroupId(parameters)

# SYNOPSIS
#   logon(parameters)
#
# ARGS
#   parameters      Logon - {http://webservices.ecircleag.com/rpcns}logon
#
# RETURNS
#   parameters      LogonResponse - {http://webservices.ecircleag.com/rpcns}logonResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.logon(parameters)

# SYNOPSIS
#   logout(parameters)
#
# ARGS
#   parameters      Logout - {http://webservices.ecircleag.com/rpcns}logout
#
# RETURNS
#   parameters      LogoutResponse - {http://webservices.ecircleag.com/rpcns}logoutResponse
#
parameters = nil
puts obj.logout(parameters)

# SYNOPSIS
#   setAsynchronous(parameters)
#
# ARGS
#   parameters      SetAsynchronous - {http://webservices.ecircleag.com/rpcns}setAsynchronous
#
# RETURNS
#   parameters      SetAsynchronousResponse - {http://webservices.ecircleag.com/rpcns}setAsynchronousResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.setAsynchronous(parameters)

# SYNOPSIS
#   createUser(parameters)
#
# ARGS
#   parameters      CreateUser - {http://webservices.ecircleag.com/rpcns}createUser
#
# RETURNS
#   parameters      CreateUserResponse - {http://webservices.ecircleag.com/rpcns}createUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.createUser(parameters)

# SYNOPSIS
#   createOrUpdateUserByEmail(parameters)
#
# ARGS
#   parameters      CreateOrUpdateUserByEmail - {http://webservices.ecircleag.com/rpcns}createOrUpdateUserByEmail
#
# RETURNS
#   parameters      CreateOrUpdateUserByEmailResponse - {http://webservices.ecircleag.com/rpcns}createOrUpdateUserByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.createOrUpdateUserByEmail(parameters)

# SYNOPSIS
#   createOrUpdateUserMemberByEmail(parameters)
#
# ARGS
#   parameters      CreateOrUpdateUserMemberByEmail - {http://webservices.ecircleag.com/rpcns}createOrUpdateUserMemberByEmail
#
# RETURNS
#   parameters      CreateOrUpdateUserMemberByEmailResponse - {http://webservices.ecircleag.com/rpcns}createOrUpdateUserMemberByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.createOrUpdateUserMemberByEmail(parameters)

# SYNOPSIS
#   deleteUserByEmail(parameters)
#
# ARGS
#   parameters      DeleteUserByEmail - {http://webservices.ecircleag.com/rpcns}deleteUserByEmail
#
# RETURNS
#   parameters      DeleteUserByEmailResponse - {http://webservices.ecircleag.com/rpcns}deleteUserByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.deleteUserByEmail(parameters)

# SYNOPSIS
#   lookupUserByEmail(parameters)
#
# ARGS
#   parameters      LookupUserByEmail - {http://webservices.ecircleag.com/rpcns}lookupUserByEmail
#
# RETURNS
#   parameters      LookupUserByEmailResponse - {http://webservices.ecircleag.com/rpcns}lookupUserByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupUserByEmail(parameters)

# SYNOPSIS
#   lookupUserByIdentifier(parameters)
#
# ARGS
#   parameters      LookupUserByIdentifier - {http://webservices.ecircleag.com/rpcns}lookupUserByIdentifier
#
# RETURNS
#   parameters      LookupUserByIdentifierResponse - {http://webservices.ecircleag.com/rpcns}lookupUserByIdentifierResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupUserByIdentifier(parameters)

# SYNOPSIS
#   lookupUserByMobileNumber(parameters)
#
# ARGS
#   parameters      LookupUserByMobileNumber - {http://webservices.ecircleag.com/rpcns}lookupUserByMobileNumber
#
# RETURNS
#   parameters      LookupUserByMobileNumberResponse - {http://webservices.ecircleag.com/rpcns}lookupUserByMobileNumberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupUserByMobileNumber(parameters)

# SYNOPSIS
#   lookupMemberByMobileNumber(parameters)
#
# ARGS
#   parameters      LookupMemberByMobileNumber - {http://webservices.ecircleag.com/rpcns}lookupMemberByMobileNumber
#
# RETURNS
#   parameters      LookupMemberByMobileNumberResponse - {http://webservices.ecircleag.com/rpcns}lookupMemberByMobileNumberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByMobileNumber(parameters)

# SYNOPSIS
#   lookupUserByFaxNumber(parameters)
#
# ARGS
#   parameters      LookupUserByFaxNumber - {http://webservices.ecircleag.com/rpcns}lookupUserByFaxNumber
#
# RETURNS
#   parameters      LookupUserByFaxNumberResponse - {http://webservices.ecircleag.com/rpcns}lookupUserByFaxNumberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupUserByFaxNumber(parameters)

# SYNOPSIS
#   lookupMessages(parameters)
#
# ARGS
#   parameters      LookupMessages - {http://webservices.ecircleag.com/rpcns}lookupMessages
#
# RETURNS
#   parameters      LookupMessagesResponse - {http://webservices.ecircleag.com/rpcns}lookupMessagesResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMessages(parameters)

# SYNOPSIS
#   lookupGroups(parameters)
#
# ARGS
#   parameters      LookupGroups - {http://webservices.ecircleag.com/rpcns}lookupGroups
#
# RETURNS
#   parameters      LookupGroupsResponse - {http://webservices.ecircleag.com/rpcns}lookupGroupsResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupGroups(parameters)

# SYNOPSIS
#   createMember(parameters)
#
# ARGS
#   parameters      CreateMember - {http://webservices.ecircleag.com/rpcns}createMember
#
# RETURNS
#   parameters      CreateMemberResponse - {http://webservices.ecircleag.com/rpcns}createMemberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.createMember(parameters)

# SYNOPSIS
#   lookupUserById(parameters)
#
# ARGS
#   parameters      LookupUserById - {http://webservices.ecircleag.com/rpcns}lookupUserById
#
# RETURNS
#   parameters      LookupUserByIdResponse - {http://webservices.ecircleag.com/rpcns}lookupUserByIdResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupUserById(parameters)

# SYNOPSIS
#   lookupMemberByEmail(parameters)
#
# ARGS
#   parameters      LookupMemberByEmail - {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail
#
# RETURNS
#   parameters      LookupMemberByEmailResponse - {http://webservices.ecircleag.com/rpcns}lookupMemberByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByEmail(parameters)

# SYNOPSIS
#   lookupMemberByEmail_v2_0(parameters)
#
# ARGS
#   parameters      LookupMemberByEmail_v2_0 - {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail_v2_0
#
# RETURNS
#   parameters      LookupMemberByEmail_v2_0Response - {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail_v2_0Response
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByEmail_v2_0(parameters)

# SYNOPSIS
#   lookupMemberById(parameters)
#
# ARGS
#   parameters      LookupMemberById - {http://webservices.ecircleag.com/rpcns}lookupMemberById
#
# RETURNS
#   parameters      LookupMemberByIdResponse - {http://webservices.ecircleag.com/rpcns}lookupMemberByIdResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberById(parameters)

# SYNOPSIS
#   lookupMemberById_v2_0(parameters)
#
# ARGS
#   parameters      LookupMemberById_v2_0 - {http://webservices.ecircleag.com/rpcns}lookupMemberById_v2_0
#
# RETURNS
#   parameters      LookupMemberById_v2_0Response - {http://webservices.ecircleag.com/rpcns}lookupMemberById_v2_0Response
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberById_v2_0(parameters)

# SYNOPSIS
#   lookupMemberByIdentifier(parameters)
#
# ARGS
#   parameters      LookupMemberByIdentifier - {http://webservices.ecircleag.com/rpcns}lookupMemberByIdentifier
#
# RETURNS
#   parameters      LookupMemberByIdentifierResponse - {http://webservices.ecircleag.com/rpcns}lookupMemberByIdentifierResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByIdentifier(parameters)

# SYNOPSIS
#   lookupMemberByUserId(parameters)
#
# ARGS
#   parameters      LookupMemberByUserId - {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId
#
# RETURNS
#   parameters      LookupMemberByUserIdResponse - {http://webservices.ecircleag.com/rpcns}lookupMemberByUserIdResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByUserId(parameters)

# SYNOPSIS
#   lookupMemberByUserId_v2_0(parameters)
#
# ARGS
#   parameters      LookupMemberByUserId_v2_0 - {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId_v2_0
#
# RETURNS
#   parameters      LookupMemberByUserId_v2_0Response - {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId_v2_0Response
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupMemberByUserId_v2_0(parameters)

# SYNOPSIS
#   updateMember(parameters)
#
# ARGS
#   parameters      UpdateMember - {http://webservices.ecircleag.com/rpcns}updateMember
#
# RETURNS
#   parameters      UpdateMemberResponse - {http://webservices.ecircleag.com/rpcns}updateMemberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.updateMember(parameters)

# SYNOPSIS
#   updateUser(parameters)
#
# ARGS
#   parameters      UpdateUser - {http://webservices.ecircleag.com/rpcns}updateUser
#
# RETURNS
#   parameters      UpdateUserResponse - {http://webservices.ecircleag.com/rpcns}updateUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.updateUser(parameters)

# SYNOPSIS
#   updateUserByEmail(parameters)
#
# ARGS
#   parameters      UpdateUserByEmail - {http://webservices.ecircleag.com/rpcns}updateUserByEmail
#
# RETURNS
#   parameters      UpdateUserByEmailResponse - {http://webservices.ecircleag.com/rpcns}updateUserByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.updateUserByEmail(parameters)

# SYNOPSIS
#   deleteUser(parameters)
#
# ARGS
#   parameters      DeleteUser - {http://webservices.ecircleag.com/rpcns}deleteUser
#
# RETURNS
#   parameters      DeleteUserResponse - {http://webservices.ecircleag.com/rpcns}deleteUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.deleteUser(parameters)

# SYNOPSIS
#   deleteMember(parameters)
#
# ARGS
#   parameters      DeleteMember - {http://webservices.ecircleag.com/rpcns}deleteMember
#
# RETURNS
#   parameters      DeleteMemberResponse - {http://webservices.ecircleag.com/rpcns}deleteMemberResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.deleteMember(parameters)

# SYNOPSIS
#   unsubscribeMemberByEmail(parameters)
#
# ARGS
#   parameters      UnsubscribeMemberByEmail - {http://webservices.ecircleag.com/rpcns}unsubscribeMemberByEmail
#
# RETURNS
#   parameters      UnsubscribeMemberByEmailResponse - {http://webservices.ecircleag.com/rpcns}unsubscribeMemberByEmailResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.unsubscribeMemberByEmail(parameters)

# SYNOPSIS
#   deleteMessage(parameters)
#
# ARGS
#   parameters      DeleteMessage - {http://webservices.ecircleag.com/rpcns}deleteMessage
#
# RETURNS
#   parameters      DeleteMessageResponse - {http://webservices.ecircleag.com/rpcns}deleteMessageResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.deleteMessage(parameters)

# SYNOPSIS
#   cloneGroup(parameters)
#
# ARGS
#   parameters      CloneGroup - {http://webservices.ecircleag.com/rpcns}cloneGroup
#
# RETURNS
#   parameters      CloneGroupResponse - {http://webservices.ecircleag.com/rpcns}cloneGroupResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.cloneGroup(parameters)

# SYNOPSIS
#   changeGroupSettings(parameters)
#
# ARGS
#   parameters      ChangeGroupSettings - {http://webservices.ecircleag.com/rpcns}changeGroupSettings
#
# RETURNS
#   parameters      ChangeGroupSettingsResponse - {http://webservices.ecircleag.com/rpcns}changeGroupSettingsResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.changeGroupSettings(parameters)

# SYNOPSIS
#   setGroupProperty(parameters)
#
# ARGS
#   parameters      SetGroupProperty - {http://webservices.ecircleag.com/rpcns}setGroupProperty
#
# RETURNS
#   parameters      SetGroupPropertyResponse - {http://webservices.ecircleag.com/rpcns}setGroupPropertyResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.setGroupProperty(parameters)

# SYNOPSIS
#   getGroupProperty(parameters)
#
# ARGS
#   parameters      GetGroupProperty - {http://webservices.ecircleag.com/rpcns}getGroupProperty
#
# RETURNS
#   parameters      GetGroupPropertyResponse - {http://webservices.ecircleag.com/rpcns}getGroupPropertyResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.getGroupProperty(parameters)

# SYNOPSIS
#   copyAndSendDraftMessage(parameters)
#
# ARGS
#   parameters      CopyAndSendDraftMessage - {http://webservices.ecircleag.com/rpcns}copyAndSendDraftMessage
#
# RETURNS
#   parameters      CopyAndSendDraftMessageResponse - {http://webservices.ecircleag.com/rpcns}copyAndSendDraftMessageResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.copyAndSendDraftMessage(parameters)

# SYNOPSIS
#   sendSingleMessageToUser(parameters)
#
# ARGS
#   parameters      SendSingleMessageToUser - {http://webservices.ecircleag.com/rpcns}sendSingleMessageToUser
#
# RETURNS
#   parameters      SendSingleMessageToUserResponse - {http://webservices.ecircleag.com/rpcns}sendSingleMessageToUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.sendSingleMessageToUser(parameters)

# SYNOPSIS
#   sendParametrizedSingleMessageToUser(parameters)
#
# ARGS
#   parameters      SendParametrizedSingleMessageToUser - {http://webservices.ecircleag.com/rpcns}sendParametrizedSingleMessageToUser
#
# RETURNS
#   parameters      SendParametrizedSingleMessageToUserResponse - {http://webservices.ecircleag.com/rpcns}sendParametrizedSingleMessageToUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.sendParametrizedSingleMessageToUser(parameters)

# SYNOPSIS
#   sendGroupMessageToUser(parameters)
#
# ARGS
#   parameters      SendGroupMessageToUser - {http://webservices.ecircleag.com/rpcns}sendGroupMessageToUser
#
# RETURNS
#   parameters      SendGroupMessageToUserResponse - {http://webservices.ecircleag.com/rpcns}sendGroupMessageToUserResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.sendGroupMessageToUser(parameters)

# SYNOPSIS
#   deleteGroup(parameters)
#
# ARGS
#   parameters      DeleteGroup - {http://webservices.ecircleag.com/rpcns}deleteGroup
#
# RETURNS
#   parameters      DeleteGroupResponse - {http://webservices.ecircleag.com/rpcns}deleteGroupResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.deleteGroup(parameters)

# SYNOPSIS
#   sendEmailToMe(parameters)
#
# ARGS
#   parameters      SendEmailToMe - {http://webservices.ecircleag.com/rpcns}sendEmailToMe
#
# RETURNS
#   parameters      SendEmailToMeResponse - {http://webservices.ecircleag.com/rpcns}sendEmailToMeResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.sendEmailToMe(parameters)

# SYNOPSIS
#   addToBlacklist(parameters)
#
# ARGS
#   parameters      AddToBlacklist - {http://webservices.ecircleag.com/rpcns}addToBlacklist
#
# RETURNS
#   parameters      AddToBlacklistResponse - {http://webservices.ecircleag.com/rpcns}addToBlacklistResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.addToBlacklist(parameters)

# SYNOPSIS
#   isEmailOnSystemBlacklist(parameters)
#
# ARGS
#   parameters      IsEmailOnSystemBlacklist - {http://webservices.ecircleag.com/rpcns}isEmailOnSystemBlacklist
#
# RETURNS
#   parameters      IsEmailOnSystemBlacklistResponse - {http://webservices.ecircleag.com/rpcns}isEmailOnSystemBlacklistResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.isEmailOnSystemBlacklist(parameters)

# SYNOPSIS
#   isEmailBouncedSystemwide(parameters)
#
# ARGS
#   parameters      IsEmailBouncedSystemwide - {http://webservices.ecircleag.com/rpcns}isEmailBouncedSystemwide
#
# RETURNS
#   parameters      IsEmailBouncedSystemwideResponse - {http://webservices.ecircleag.com/rpcns}isEmailBouncedSystemwideResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.isEmailBouncedSystemwide(parameters)

# SYNOPSIS
#   removeFromBlacklist(parameters)
#
# ARGS
#   parameters      RemoveFromBlacklist - {http://webservices.ecircleag.com/rpcns}removeFromBlacklist
#
# RETURNS
#   parameters      RemoveFromBlacklistResponse - {http://webservices.ecircleag.com/rpcns}removeFromBlacklistResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.removeFromBlacklist(parameters)

# SYNOPSIS
#   createOrUpdateGroup(parameters)
#
# ARGS
#   parameters      CreateOrUpdateGroup - {http://webservices.ecircleag.com/rpcns}createOrUpdateGroup
#
# RETURNS
#   parameters      CreateOrUpdateGroupResponse - {http://webservices.ecircleag.com/rpcns}createOrUpdateGroupResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.createOrUpdateGroup(parameters)

# SYNOPSIS
#   lookupHourlyMessageStats(parameters)
#
# ARGS
#   parameters      LookupHourlyMessageStats - {http://webservices.ecircleag.com/rpcns}lookupHourlyMessageStats
#
# RETURNS
#   parameters      LookupHourlyMessageStatsResponse - {http://webservices.ecircleag.com/rpcns}lookupHourlyMessageStatsResponse
#
# RAISES
#   fault           EcMException - {http://webservices.ecircleag.com/rpcns}EcMException
#
parameters = nil
puts obj.lookupHourlyMessageStats(parameters)


