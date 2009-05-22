require File.expand_path(File.dirname(__FILE__) + '/synchronous')    
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsRpcns = "http://webservices.ecircleag.com/rpcns"

  EncodedRegistry.register(
    :class => EcMException,
    :schema_type => XSD::QName.new(NsRpcns, "EcMException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => MessageLookupParams,
    :schema_type => XSD::QName.new(NsRpcns, "MessageLookupParams"),
    :schema_element => [
      ["batchOffset", "SOAP::SOAPInt"],
      ["batchSize", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPString"],
      ["groupName", "SOAP::SOAPString"],
      ["messageCreationDateFrom", "SOAP::SOAPDateTime"],
      ["messageCreationDateTo", "SOAP::SOAPDateTime"],
      ["messageId", "SOAP::SOAPString"],
      ["messageName", "SOAP::SOAPString"],
      ["messageSendDateFrom", "SOAP::SOAPDateTime"],
      ["messageSendDateTo", "SOAP::SOAPDateTime"],
      ["messageStatus", "SOAP::SOAPString"],
      ["messageSubject", "SOAP::SOAPString"],
      ["messageType", "SOAP::SOAPString"],
      ["sortAscending", "SOAP::SOAPBoolean"],
      ["sortProperty", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => MessageInfo,
    :schema_type => XSD::QName.new(NsRpcns, "MessageInfo"),
    :schema_element => [
      ["actualRecipientCount", "SOAP::SOAPInt"],
      ["authorId", "SOAP::SOAPString"],
      ["bounceCount", "SOAP::SOAPInt"],
      ["clickRate", "SOAP::SOAPFloat"],
      ["clickerCount", "SOAP::SOAPInt"],
      ["creationDate", "SOAP::SOAPDateTime"],
      ["forwardCount", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPString"],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["openRate", "SOAP::SOAPFloat"],
      ["readerCount", "SOAP::SOAPInt"],
      ["recipientCount", "SOAP::SOAPInt"],
      ["sendDate", "SOAP::SOAPDateTime"],
      ["sendoutProgress", "SOAP::SOAPFloat"],
      ["size", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"],
      ["unsubscriptionCount", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupLookupParams,
    :schema_type => XSD::QName.new(NsRpcns, "GroupLookupParams"),
    :schema_element => [
      ["batchOffset", "SOAP::SOAPInt"],
      ["batchSize", "SOAP::SOAPInt"],
      ["groupName", "SOAP::SOAPString"],
      ["sortAscending", "SOAP::SOAPBoolean"],
      ["sortProperty", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GroupCore,
    :schema_type => XSD::QName.new(NsRpcns, "GroupCore"),
    :schema_element => [
      ["iSOCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsRpcns, "ISOCountryCode")]],
      ["iSOLanguageCode", ["SOAP::SOAPString", XSD::QName.new(NsRpcns, "ISOLanguageCode")]],
      ["archived", "SOAP::SOAPBoolean"],
      ["categoryId", "SOAP::SOAPString"],
      ["creationDate", "SOAP::SOAPDateTime"],
      ["description", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["noOfBouncedMembers", "SOAP::SOAPInt"],
      ["noOfMembers", "SOAP::SOAPInt"],
      ["noOfMessages", "SOAP::SOAPInt"],
      ["noOfModMembers", "SOAP::SOAPInt"],
      ["noOfModMessages", "SOAP::SOAPInt"],
      ["ownerEmail", "SOAP::SOAPString"],
      ["ownerFirstname", "SOAP::SOAPString"],
      ["ownerLastname", "SOAP::SOAPString"],
      ["ownerPK", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => HourlyMessageStats,
    :schema_type => XSD::QName.new(NsRpcns, "HourlyMessageStats"),
    :schema_element => [
      ["hour", "SOAP::SOAPDateTime"],
      ["noOfBounces", "SOAP::SOAPInt"],
      ["noOfClicks", "SOAP::SOAPInt"],
      ["noOfOpenings", "SOAP::SOAPInt"],
      ["noOfUnsubscriptions", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => EcMException,
    :schema_type => XSD::QName.new(NsRpcns, "EcMException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => MessageLookupParams,
    :schema_type => XSD::QName.new(NsRpcns, "MessageLookupParams"),
    :schema_element => [
      ["batchOffset", "SOAP::SOAPInt"],
      ["batchSize", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPString"],
      ["groupName", "SOAP::SOAPString"],
      ["messageCreationDateFrom", "SOAP::SOAPDateTime"],
      ["messageCreationDateTo", "SOAP::SOAPDateTime"],
      ["messageId", "SOAP::SOAPString"],
      ["messageName", "SOAP::SOAPString"],
      ["messageSendDateFrom", "SOAP::SOAPDateTime"],
      ["messageSendDateTo", "SOAP::SOAPDateTime"],
      ["messageStatus", "SOAP::SOAPString"],
      ["messageSubject", "SOAP::SOAPString"],
      ["messageType", "SOAP::SOAPString"],
      ["sortAscending", "SOAP::SOAPBoolean"],
      ["sortProperty", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => MessageInfo,
    :schema_type => XSD::QName.new(NsRpcns, "MessageInfo"),
    :schema_element => [
      ["actualRecipientCount", "SOAP::SOAPInt"],
      ["authorId", "SOAP::SOAPString"],
      ["bounceCount", "SOAP::SOAPInt"],
      ["clickRate", "SOAP::SOAPFloat"],
      ["clickerCount", "SOAP::SOAPInt"],
      ["creationDate", "SOAP::SOAPDateTime"],
      ["forwardCount", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPString"],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["openRate", "SOAP::SOAPFloat"],
      ["readerCount", "SOAP::SOAPInt"],
      ["recipientCount", "SOAP::SOAPInt"],
      ["sendDate", "SOAP::SOAPDateTime"],
      ["sendoutProgress", "SOAP::SOAPFloat"],
      ["size", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"],
      ["unsubscriptionCount", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupLookupParams,
    :schema_type => XSD::QName.new(NsRpcns, "GroupLookupParams"),
    :schema_element => [
      ["batchOffset", "SOAP::SOAPInt"],
      ["batchSize", "SOAP::SOAPInt"],
      ["groupName", "SOAP::SOAPString"],
      ["sortAscending", "SOAP::SOAPBoolean"],
      ["sortProperty", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GroupCore,
    :schema_type => XSD::QName.new(NsRpcns, "GroupCore"),
    :schema_element => [
      ["iSOCountryCode", ["SOAP::SOAPString", XSD::QName.new(NsRpcns, "ISOCountryCode")]],
      ["iSOLanguageCode", ["SOAP::SOAPString", XSD::QName.new(NsRpcns, "ISOLanguageCode")]],
      ["archived", "SOAP::SOAPBoolean"],
      ["categoryId", "SOAP::SOAPString"],
      ["creationDate", "SOAP::SOAPDateTime"],
      ["description", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"],
      ["id", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["noOfBouncedMembers", "SOAP::SOAPInt"],
      ["noOfMembers", "SOAP::SOAPInt"],
      ["noOfMessages", "SOAP::SOAPInt"],
      ["noOfModMembers", "SOAP::SOAPInt"],
      ["noOfModMessages", "SOAP::SOAPInt"],
      ["ownerEmail", "SOAP::SOAPString"],
      ["ownerFirstname", "SOAP::SOAPString"],
      ["ownerLastname", "SOAP::SOAPString"],
      ["ownerPK", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => HourlyMessageStats,
    :schema_type => XSD::QName.new(NsRpcns, "HourlyMessageStats"),
    :schema_element => [
      ["hour", "SOAP::SOAPDateTime"],
      ["noOfBounces", "SOAP::SOAPInt"],
      ["noOfClicks", "SOAP::SOAPInt"],
      ["noOfOpenings", "SOAP::SOAPInt"],
      ["noOfUnsubscriptions", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => GetVersion,
    :schema_name => XSD::QName.new(NsRpcns, "getVersion"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetVersionResponse,
    :schema_name => XSD::QName.new(NsRpcns, "getVersionResponse"),
    :schema_element => [
      ["getVersionReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetGroupId,
    :schema_name => XSD::QName.new(NsRpcns, "getGroupId"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetGroupIdResponse,
    :schema_name => XSD::QName.new(NsRpcns, "getGroupIdResponse"),
    :schema_element => [
      ["getGroupIdReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => EcMException,
    :schema_name => XSD::QName.new(NsRpcns, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errorMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Logon,
    :schema_name => XSD::QName.new(NsRpcns, "logon"),
    :schema_element => [
      ["realm", "SOAP::SOAPString"],
      ["user", "SOAP::SOAPString"],
      ["passwd", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LogonResponse,
    :schema_name => XSD::QName.new(NsRpcns, "logonResponse"),
    :schema_element => [
      ["logonReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_name => XSD::QName.new(NsRpcns, "logout"),
    :schema_element => [
      ["session", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_name => XSD::QName.new(NsRpcns, "logoutResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SetAsynchronous,
    :schema_name => XSD::QName.new(NsRpcns, "setAsynchronous"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["asynchronous", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SetAsynchronousResponse,
    :schema_name => XSD::QName.new(NsRpcns, "setAsynchronousResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CreateUser,
    :schema_name => XSD::QName.new(NsRpcns, "createUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userXmlSpec", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "createUserResponse"),
    :schema_element => [
      ["createUserReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateUserByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userXml", "SOAP::SOAPString"],
      ["sendMessage", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateUserByEmailResponse"),
    :schema_element => [
      ["createOrUpdateUserByEmailReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserMemberByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateUserMemberByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["memberXml", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["sendMessage", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserMemberByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateUserMemberByEmailResponse"),
    :schema_element => [
      ["createOrUpdateUserMemberByEmailReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "deleteUserByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "deleteUserByEmailResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => LookupUserByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByEmailResponse"),
    :schema_element => [
      ["lookupUserByEmailReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByIdentifier,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByIdentifier"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["identifier", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByIdentifierResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByIdentifierResponse"),
    :schema_element => [
      ["lookupUserByIdentifierReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByMobileNumber,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByMobileNumber"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["mobile", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByMobileNumberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByMobileNumberResponse"),
    :schema_element => [
      ["lookupUserByMobileNumberReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByMobileNumber,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByMobileNumber"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["mobile", "SOAP::SOAPString"],
      ["onlyActive", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByMobileNumberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByMobileNumberResponse"),
    :schema_element => [
      ["lookupMemberByMobileNumberReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByFaxNumber,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByFaxNumber"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["fax", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByFaxNumberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByFaxNumberResponse"),
    :schema_element => [
      ["lookupUserByFaxNumberReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMessages,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMessages"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["lookupParams", "MessageLookupParams"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMessagesResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMessagesResponse"),
    :schema_element => [
      ["lookupMessagesReturn", "MessageInfo[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => LookupGroups,
    :schema_name => XSD::QName.new(NsRpcns, "lookupGroups"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["lookupParams", "GroupLookupParams"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupGroupsResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupGroupsResponse"),
    :schema_element => [
      ["lookupGroupsReturn", "GroupCore[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateMember,
    :schema_name => XSD::QName.new(NsRpcns, "createMember"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["invite", "SOAP::SOAPBoolean"],
      ["sendMessage", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateMemberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "createMemberResponse"),
    :schema_element => [
      ["createMemberReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserById,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserById"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupUserByIdResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupUserByIdResponse"),
    :schema_element => [
      ["lookupUserByIdReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByEmailResponse"),
    :schema_element => [
      ["lookupMemberByEmailReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByEmail_v2_0,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByEmail_v2_0"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"],
      ["onlyActive", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByEmail_v2_0Response,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByEmail_v2_0Response"),
    :schema_element => [
      ["lookupMemberByEmail_v2_0Return", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberById,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberById"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["memberid", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByIdResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByIdResponse"),
    :schema_element => [
      ["lookupMemberByIdReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberById_v2_0,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberById_v2_0"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["memberid", "SOAP::SOAPString"],
      ["onlyActive", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberById_v2_0Response,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberById_v2_0Response"),
    :schema_element => [
      ["lookupMemberById_v2_0Return", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByIdentifier,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByIdentifier"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["identifier", "SOAP::SOAPString"],
      ["onlyActive", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByIdentifierResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByIdentifierResponse"),
    :schema_element => [
      ["lookupMemberByIdentifierReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByUserId,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByUserId"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupid", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByUserIdResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByUserIdResponse"),
    :schema_element => [
      ["lookupMemberByUserIdReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByUserId_v2_0,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByUserId_v2_0"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupid", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
      ["onlyActive", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupMemberByUserId_v2_0Response,
    :schema_name => XSD::QName.new(NsRpcns, "lookupMemberByUserId_v2_0Response"),
    :schema_element => [
      ["lookupMemberByUserId_v2_0Return", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateMember,
    :schema_name => XSD::QName.new(NsRpcns, "updateMember"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["memberXmlSpec", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateMemberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "updateMemberResponse"),
    :schema_element => [
      ["updateMemberReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUser,
    :schema_name => XSD::QName.new(NsRpcns, "updateUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userXmlSpec", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "updateUserResponse"),
    :schema_element => [
      ["updateUserReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "updateUserByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userXmlSpec", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "updateUserByEmailResponse"),
    :schema_element => [
      ["updateUserByEmailReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUser,
    :schema_name => XSD::QName.new(NsRpcns, "deleteUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "deleteUserResponse"),
    :schema_element => [
      ["deleteUserReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteMember,
    :schema_name => XSD::QName.new(NsRpcns, "deleteMember"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["memberId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteMemberResponse,
    :schema_name => XSD::QName.new(NsRpcns, "deleteMemberResponse"),
    :schema_element => [
      ["deleteMemberReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UnsubscribeMemberByEmail,
    :schema_name => XSD::QName.new(NsRpcns, "unsubscribeMemberByEmail"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["sendMessage", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UnsubscribeMemberByEmailResponse,
    :schema_name => XSD::QName.new(NsRpcns, "unsubscribeMemberByEmailResponse"),
    :schema_element => [
      ["unsubscribeMemberByEmailReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteMessage,
    :schema_name => XSD::QName.new(NsRpcns, "deleteMessage"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["messageId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteMessageResponse,
    :schema_name => XSD::QName.new(NsRpcns, "deleteMessageResponse"),
    :schema_element => [
      ["deleteMessageReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CloneGroup,
    :schema_name => XSD::QName.new(NsRpcns, "cloneGroup"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["templateGroupId", "SOAP::SOAPString"],
      ["newGroupEmail", "SOAP::SOAPString"],
      ["newGroupName", "SOAP::SOAPString"],
      ["keepOwner", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CloneGroupResponse,
    :schema_name => XSD::QName.new(NsRpcns, "cloneGroupResponse"),
    :schema_element => [
      ["cloneGroupReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeGroupSettings,
    :schema_name => XSD::QName.new(NsRpcns, "changeGroupSettings"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["description", "SOAP::SOAPString"],
      ["prefix", "SOAP::SOAPString"],
      ["textFooter", "SOAP::SOAPString"],
      ["textHeader", "SOAP::SOAPString"],
      ["htmlFooter", "SOAP::SOAPString"],
      ["htmlHeader", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ChangeGroupSettingsResponse,
    :schema_name => XSD::QName.new(NsRpcns, "changeGroupSettingsResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SetGroupProperty,
    :schema_name => XSD::QName.new(NsRpcns, "setGroupProperty"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["gid", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SetGroupPropertyResponse,
    :schema_name => XSD::QName.new(NsRpcns, "setGroupPropertyResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetGroupProperty,
    :schema_name => XSD::QName.new(NsRpcns, "getGroupProperty"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["gid", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetGroupPropertyResponse,
    :schema_name => XSD::QName.new(NsRpcns, "getGroupPropertyResponse"),
    :schema_element => [
      ["getGroupPropertyReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyAndSendDraftMessage,
    :schema_name => XSD::QName.new(NsRpcns, "copyAndSendDraftMessage"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["messageId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CopyAndSendDraftMessageResponse,
    :schema_name => XSD::QName.new(NsRpcns, "copyAndSendDraftMessageResponse"),
    :schema_element => [
      ["copyAndSendDraftMessageReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendSingleMessageToUser,
    :schema_name => XSD::QName.new(NsRpcns, "sendSingleMessageToUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["singleMessageId", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendSingleMessageToUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "sendSingleMessageToUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SendParametrizedSingleMessageToUser,
    :schema_name => XSD::QName.new(NsRpcns, "sendParametrizedSingleMessageToUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["singleMessageId", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"],
      ["names", "SOAP::SOAPString[]", [1, nil]],
      ["values", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SendParametrizedSingleMessageToUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "sendParametrizedSingleMessageToUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => SendGroupMessageToUser,
    :schema_name => XSD::QName.new(NsRpcns, "sendGroupMessageToUser"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupid", "SOAP::SOAPString"],
      ["messageId", "SOAP::SOAPString"],
      ["userId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendGroupMessageToUserResponse,
    :schema_name => XSD::QName.new(NsRpcns, "sendGroupMessageToUserResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DeleteGroup,
    :schema_name => XSD::QName.new(NsRpcns, "deleteGroup"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteGroupResponse,
    :schema_name => XSD::QName.new(NsRpcns, "deleteGroupResponse"),
    :schema_element => [
      ["deleteGroupReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailToMe,
    :schema_name => XSD::QName.new(NsRpcns, "sendEmailToMe"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["message", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailToMeResponse,
    :schema_name => XSD::QName.new(NsRpcns, "sendEmailToMeResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddToBlacklist,
    :schema_name => XSD::QName.new(NsRpcns, "addToBlacklist"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AddToBlacklistResponse,
    :schema_name => XSD::QName.new(NsRpcns, "addToBlacklistResponse"),
    :schema_element => [
      ["addToBlacklistReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => IsEmailOnSystemBlacklist,
    :schema_name => XSD::QName.new(NsRpcns, "isEmailOnSystemBlacklist"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsEmailOnSystemBlacklistResponse,
    :schema_name => XSD::QName.new(NsRpcns, "isEmailOnSystemBlacklistResponse"),
    :schema_element => [
      ["isEmailOnSystemBlacklistReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => IsEmailBouncedSystemwide,
    :schema_name => XSD::QName.new(NsRpcns, "isEmailBouncedSystemwide"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => IsEmailBouncedSystemwideResponse,
    :schema_name => XSD::QName.new(NsRpcns, "isEmailBouncedSystemwideResponse"),
    :schema_element => [
      ["isEmailBouncedSystemwideReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveFromBlacklist,
    :schema_name => XSD::QName.new(NsRpcns, "removeFromBlacklist"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupId", "SOAP::SOAPString"],
      ["email", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveFromBlacklistResponse,
    :schema_name => XSD::QName.new(NsRpcns, "removeFromBlacklistResponse"),
    :schema_element => [
      ["removeFromBlacklistReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateGroup,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateGroup"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["groupXML", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateGroupResponse,
    :schema_name => XSD::QName.new(NsRpcns, "createOrUpdateGroupResponse"),
    :schema_element => [
      ["createOrUpdateGroupReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupHourlyMessageStats,
    :schema_name => XSD::QName.new(NsRpcns, "lookupHourlyMessageStats"),
    :schema_element => [
      ["session", "SOAP::SOAPString"],
      ["messageid", "SOAP::SOAPString"],
      ["periodStartDate", "SOAP::SOAPDateTime"],
      ["periodEndDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => LookupHourlyMessageStatsResponse,
    :schema_name => XSD::QName.new(NsRpcns, "lookupHourlyMessageStatsResponse"),
    :schema_element => [
      ["lookupHourlyMessageStatsReturn", "HourlyMessageStats[]", [1, nil]]
    ]
  )
end
