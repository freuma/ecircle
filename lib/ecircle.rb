module Ecircle
  
  
  require 'rubygems'
  require 'hpricot'
  gem 'soap4r'
  require "soap/wsdlDriver"
  
  class API
    attr_accessor :driver
    attr_accessor :session
    
    class << self
      def authenticate(ecmessenger_url, username, password)
        require File.expand_path(File.dirname(__FILE__) + '/../synchronous/synchronousDriver')           
        api = self.new
        api.driver = EcMSoapBridge.new
        api.session = api.driver.logon(:realm => ecmessenger_url, :user => username, :passwd => password).logonReturn
        api
      end
    end
      
    
    class Member < API        
      attr_accessor :doc
      attr_accessor :email
      
      def find_by_email(email)
        self.email = email
        self.doc = Hpricot.XML(driver.lookupUserByEmail(:session => session, :email => email).lookupUserByEmailReturn)
        self
      end
      
      def firstname
        (@doc/"firstname").inner_html.to_s
      end
      
      def lastname
        (@doc/"lastname").inner_html.to_s
      end
      
      def unsubscribe(group_id = '', sendMessage = false)
        driver.unsubscribeMemberByEmail(:session => session, :email => email, :groupId => group_id, :sendMessage => false).unsubscribeMemberByEmailResponse
      end
    end
    
  end
  
  
    
end


