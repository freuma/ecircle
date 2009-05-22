require 'xsd/qname'

# {http://webservices.ecircleag.com/rpcns}EcMException
#   code - SOAP::SOAPInt
#   errorMessage - SOAP::SOAPString
class EcMException
  attr_accessor :code
  attr_accessor :errorMessage

  def initialize(code = nil, errorMessage = nil)
    @code = code
    @errorMessage = errorMessage
  end
end

# {http://webservices.ecircleag.com/rpcns}MessageLookupParams
#   batchOffset - SOAP::SOAPInt
#   batchSize - SOAP::SOAPInt
#   groupId - SOAP::SOAPString
#   groupName - SOAP::SOAPString
#   messageCreationDateFrom - SOAP::SOAPDateTime
#   messageCreationDateTo - SOAP::SOAPDateTime
#   messageId - SOAP::SOAPString
#   messageName - SOAP::SOAPString
#   messageSendDateFrom - SOAP::SOAPDateTime
#   messageSendDateTo - SOAP::SOAPDateTime
#   messageStatus - SOAP::SOAPString
#   messageSubject - SOAP::SOAPString
#   messageType - SOAP::SOAPString
#   sortAscending - SOAP::SOAPBoolean
#   sortProperty - SOAP::SOAPString
class MessageLookupParams
  attr_accessor :batchOffset
  attr_accessor :batchSize
  attr_accessor :groupId
  attr_accessor :groupName
  attr_accessor :messageCreationDateFrom
  attr_accessor :messageCreationDateTo
  attr_accessor :messageId
  attr_accessor :messageName
  attr_accessor :messageSendDateFrom
  attr_accessor :messageSendDateTo
  attr_accessor :messageStatus
  attr_accessor :messageSubject
  attr_accessor :messageType
  attr_accessor :sortAscending
  attr_accessor :sortProperty

  def initialize(batchOffset = nil, batchSize = nil, groupId = nil, groupName = nil, messageCreationDateFrom = nil, messageCreationDateTo = nil, messageId = nil, messageName = nil, messageSendDateFrom = nil, messageSendDateTo = nil, messageStatus = nil, messageSubject = nil, messageType = nil, sortAscending = nil, sortProperty = nil)
    @batchOffset = batchOffset
    @batchSize = batchSize
    @groupId = groupId
    @groupName = groupName
    @messageCreationDateFrom = messageCreationDateFrom
    @messageCreationDateTo = messageCreationDateTo
    @messageId = messageId
    @messageName = messageName
    @messageSendDateFrom = messageSendDateFrom
    @messageSendDateTo = messageSendDateTo
    @messageStatus = messageStatus
    @messageSubject = messageSubject
    @messageType = messageType
    @sortAscending = sortAscending
    @sortProperty = sortProperty
  end
end

# {http://webservices.ecircleag.com/rpcns}MessageInfo
#   actualRecipientCount - SOAP::SOAPInt
#   authorId - SOAP::SOAPString
#   bounceCount - SOAP::SOAPInt
#   clickRate - SOAP::SOAPFloat
#   clickerCount - SOAP::SOAPInt
#   creationDate - SOAP::SOAPDateTime
#   forwardCount - SOAP::SOAPInt
#   groupId - SOAP::SOAPString
#   id - SOAP::SOAPString
#   name - SOAP::SOAPString
#   openRate - SOAP::SOAPFloat
#   readerCount - SOAP::SOAPInt
#   recipientCount - SOAP::SOAPInt
#   sendDate - SOAP::SOAPDateTime
#   sendoutProgress - SOAP::SOAPFloat
#   size - SOAP::SOAPLong
#   status - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   type - SOAP::SOAPString
#   unsubscriptionCount - SOAP::SOAPInt
class MessageInfo
  attr_accessor :actualRecipientCount
  attr_accessor :authorId
  attr_accessor :bounceCount
  attr_accessor :clickRate
  attr_accessor :clickerCount
  attr_accessor :creationDate
  attr_accessor :forwardCount
  attr_accessor :groupId
  attr_accessor :id
  attr_accessor :name
  attr_accessor :openRate
  attr_accessor :readerCount
  attr_accessor :recipientCount
  attr_accessor :sendDate
  attr_accessor :sendoutProgress
  attr_accessor :size
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :type
  attr_accessor :unsubscriptionCount

  def initialize(actualRecipientCount = nil, authorId = nil, bounceCount = nil, clickRate = nil, clickerCount = nil, creationDate = nil, forwardCount = nil, groupId = nil, id = nil, name = nil, openRate = nil, readerCount = nil, recipientCount = nil, sendDate = nil, sendoutProgress = nil, size = nil, status = nil, subject = nil, type = nil, unsubscriptionCount = nil)
    @actualRecipientCount = actualRecipientCount
    @authorId = authorId
    @bounceCount = bounceCount
    @clickRate = clickRate
    @clickerCount = clickerCount
    @creationDate = creationDate
    @forwardCount = forwardCount
    @groupId = groupId
    @id = id
    @name = name
    @openRate = openRate
    @readerCount = readerCount
    @recipientCount = recipientCount
    @sendDate = sendDate
    @sendoutProgress = sendoutProgress
    @size = size
    @status = status
    @subject = subject
    @type = type
    @unsubscriptionCount = unsubscriptionCount
  end
