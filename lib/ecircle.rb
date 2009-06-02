module Ecircle
  
  
  require 'rubygems'
  require 'hpricot'
  gem 'soap4r'
  require "soap/wsdlDriver"
  require "builder"
  
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
      attr_accessor :doc #the xml document from ecircle
      attr_accessor :email #the persons email address
      
      def find_by_email(email)
        self.email = email      
        self.doc = Hpricot.XML(driver.lookupUserByEmail(:session => session, :email => email).lookupUserByEmailReturn)
        self
      end
      
      def id
        (@doc/"user").first.attributes['id'].to_i
      end
    
      
      def method_missing(method_name, *args)
        if method_name.to_s =~ /^.*=$/
          return instance_variable_set("@#{method_name.to_s.gsub('=','')}",  args[0])
        else
          if self.custom_atributes.include?(method_name)
            if element = (@doc/"namedattr[@name='#{method_name}']")
              if element.respond_to?(:inner_html)
                instance_variable_set("@#{method_name}",  element.inner_html) if instance_variable_get("@#{method_name}").nil?
                return instance_variable_get("@#{method_name}")
              end
            end
          elsif self.standard_attributes.include?(method_name)
            if element = (@doc/"#{method_name}")
              if element.respond_to?(:inner_html)
                instance_variable_set("@#{method_name}",  element.inner_html) if instance_variable_get("@#{method_name}").nil?
                return instance_variable_get("@#{method_name}")
              end
            end
          end          
        end  
        super      
      end

      
      def unsubscribe(group_id = '', sendMessage = false)
        driver.unsubscribeMemberByEmail(:session => session, :email => email, :groupId => group_id, :sendMessage => false).unsubscribeMemberByEmailResponse
      end
      
      def save
        driver.updateUserByEmail(:session => session, :userXmlSpec => self.to_xml)
      end
      
      def to_xml
        x = Builder::XmlMarkup.new
        x.user do |user|
          standard_attributes.each do |attribute|  
            eval("user.#{attribute}('#{self.send(attribute)}')")
          end
          custom_atributes.each do |attribute| 
            user.namedattr({:name => attribute}, self.send(attribute))
          end
        end
      end
      
      def custom_atributes
        @custom_atributes ||= (@doc/"namedattr").collect { |field| field.attributes['name'].to_sym }         
      end
      
      def standard_attributes
        [:email, :title, :firstname, :lastname, :dob_dd, :dob_mm, :dob_yyyy, :countrycode, :languagecode, :nickname,
         :cust_attr_0, :cust_attr_1, :cust_attr_2, :cust_attr_3, :cust_attr_4, :cust_attr_5, :cust_attr_6, :cust_attr_7,
         :cust_attr_8, :cust_attr_9]
      end
      
      def send_message(message_id)
        driver.sendParametrizedSingleMessageToUser(:session => session,
                                                   :singleMessageId => message_id,
                                                   :userId => self.id,
                                                   :names => "",
                                                   :values => "")
        
      end
    end    
  end
  
  
    
end
