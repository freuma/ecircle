# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ecircle}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["mattfawcett"]
  s.date = %q{2009-06-15}
  s.email = %q{matt@bolseragency.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "ecircle.gemspec",
     "ecm.wsdl",
     "lib/ecircle.rb",
     "spec/ecircle_spec.rb",
     "spec/spec_helper.rb",
     "synchronous/EcMSoapBridgeServiceClient.rb",
     "synchronous/synchronous.rb",
     "synchronous/synchronousDriver.rb",
     "synchronous/synchronousMappingRegistry.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bolseragency/ecircle}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby library to interfac with Ecircle API}
  s.test_files = [
    "spec/ecircle_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