end

# {http://webservices.ecircleag.com/rpcns}GroupLookupParams
#   batchOffset - SOAP::SOAPInt
#   batchSize - SOAP::SOAPInt
#   groupName - SOAP::SOAPString
#   sortAscending - SOAP::SOAPBoolean
#   sortProperty - SOAP::SOAPString
class GroupLookupParams
  attr_accessor :batchOffset
  attr_accessor :batchSize
  attr_accessor :groupName
  attr_accessor :sortAscending
  attr_accessor :sortProperty

  def initialize(batchOffset = nil, batchSize = nil, groupName = nil, sortAscending = nil, sortProperty = nil)
    @batchOffset = batchOffset
    @batchSize = batchSize
    @groupName = groupName
    @sortAscending = sortAscending
    @sortProperty = sortProperty
  end
end

# {http://webservices.ecircleag.com/rpcns}GroupCore
#   iSOCountryCode - SOAP::SOAPString
#   iSOLanguageCode - SOAP::SOAPString
#   archived - SOAP::SOAPBoolean
#   categoryId - SOAP::SOAPString
#   creationDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   id - SOAP::SOAPString
#   name - SOAP::SOAPString
#   noOfBouncedMembers - SOAP::SOAPInt
#   noOfMembers - SOAP::SOAPInt
#   noOfMessages - SOAP::SOAPInt
#   noOfModMembers - SOAP::SOAPInt
#   noOfModMessages - SOAP::SOAPInt
#   ownerEmail - SOAP::SOAPString
#   ownerFirstname - SOAP::SOAPString
#   ownerLastname - SOAP::SOAPString
#   ownerPK - SOAP::SOAPString
class GroupCore
  attr_accessor :iSOCountryCode
  attr_accessor :iSOLanguageCode
  attr_accessor :archived
  attr_accessor :categoryId
  attr_accessor :creationDate
  attr_accessor :description
  attr_accessor :email
  attr_accessor :id
  attr_accessor :name
  attr_accessor :noOfBouncedMembers
  attr_accessor :noOfMembers
  attr_accessor :noOfMessages
  attr_accessor :noOfModMembers
  attr_accessor :noOfModMessages
  attr_accessor :ownerEmail
  attr_accessor :ownerFirstname
  attr_accessor :ownerLastname
  attr_accessor :ownerPK

  def initialize(iSOCountryCode = nil, iSOLanguageCode = nil, archived = nil, categoryId = nil, creationDate = nil, description = nil, email = nil, id = nil, name = nil, noOfBouncedMembers = nil, noOfMembers = nil, noOfMessages = nil, noOfModMembers = nil, noOfModMessages = nil, ownerEmail = nil, ownerFirstname = nil, ownerLastname = nil, ownerPK = nil)
    @iSOCountryCode = iSOCountryCode
    @iSOLanguageCode = iSOLanguageCode
    @archived = archived
    @categoryId = categoryId
    @creationDate = creationDate
    @description = description
    @email = email
    @id = id
    @name = name
    @noOfBouncedMembers = noOfBouncedMembers
    @noOfMembers = noOfMembers
    @noOfMessages = noOfMessages
    @noOfModMembers = noOfModMembers
    @noOfModMessages = noOfModMessages
    @ownerEmail = ownerEmail
    @ownerFirstname = ownerFirstname
    @ownerLastname = ownerLastname
    @ownerPK = ownerPK
  end
end

# {http://webservices.ecircleag.com/rpcns}HourlyMessageStats
#   hour - SOAP::SOAPDateTime
#   noOfBounces - SOAP::SOAPInt
#   noOfClicks - SOAP::SOAPInt
#   noOfOpenings - SOAP::SOAPInt
#   noOfUnsubscriptions - SOAP::SOAPInt
class HourlyMessageStats
  attr_accessor :hour
  attr_accessor :noOfBounces
  attr_accessor :noOfClicks
  attr_accessor :noOfOpenings
  attr_accessor :noOfUnsubscriptions

  def initialize(hour = nil, noOfBounces = nil, noOfClicks = nil, noOfOpenings = nil, noOfUnsubscriptions = nil)
    @hour = hour
    @noOfBounces = noOfBounces
    @noOfClicks = noOfClicks
    @noOfOpenings = noOfOpenings
    @noOfUnsubscriptions = noOfUnsubscriptions
  end
end

