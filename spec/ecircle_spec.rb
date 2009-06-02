require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ecircle" do
  before(:each) do
    configuration = YAML::load( File.open( File.expand_path(File.dirname(__FILE__) + '/ecircle.yml') ) )
    @api = Ecircle::API::Member.authenticate(configuration['ecmessenger_url'], configuration['ecmessenger_username'], configuration['ecmessenger_password'])
    @matt = @api.find_by_email("mail@matthewfawcett.co.uk")
  end
  
  it "should be able to find a user" do
    @matt.firstname.should eql("Matt")
    @matt.lastname.should eql("Fawcett")
  end
  
  it "should return nil if the user is not found" do
    @fake = @api.find_by_email("fakeuser123588@fakedomain.com")
    @fake.should be_nil
  end
  
  it "should allow me access to custom attributes" do
    @matt.FullName.should eql("Matt Fawcett")
  end
  
  it "should give me asccess to the user id" do
    @matt.id.should eql(3500322370)
  end
  
  it "should allow me to update a standard attribute" do
    #update the name
    @matt.firstname = "New name"
    @matt.save
    #now refresh and make sure its changed
    @matt = @api.find_by_email("mail@matthewfawcett.co.uk")
    @matt.firstname.should eql("New name")
    #Now reset it back again for future tests
    @matt.firstname = "Matt"
    @matt.save
  end
  
  it "should allow me to update a custom attribute" do
    #update the name
    @matt.FullName = "New full name"
    @matt.save
    #now refresh and make sure its changed
    @matt = @api.find_by_email("mail@matthewfawcett.co.uk")
    @matt.FullName.should eql("New full name")
    #Now reset it back again for future tests
    @matt.FullName = "Matt Fawcett"
    @matt.save
  end
  
  describe "custom_atributes" do
    it "should return an array of custom atributes on the user" do
      @matt.custom_atributes.should include(:Addr1)
      @matt.custom_atributes.should include(:Addr2)
      @matt.custom_atributes.should include(:Country)
      @matt.custom_atributes.should include(:FreeTitle)
      @matt.custom_atributes.should include(:FullName)
      @matt.custom_atributes.should include(:LastName)
      @matt.custom_atributes.should include(:Postcode)
      @matt.custom_atributes.should include(:RestID)
      @matt.custom_atributes.should include(:RestName)
      @matt.custom_atributes.should include(:RestNameCaps)
      @matt.custom_atributes.should include(:Sport)
      @matt.custom_atributes.should include(:Tel)
      @matt.custom_atributes.should include(:TemplateRef)
      @matt.custom_atributes.should include(:ask_list_id)
      @matt.custom_atributes.should include(:ask_source_description)
      @matt.custom_atributes.should include(:xLanguage)
    end
  end
  
  describe "send_message" do
    it "should send a message to the user" do
      @matt.send_message(351197566).should be_true
    end
  end
  
  describe "creating a new user" do
    it "should craete an instance of a new user with standard and custom attributes" do
      @unique = Time.now.to_i + rand(1000)
      @user = @api.new(:email => "user_#{@unique}@matthewfawcett.co.uk", :firstname => "FN#{@unique}", :FullName => "Full Name #{@unique}")
      @user.firstname.should eql("FN#{@unique}")
      @user.FullName.should eql("Full Name #{@unique}")
    end
    
    it "should give me an xml document for the unsaved user" do
      @unique = Time.now.to_i + rand(1000)
      @user = @api.new(:email => "user_#{@unique}@matthewfawcett.co.uk", :firstname => "FN#{@unique}", :FullName => "Full Name #{@unique}")
      @user.to_xml.should eql("")
    end
    
    # it "should allow me to save an instance of a new user and the user should then be on ecircle" do
    #   @unique = Time.now.to_i + rand(1000)
    #   @user = @api.new(:email => "user_#{@unique}@matthewfawcett.co.uk", :firstname => "FN#{@unique}", :FullName => "Full Name #{@unique}")
    #   @user.save.should be_true
    # end
  end

end
