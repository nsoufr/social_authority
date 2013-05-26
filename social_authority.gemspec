# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "social_authority/version"

Gem::Specification.new do |s|
  s.name        = 'social_authority'
  s.version     = SocialAuthority::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Social Authority Ruby SDK"
  s.description = "Ruby SDK for Social Authority"
  s.authors     = ["Nando Sousa"]
  s.email       = 'nandosousafr@gmail.com'
  s.homepage    = 'http://pixelbits.com.br'
  s.license     = "MIT"

  s.files         = Dir["MIT-LICENSE", "README.md", "lib/**/*"]
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "fakeweb", ["~> 1.3"]
  s.add_development_dependency "webmock", ["~> 1.8.0"]
  s.add_development_dependency "vcr", [">= 2.0"]
  s.add_dependency "httparty", ["~> 0.11.0"]
  s.add_dependency 'ruby-hmac'
end