# {http://webservices.ecircleag.com/rpcns}getVersion
class GetVersion
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}getVersionResponse
#   getVersionReturn - SOAP::SOAPString
class GetVersionResponse
  attr_accessor :getVersionReturn

  def initialize(getVersionReturn = nil)
    @getVersionReturn = getVersionReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}getGroupId
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
class GetGroupId
  attr_accessor :session
  attr_accessor :email

  def initialize(session = nil, email = nil)
    @session = session
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}getGroupIdResponse
#   getGroupIdReturn - SOAP::SOAPString
class GetGroupIdResponse
  attr_accessor :getGroupIdReturn

  def initialize(getGroupIdReturn = nil)
    @getGroupIdReturn = getGroupIdReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}logon
#   realm - SOAP::SOAPString
#   user - SOAP::SOAPString
#   passwd - SOAP::SOAPString
class Logon
  attr_accessor :realm
  attr_accessor :user
  attr_accessor :passwd

  def initialize(realm = nil, user = nil, passwd = nil)
    @realm = realm
    @user = user
    @passwd = passwd
  end
end

# {http://webservices.ecircleag.com/rpcns}logonResponse
#   logonReturn - SOAP::SOAPString
class LogonResponse
  attr_accessor :logonReturn

  def initialize(logonReturn = nil)
    @logonReturn = logonReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}logout
#   session - SOAP::SOAPString
class Logout
  attr_accessor :session

  def initialize(session = nil)
    @session = session
  end
end

# {http://webservices.ecircleag.com/rpcns}logoutResponse
class LogoutResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}setAsynchronous
#   session - SOAP::SOAPString
#   asynchronous - SOAP::SOAPBoolean
class SetAsynchronous
  attr_accessor :session
  attr_accessor :asynchronous

  def initialize(session = nil, asynchronous = nil)
    @session = session
    @asynchronous = asynchronous
  end
end

# {http://webservices.ecircleag.com/rpcns}setAsynchronousResponse
class SetAsynchronousResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}createUser
#   session - SOAP::SOAPString
#   userXmlSpec - SOAP::SOAPString
class CreateUser
  attr_accessor :session
  attr_accessor :userXmlSpec

  def initialize(session = nil, userXmlSpec = nil)
    @session = session
    @userXmlSpec = userXmlSpec
  end
end

# {http://webservices.ecircleag.com/rpcns}createUserResponse
#   createUserReturn - SOAP::SOAPString
class CreateUserResponse
  attr_accessor :createUserReturn

  def initialize(createUserReturn = nil)
    @createUserReturn = createUserReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateUserByEmail
#   session - SOAP::SOAPString
#   userXml - SOAP::SOAPString
#   sendMessage - SOAP::SOAPBoolean
class CreateOrUpdateUserByEmail
  attr_accessor :session
  attr_accessor :userXml
  attr_accessor :sendMessage

  def initialize(session = nil, userXml = nil, sendMessage = nil)
    @session = session
    @userXml = userXml
    @sendMessage = sendMessage
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateUserByEmailResponse
#   createOrUpdateUserByEmailReturn - SOAP::SOAPString
class CreateOrUpdateUserByEmailResponse
  attr_accessor :createOrUpdateUserByEmailReturn

  def initialize(createOrUpdateUserByEmailReturn = nil)
    @createOrUpdateUserByEmailReturn = createOrUpdateUserByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateUserMemberByEmail
#   session - SOAP::SOAPString
#   memberXml - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   sendMessage - SOAP::SOAPBoolean
class CreateOrUpdateUserMemberByEmail
  attr_accessor :session
  attr_accessor :memberXml
  attr_accessor :groupId
  attr_accessor :sendMessage

  def initialize(session = nil, memberXml = nil, groupId = nil, sendMessage = nil)
    @session = session
    @memberXml = memberXml
    @groupId = groupId
    @sendMessage = sendMessage
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateUserMemberByEmailResponse
#   createOrUpdateUserMemberByEmailReturn - SOAP::SOAPString
class CreateOrUpdateUserMemberByEmailResponse
  attr_accessor :createOrUpdateUserMemberByEmailReturn

  def initialize(createOrUpdateUserMemberByEmailReturn = nil)
    @createOrUpdateUserMemberByEmailReturn = createOrUpdateUserMemberByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteUserByEmail
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
class DeleteUserByEmail
  attr_accessor :session
  attr_accessor :email

  def initialize(session = nil, email = nil)
    @session = session
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteUserByEmailResponse
class DeleteUserByEmailResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByEmail
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
class LookupUserByEmail
  attr_accessor :session
  attr_accessor :email

  def initialize(session = nil, email = nil)
    @session = session
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByEmailResponse
#   lookupUserByEmailReturn - SOAP::SOAPString
class LookupUserByEmailResponse
  attr_accessor :lookupUserByEmailReturn

  def initialize(lookupUserByEmailReturn = nil)
    @lookupUserByEmailReturn = lookupUserByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByIdentifier
