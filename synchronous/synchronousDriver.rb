require File.expand_path(File.dirname(__FILE__) + '/synchronous')           
require File.expand_path(File.dirname(__FILE__) + '/synchronousMappingRegistry')           
require 'soap/rpc/driver'

class EcMSoapBridge < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://webservices.ecircle-ag.com/rpc"

  Methods = [
    [ "",
      "getVersion",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getVersion"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getVersionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getGroupId",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getGroupId"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getGroupIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "logon",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "logon"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "logonResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "logout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "logout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "setAsynchronous",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "setAsynchronous"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "setAsynchronousResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "createUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "createOrUpdateUserByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateUserByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateUserByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "createOrUpdateUserMemberByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateUserMemberByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateUserMemberByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "deleteUserByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteUserByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteUserByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupUserByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupUserByIdentifier",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByIdentifier"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByIdentifierResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupUserByMobileNumber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByMobileNumber"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByMobileNumberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByMobileNumber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByMobileNumber"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByMobileNumberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupUserByFaxNumber",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByFaxNumber"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByFaxNumberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMessages",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMessages"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMessagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "createMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupUserById",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserById"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupUserByIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByEmail_v2_0",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByEmail_v2_0"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByEmail_v2_0Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberById",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberById"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberById_v2_0",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberById_v2_0"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberById_v2_0Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByIdentifier",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByIdentifier"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByIdentifierResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByUserId",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByUserId"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByUserIdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupMemberByUserId_v2_0",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByUserId_v2_0"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupMemberByUserId_v2_0Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "updateMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "updateUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "updateUserByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateUserByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "updateUserByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "deleteUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "deleteMember",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteMember"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteMemberResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "unsubscribeMemberByEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "unsubscribeMemberByEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "unsubscribeMemberByEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "deleteMessage",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteMessage"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteMessageResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "cloneGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "cloneGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "cloneGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "changeGroupSettings",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "changeGroupSettings"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "changeGroupSettingsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "setGroupProperty",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "setGroupProperty"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "setGroupPropertyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "getGroupProperty",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getGroupProperty"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "getGroupPropertyResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "copyAndSendDraftMessage",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "copyAndSendDraftMessage"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "copyAndSendDraftMessageResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "sendSingleMessageToUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendSingleMessageToUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendSingleMessageToUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "sendParametrizedSingleMessageToUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendParametrizedSingleMessageToUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendParametrizedSingleMessageToUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "sendGroupMessageToUser",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendGroupMessageToUser"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendGroupMessageToUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "deleteGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "deleteGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "sendEmailToMe",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendEmailToMe"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "sendEmailToMeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "addToBlacklist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "addToBlacklist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "addToBlacklistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "isEmailOnSystemBlacklist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "isEmailOnSystemBlacklist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "isEmailOnSystemBlacklistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "isEmailBouncedSystemwide",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "isEmailBouncedSystemwide"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "isEmailBouncedSystemwideResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "removeFromBlacklist",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "removeFromBlacklist"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "removeFromBlacklistResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "createOrUpdateGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "createOrUpdateGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ],
    [ "",
      "lookupHourlyMessageStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupHourlyMessageStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://webservices.ecircleag.com/rpcns", "lookupHourlyMessageStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"EcMException"=>{:encodingstyle=>"document", :namespace=>nil, :name=>"EcMException", :ns=>"http://webservices.ecircleag.com/rpcns", :use=>"literal"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

