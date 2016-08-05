# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uswds/rails/version'

Gem::Specification.new do |s|
  s.name          = 'uswds-rails'
  s.version       = Uswds::Rails::VERSION
  s.authors       = ['Peter Karman', 'Jessie A. Young']
  s.email         = ['peter.karman@gsa.gov', 'jessica.young@gsa.gov']
  s.summary       = 'Integrate US Web Design Standards in Rails apps'
  s.description   = ('Integrate US Web Design Standards in Rails apps')
  s.homepage      = 'https://github.com/18F/uswds-rails-gem'
  s.license       = 'CC0'

  s.files         = `git ls-files -z *.md bin lib`.split("\x0") + [
  ]
  s.test_files    = Dir["spec/**/*/"]
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.required_ruby_version = ">= 2.2.2"

  s.add_runtime_dependency 'sass'

  s.add_development_dependency 'about_yml'
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rails",  ">= 3.1"
end