#   session - SOAP::SOAPString
#   identifier - SOAP::SOAPString
class LookupUserByIdentifier
  attr_accessor :session
  attr_accessor :identifier

  def initialize(session = nil, identifier = nil)
    @session = session
    @identifier = identifier
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByIdentifierResponse
#   lookupUserByIdentifierReturn - SOAP::SOAPString
class LookupUserByIdentifierResponse
  attr_accessor :lookupUserByIdentifierReturn

  def initialize(lookupUserByIdentifierReturn = nil)
    @lookupUserByIdentifierReturn = lookupUserByIdentifierReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByMobileNumber
#   session - SOAP::SOAPString
#   mobile - SOAP::SOAPString
class LookupUserByMobileNumber
  attr_accessor :session
  attr_accessor :mobile

  def initialize(session = nil, mobile = nil)
    @session = session
    @mobile = mobile
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByMobileNumberResponse
#   lookupUserByMobileNumberReturn - SOAP::SOAPString
class LookupUserByMobileNumberResponse
  attr_accessor :lookupUserByMobileNumberReturn

  def initialize(lookupUserByMobileNumberReturn = nil)
    @lookupUserByMobileNumberReturn = lookupUserByMobileNumberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByMobileNumber
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   mobile - SOAP::SOAPString
#   onlyActive - SOAP::SOAPBoolean
class LookupMemberByMobileNumber
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :mobile
  attr_accessor :onlyActive

  def initialize(session = nil, groupId = nil, mobile = nil, onlyActive = nil)
    @session = session
    @groupId = groupId
    @mobile = mobile
    @onlyActive = onlyActive
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByMobileNumberResponse
#   lookupMemberByMobileNumberReturn - SOAP::SOAPString
class LookupMemberByMobileNumberResponse
  attr_accessor :lookupMemberByMobileNumberReturn

  def initialize(lookupMemberByMobileNumberReturn = nil)
    @lookupMemberByMobileNumberReturn = lookupMemberByMobileNumberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByFaxNumber
#   session - SOAP::SOAPString
#   fax - SOAP::SOAPString
class LookupUserByFaxNumber
  attr_accessor :session
  attr_accessor :fax

  def initialize(session = nil, fax = nil)
    @session = session
    @fax = fax
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByFaxNumberResponse
#   lookupUserByFaxNumberReturn - SOAP::SOAPString
class LookupUserByFaxNumberResponse
  attr_accessor :lookupUserByFaxNumberReturn

  def initialize(lookupUserByFaxNumberReturn = nil)
    @lookupUserByFaxNumberReturn = lookupUserByFaxNumberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMessages
#   session - SOAP::SOAPString
#   lookupParams - MessageLookupParams
class LookupMessages
  attr_accessor :session
  attr_accessor :lookupParams

  def initialize(session = nil, lookupParams = nil)
    @session = session
    @lookupParams = lookupParams
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMessagesResponse
class LookupMessagesResponse < ::Array
end

# {http://webservices.ecircleag.com/rpcns}lookupGroups
#   session - SOAP::SOAPString
#   lookupParams - GroupLookupParams
class LookupGroups
  attr_accessor :session
  attr_accessor :lookupParams

  def initialize(session = nil, lookupParams = nil)
    @session = session
    @lookupParams = lookupParams
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupGroupsResponse
class LookupGroupsResponse < ::Array
end

# {http://webservices.ecircleag.com/rpcns}createMember
#   session - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   invite - SOAP::SOAPBoolean
#   sendMessage - SOAP::SOAPBoolean
class CreateMember
  attr_accessor :session
  attr_accessor :userId
  attr_accessor :groupId
  attr_accessor :invite
  attr_accessor :sendMessage

  def initialize(session = nil, userId = nil, groupId = nil, invite = nil, sendMessage = nil)
    @session = session
    @userId = userId
    @groupId = groupId
    @invite = invite
    @sendMessage = sendMessage
  end
end

# {http://webservices.ecircleag.com/rpcns}createMemberResponse
#   createMemberReturn - SOAP::SOAPString
class CreateMemberResponse
  attr_accessor :createMemberReturn

  def initialize(createMemberReturn = nil)
    @createMemberReturn = createMemberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserById
#   session - SOAP::SOAPString
#   userId - SOAP::SOAPString
class LookupUserById
  attr_accessor :session
  attr_accessor :userId

  def initialize(session = nil, userId = nil)
    @session = session
    @userId = userId
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupUserByIdResponse
#   lookupUserByIdReturn - SOAP::SOAPString
class LookupUserByIdResponse
  attr_accessor :lookupUserByIdReturn

  def initialize(lookupUserByIdReturn = nil)
    @lookupUserByIdReturn = lookupUserByIdReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   email - SOAP::SOAPString
