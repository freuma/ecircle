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
  
  it "should allow me access to custom attributes" do
    @matt.FullName.should eql("Matt Fawcett")
  end
  
  it "should allow me to update the first name" do
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

end
