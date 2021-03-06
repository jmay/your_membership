# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'your_membership/version'

Gem::Specification.new do |spec|
  spec.name          = "your_membership"
  spec.version       = YourMembership::VERSION
  spec.authors       = ["Nate Flood"]
  spec.email         = ["nflood@echonet.org"]
  spec.summary       = %q{Ruby SDK for interfacing with the YourMembership.com XML API}
  spec.description   = %q{The YourMembership member community product offers a wide range of features through its
    external API. This API is implemented through a specialized set of XML POSTS which is not easily abstracted into a
    RESTful interface. The purpose of this SDK is to enable Ruby developers and systems using Ruby on Rails to interface
    natively with the YourMembership.com API.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", ">=0.13.1", "<0.17"
  spec.add_dependency "nokogiri", "~>1.6"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
end