class LookupMemberByEmail
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :email

  def initialize(session = nil, groupId = nil, email = nil)
    @session = session
    @groupId = groupId
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByEmailResponse
#   lookupMemberByEmailReturn - SOAP::SOAPString
class LookupMemberByEmailResponse
  attr_accessor :lookupMemberByEmailReturn

  def initialize(lookupMemberByEmailReturn = nil)
    @lookupMemberByEmailReturn = lookupMemberByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail_v2_0
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   email - SOAP::SOAPString
#   onlyActive - SOAP::SOAPBoolean
class LookupMemberByEmail_v2_0
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :email
  attr_accessor :onlyActive

  def initialize(session = nil, groupId = nil, email = nil, onlyActive = nil)
    @session = session
    @groupId = groupId
    @email = email
    @onlyActive = onlyActive
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByEmail_v2_0Response
#   lookupMemberByEmail_v2_0Return - SOAP::SOAPString
class LookupMemberByEmail_v2_0Response
  attr_accessor :lookupMemberByEmail_v2_0Return

  def initialize(lookupMemberByEmail_v2_0Return = nil)
    @lookupMemberByEmail_v2_0Return = lookupMemberByEmail_v2_0Return
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberById
#   session - SOAP::SOAPString
#   memberid - SOAP::SOAPString
class LookupMemberById
  attr_accessor :session
  attr_accessor :memberid

  def initialize(session = nil, memberid = nil)
    @session = session
    @memberid = memberid
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByIdResponse
#   lookupMemberByIdReturn - SOAP::SOAPString
class LookupMemberByIdResponse
  attr_accessor :lookupMemberByIdReturn

  def initialize(lookupMemberByIdReturn = nil)
    @lookupMemberByIdReturn = lookupMemberByIdReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberById_v2_0
#   session - SOAP::SOAPString
#   memberid - SOAP::SOAPString
#   onlyActive - SOAP::SOAPBoolean
class LookupMemberById_v2_0
  attr_accessor :session
  attr_accessor :memberid
  attr_accessor :onlyActive

  def initialize(session = nil, memberid = nil, onlyActive = nil)
    @session = session
    @memberid = memberid
    @onlyActive = onlyActive
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberById_v2_0Response
#   lookupMemberById_v2_0Return - SOAP::SOAPString
class LookupMemberById_v2_0Response
  attr_accessor :lookupMemberById_v2_0Return

  def initialize(lookupMemberById_v2_0Return = nil)
    @lookupMemberById_v2_0Return = lookupMemberById_v2_0Return
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByIdentifier
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   identifier - SOAP::SOAPString
#   onlyActive - SOAP::SOAPBoolean
class LookupMemberByIdentifier
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :identifier
  attr_accessor :onlyActive

  def initialize(session = nil, groupId = nil, identifier = nil, onlyActive = nil)
    @session = session
    @groupId = groupId
    @identifier = identifier
    @onlyActive = onlyActive
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByIdentifierResponse
#   lookupMemberByIdentifierReturn - SOAP::SOAPString
class LookupMemberByIdentifierResponse
  attr_accessor :lookupMemberByIdentifierReturn

  def initialize(lookupMemberByIdentifierReturn = nil)
    @lookupMemberByIdentifierReturn = lookupMemberByIdentifierReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId
#   session - SOAP::SOAPString
#   groupid - SOAP::SOAPString
#   userId - SOAP::SOAPString
class LookupMemberByUserId
  attr_accessor :session
  attr_accessor :groupid
  attr_accessor :userId

  def initialize(session = nil, groupid = nil, userId = nil)
    @session = session
    @groupid = groupid
    @userId = userId
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByUserIdResponse
#   lookupMemberByUserIdReturn - SOAP::SOAPString
class LookupMemberByUserIdResponse
  attr_accessor :lookupMemberByUserIdReturn

  def initialize(lookupMemberByUserIdReturn = nil)
    @lookupMemberByUserIdReturn = lookupMemberByUserIdReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId_v2_0
#   session - SOAP::SOAPString
#   groupid - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   onlyActive - SOAP::SOAPBoolean
class LookupMemberByUserId_v2_0
  attr_accessor :session
  attr_accessor :groupid
  attr_accessor :userId
  attr_accessor :onlyActive

  def initialize(session = nil, groupid = nil, userId = nil, onlyActive = nil)
    @session = session
    @groupid = groupid
    @userId = userId
    @onlyActive = onlyActive
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupMemberByUserId_v2_0Response
#   lookupMemberByUserId_v2_0Return - SOAP::SOAPString
class LookupMemberByUserId_v2_0Response
  attr_accessor :lookupMemberByUserId_v2_0Return

  def initialize(lookupMemberByUserId_v2_0Return = nil)
    @lookupMemberByUserId_v2_0Return = lookupMemberByUserId_v2_0Return
  end
end

# {http://webservices.ecircleag.com/rpcns}updateMember
#   session - SOAP::SOAPString
#   memberXmlSpec - SOAP::SOAPString
class UpdateMember
  attr_accessor :session
  attr_accessor :memberXmlSpec

  def initialize(session = nil, memberXmlSpec = nil)
    @session = session
    @memberXmlSpec = memberXmlSpec
  end
end

