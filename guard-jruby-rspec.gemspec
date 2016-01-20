# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'guard/jruby-rspec/version'

Gem::Specification.new do |s|
  s.name        = 'guard-jruby-rspec'
  s.version     = Guard::JRubyRSpecVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Joe Kutner']
  s.email       = ['jpkutner@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/guard-jruby-rspec'
  s.summary     = 'Guard gem for JRuby RSpec'
  s.description = 'Guard::JRubyRSpec keeps a warmed up JVM ready to run your specs.'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'guard-jruby-rspec'

  s.add_dependency 'guard', '~> 2.13'
  s.add_dependency 'guard-rspec', '~> 4.6', '>= 4.6.4'

  s.add_development_dependency 'rspec', '~> 3.4'

  s.files        = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.require_path = 'lib'
  s.license = "MIT"
end
