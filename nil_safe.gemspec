$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'nil_safe/version'

Gem::Specification.new do |s|
  s.name        = 'nil_safe'
  s.version     = NilSafe::VERSION
  s.license     = 'mit'
  s.date        = '2013-05-15'
  s.summary     = "NilObject pattern for Ruby."
  s.description = "Implements NilObject for any class that you need to have a nil representation of."
  s.authors     = ['Tim Uruski']
  s.email       = 'tim@uruski.name'
  s.files       = ['lib/nil_safe.rb',
                   'lib/nil_safe/nil_object.rb']
  s.homepage    =
    'http://rubygems.org/gems/nil_safe'
end