# {http://webservices.ecircleag.com/rpcns}updateMemberResponse
#   updateMemberReturn - SOAP::SOAPBoolean
class UpdateMemberResponse
  attr_accessor :updateMemberReturn

  def initialize(updateMemberReturn = nil)
    @updateMemberReturn = updateMemberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}updateUser
#   session - SOAP::SOAPString
#   userXmlSpec - SOAP::SOAPString
class UpdateUser
  attr_accessor :session
  attr_accessor :userXmlSpec

  def initialize(session = nil, userXmlSpec = nil)
    @session = session
    @userXmlSpec = userXmlSpec
  end
end

# {http://webservices.ecircleag.com/rpcns}updateUserResponse
#   updateUserReturn - SOAP::SOAPBoolean
class UpdateUserResponse
  attr_accessor :updateUserReturn

  def initialize(updateUserReturn = nil)
    @updateUserReturn = updateUserReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}updateUserByEmail
#   session - SOAP::SOAPString
#   userXmlSpec - SOAP::SOAPString
class UpdateUserByEmail
  attr_accessor :session
  attr_accessor :userXmlSpec

  def initialize(session = nil, userXmlSpec = nil)
    @session = session
    @userXmlSpec = userXmlSpec
  end
end

# {http://webservices.ecircleag.com/rpcns}updateUserByEmailResponse
#   updateUserByEmailReturn - SOAP::SOAPBoolean
class UpdateUserByEmailResponse
  attr_accessor :updateUserByEmailReturn

  def initialize(updateUserByEmailReturn = nil)
    @updateUserByEmailReturn = updateUserByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteUser
#   session - SOAP::SOAPString
#   userId - SOAP::SOAPString
class DeleteUser
  attr_accessor :session
  attr_accessor :userId

  def initialize(session = nil, userId = nil)
    @session = session
    @userId = userId
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteUserResponse
#   deleteUserReturn - SOAP::SOAPBoolean
class DeleteUserResponse
  attr_accessor :deleteUserReturn

  def initialize(deleteUserReturn = nil)
    @deleteUserReturn = deleteUserReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteMember
#   session - SOAP::SOAPString
#   memberId - SOAP::SOAPString
class DeleteMember
  attr_accessor :session
  attr_accessor :memberId

  def initialize(session = nil, memberId = nil)
    @session = session
    @memberId = memberId
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteMemberResponse
#   deleteMemberReturn - SOAP::SOAPBoolean
class DeleteMemberResponse
  attr_accessor :deleteMemberReturn

  def initialize(deleteMemberReturn = nil)
    @deleteMemberReturn = deleteMemberReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}unsubscribeMemberByEmail
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   sendMessage - SOAP::SOAPBoolean
class UnsubscribeMemberByEmail
  attr_accessor :session
  attr_accessor :email
  attr_accessor :groupId
  attr_accessor :sendMessage

  def initialize(session = nil, email = nil, groupId = nil, sendMessage = nil)
    @session = session
    @email = email
    @groupId = groupId
    @sendMessage = sendMessage
  end
end

# {http://webservices.ecircleag.com/rpcns}unsubscribeMemberByEmailResponse
#   unsubscribeMemberByEmailReturn - SOAP::SOAPBoolean
class UnsubscribeMemberByEmailResponse
  attr_accessor :unsubscribeMemberByEmailReturn

  def initialize(unsubscribeMemberByEmailReturn = nil)
    @unsubscribeMemberByEmailReturn = unsubscribeMemberByEmailReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteMessage
#   session - SOAP::SOAPString
#   messageId - SOAP::SOAPString
class DeleteMessage
  attr_accessor :session
  attr_accessor :messageId

  def initialize(session = nil, messageId = nil)
    @session = session
    @messageId = messageId
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteMessageResponse
#   deleteMessageReturn - SOAP::SOAPBoolean
class DeleteMessageResponse
  attr_accessor :deleteMessageReturn

  def initialize(deleteMessageReturn = nil)
    @deleteMessageReturn = deleteMessageReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}cloneGroup
#   session - SOAP::SOAPString
#   templateGroupId - SOAP::SOAPString
#   newGroupEmail - SOAP::SOAPString
#   newGroupName - SOAP::SOAPString
#   keepOwner - SOAP::SOAPBoolean
class CloneGroup
  attr_accessor :session
  attr_accessor :templateGroupId
  attr_accessor :newGroupEmail
  attr_accessor :newGroupName
  attr_accessor :keepOwner

  def initialize(session = nil, templateGroupId = nil, newGroupEmail = nil, newGroupName = nil, keepOwner = nil)
    @session = session
    @templateGroupId = templateGroupId
    @newGroupEmail = newGroupEmail
    @newGroupName = newGroupName
    @keepOwner = keepOwner
  end
end

