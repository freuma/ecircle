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
        wsdl = "http://webservices.ecircle-ag.com/soap/ecm.wsdl"
        api = self.new
        api.driver = SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
        api.session = api.driver.logon(:realm => ecmessenger_url, :user => username, :passwd => password).logonReturn
        api
      end
    end
      
    
    class Member < API        
      attr_accessor :doc
      
      def find_by_email(email)
        self.doc = Hpricot.XML(driver.lookupUserByEmail(:session => session, :email => email).lookupUserByEmailReturn)
        self
      end
      
      def firstname
        (@doc/"firstname").inner_html.to_s
      end
      
      def lastname
        (@doc/"lastname").inner_html.to_s
      end
      
      def unsubscribe 
        
      end
    end
    
  end
  
  
    
end


