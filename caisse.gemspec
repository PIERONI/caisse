# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "paiement_cic"
  s.version     = "0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Guillaume Barillot", "Novelys Team"]
  s.homepage    = "https://github.com/gbarilot/caisse_active"
  s.summary     = %q{CIC / ATOS French credit card payment toolbox}
  s.description = %q{Caisse active is a gem to ease credit card payment using ATOS or Paiement CIC, 2 of the most common French payment gateways.}

  s.files = %w(README.md LICENSE) + Dir["lib/**/*", "app/**/*"]
  s.license = 'MIT'

  s.require_paths = ["lib"]

  s.add_dependency 'activesupport'
  s.add_dependency 'i18n'
end