# {http://webservices.ecircleag.com/rpcns}cloneGroupResponse
#   cloneGroupReturn - SOAP::SOAPString
class CloneGroupResponse
  attr_accessor :cloneGroupReturn

  def initialize(cloneGroupReturn = nil)
    @cloneGroupReturn = cloneGroupReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}changeGroupSettings
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   description - SOAP::SOAPString
#   prefix - SOAP::SOAPString
#   textFooter - SOAP::SOAPString
#   textHeader - SOAP::SOAPString
#   htmlFooter - SOAP::SOAPString
#   htmlHeader - SOAP::SOAPString
class ChangeGroupSettings
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :description
  attr_accessor :prefix
  attr_accessor :textFooter
  attr_accessor :textHeader
  attr_accessor :htmlFooter
  attr_accessor :htmlHeader

  def initialize(session = nil, groupId = nil, description = nil, prefix = nil, textFooter = nil, textHeader = nil, htmlFooter = nil, htmlHeader = nil)
    @session = session
    @groupId = groupId
    @description = description
    @prefix = prefix
    @textFooter = textFooter
    @textHeader = textHeader
    @htmlFooter = htmlFooter
    @htmlHeader = htmlHeader
  end
end

# {http://webservices.ecircleag.com/rpcns}changeGroupSettingsResponse
class ChangeGroupSettingsResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}setGroupProperty
#   session - SOAP::SOAPString
#   gid - SOAP::SOAPString
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class SetGroupProperty
  attr_accessor :session
  attr_accessor :gid
  attr_accessor :name
  attr_accessor :value

  def initialize(session = nil, gid = nil, name = nil, value = nil)
    @session = session
    @gid = gid
    @name = name
    @value = value
  end
end

# {http://webservices.ecircleag.com/rpcns}setGroupPropertyResponse
class SetGroupPropertyResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}getGroupProperty
#   session - SOAP::SOAPString
#   gid - SOAP::SOAPString
#   name - SOAP::SOAPString
class GetGroupProperty
  attr_accessor :session
  attr_accessor :gid
  attr_accessor :name

  def initialize(session = nil, gid = nil, name = nil)
    @session = session
    @gid = gid
    @name = name
  end
end

# {http://webservices.ecircleag.com/rpcns}getGroupPropertyResponse
#   getGroupPropertyReturn - SOAP::SOAPString
class GetGroupPropertyResponse
  attr_accessor :getGroupPropertyReturn

  def initialize(getGroupPropertyReturn = nil)
    @getGroupPropertyReturn = getGroupPropertyReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}copyAndSendDraftMessage
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   messageId - SOAP::SOAPString
class CopyAndSendDraftMessage
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :messageId

  def initialize(session = nil, groupId = nil, messageId = nil)
    @session = session
    @groupId = groupId
    @messageId = messageId
  end
end

# {http://webservices.ecircleag.com/rpcns}copyAndSendDraftMessageResponse
#   copyAndSendDraftMessageReturn - SOAP::SOAPString
class CopyAndSendDraftMessageResponse
  attr_accessor :copyAndSendDraftMessageReturn

  def initialize(copyAndSendDraftMessageReturn = nil)
    @copyAndSendDraftMessageReturn = copyAndSendDraftMessageReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}sendSingleMessageToUser
#   session - SOAP::SOAPString
#   singleMessageId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class SendSingleMessageToUser
  attr_accessor :session
  attr_accessor :singleMessageId
  attr_accessor :userId

  def initialize(session = nil, singleMessageId = nil, userId = nil)
    @session = session
    @singleMessageId = singleMessageId
    @userId = userId
  end
end

# {http://webservices.ecircleag.com/rpcns}sendSingleMessageToUserResponse
class SendSingleMessageToUserResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}sendParametrizedSingleMessageToUser
#   session - SOAP::SOAPString
#   singleMessageId - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   names - SOAP::SOAPString
#   values - SOAP::SOAPString
class SendParametrizedSingleMessageToUser
  attr_accessor :session
  attr_accessor :singleMessageId
  attr_accessor :userId
  attr_accessor :names
  attr_accessor :values

  def initialize(session = nil, singleMessageId = nil, userId = nil, names = [], values = [])
    @session = session
    @singleMessageId = singleMessageId
    @userId = userId
    @names = names
    @values = values
  end
end

# {http://webservices.ecircleag.com/rpcns}sendParametrizedSingleMessageToUserResponse
class SendParametrizedSingleMessageToUserResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}sendGroupMessageToUser
#   session - SOAP::SOAPString
#   groupid - SOAP::SOAPString
#   messageId - SOAP::SOAPString
#   userId - SOAP::SOAPString
class SendGroupMessageToUser
  attr_accessor :session
  attr_accessor :groupid
  attr_accessor :messageId
  attr_accessor :userId

  def initialize(session = nil, groupid = nil, messageId = nil, userId = nil)
    @session = session
    @groupid = groupid
    @messageId = messageId
    @userId = userId
  end
end

# {http://webservices.ecircleag.com/rpcns}sendGroupMessageToUserResponse
class SendGroupMessageToUserResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteGroup
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
class DeleteGroup
  attr_accessor :session
  attr_accessor :groupId

  def initialize(session = nil, groupId = nil)
    @session = session
    @groupId = groupId
  end
