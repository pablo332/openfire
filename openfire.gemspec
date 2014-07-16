# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "openfire/version"

Gem::Specification.new do |s|
  s.name = %q{openfire}

  s.version  = Openfire::VERSION
  s.platform = Gem::Platform::RUBY

  s.summary     = %q{Ruby client for the Openfire API}
  s.description = %q{Ruby client for the Openfire API. Provides access to Group, User, and Room service APIs.}

  s.authors  = [ 'Chris Bielinski' ]
  s.email    = [ 'chris@shadowreactor.com' ]
  s.homepage = 'http://github.com/chrisb/openfire'

  s.license = 'MIT'

  s.add_dependency 'activesupport', '>3'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'fakeweb'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'bundler'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = [ 'lib' ]
end