end

# {http://webservices.ecircleag.com/rpcns}deleteGroupResponse
#   deleteGroupReturn - SOAP::SOAPBoolean
class DeleteGroupResponse
  attr_accessor :deleteGroupReturn

  def initialize(deleteGroupReturn = nil)
    @deleteGroupReturn = deleteGroupReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}sendEmailToMe
#   session - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   message - SOAP::SOAPString
class SendEmailToMe
  attr_accessor :session
  attr_accessor :subject
  attr_accessor :message

  def initialize(session = nil, subject = nil, message = nil)
    @session = session
    @subject = subject
    @message = message
  end
end

# {http://webservices.ecircleag.com/rpcns}sendEmailToMeResponse
class SendEmailToMeResponse
  def initialize
  end
end

# {http://webservices.ecircleag.com/rpcns}addToBlacklist
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   email - SOAP::SOAPString
class AddToBlacklist
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :email

  def initialize(session = nil, groupId = nil, email = nil)
    @session = session
    @groupId = groupId
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}addToBlacklistResponse
#   addToBlacklistReturn - SOAP::SOAPBoolean
class AddToBlacklistResponse
  attr_accessor :addToBlacklistReturn

  def initialize(addToBlacklistReturn = nil)
    @addToBlacklistReturn = addToBlacklistReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}isEmailOnSystemBlacklist
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
class IsEmailOnSystemBlacklist
  attr_accessor :session
  attr_accessor :email

  def initialize(session = nil, email = nil)
    @session = session
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}isEmailOnSystemBlacklistResponse
#   isEmailOnSystemBlacklistReturn - SOAP::SOAPBoolean
class IsEmailOnSystemBlacklistResponse
  attr_accessor :isEmailOnSystemBlacklistReturn

  def initialize(isEmailOnSystemBlacklistReturn = nil)
    @isEmailOnSystemBlacklistReturn = isEmailOnSystemBlacklistReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}isEmailBouncedSystemwide
#   session - SOAP::SOAPString
#   email - SOAP::SOAPString
class IsEmailBouncedSystemwide
  attr_accessor :session
  attr_accessor :email

  def initialize(session = nil, email = nil)
    @session = session
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}isEmailBouncedSystemwideResponse
#   isEmailBouncedSystemwideReturn - SOAP::SOAPBoolean
class IsEmailBouncedSystemwideResponse
  attr_accessor :isEmailBouncedSystemwideReturn

  def initialize(isEmailBouncedSystemwideReturn = nil)
    @isEmailBouncedSystemwideReturn = isEmailBouncedSystemwideReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}removeFromBlacklist
#   session - SOAP::SOAPString
#   groupId - SOAP::SOAPString
#   email - SOAP::SOAPString
class RemoveFromBlacklist
  attr_accessor :session
  attr_accessor :groupId
  attr_accessor :email

  def initialize(session = nil, groupId = nil, email = nil)
    @session = session
    @groupId = groupId
    @email = email
  end
end

# {http://webservices.ecircleag.com/rpcns}removeFromBlacklistResponse
#   removeFromBlacklistReturn - SOAP::SOAPBoolean
class RemoveFromBlacklistResponse
  attr_accessor :removeFromBlacklistReturn

  def initialize(removeFromBlacklistReturn = nil)
    @removeFromBlacklistReturn = removeFromBlacklistReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateGroup
#   session - SOAP::SOAPString
#   groupXML - SOAP::SOAPString
class CreateOrUpdateGroup
  attr_accessor :session
  attr_accessor :groupXML

  def initialize(session = nil, groupXML = nil)
    @session = session
    @groupXML = groupXML
  end
end

# {http://webservices.ecircleag.com/rpcns}createOrUpdateGroupResponse
#   createOrUpdateGroupReturn - SOAP::SOAPString
class CreateOrUpdateGroupResponse
  attr_accessor :createOrUpdateGroupReturn

  def initialize(createOrUpdateGroupReturn = nil)
    @createOrUpdateGroupReturn = createOrUpdateGroupReturn
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupHourlyMessageStats
#   session - SOAP::SOAPString
#   messageid - SOAP::SOAPString
#   periodStartDate - SOAP::SOAPDateTime
#   periodEndDate - SOAP::SOAPDateTime
class LookupHourlyMessageStats
  attr_accessor :session
  attr_accessor :messageid
  attr_accessor :periodStartDate
  attr_accessor :periodEndDate

  def initialize(session = nil, messageid = nil, periodStartDate = nil, periodEndDate = nil)
    @session = session
    @messageid = messageid
    @periodStartDate = periodStartDate
    @periodEndDate = periodEndDate
  end
end

# {http://webservices.ecircleag.com/rpcns}lookupHourlyMessageStatsResponse
class LookupHourlyMessageStatsResponse < ::Array
end
