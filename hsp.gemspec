# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hsp/version'

Gem::Specification.new do |spec|
  spec.name          = "hsp"
  spec.version       = Hsp::VERSION
  spec.authors       = ["Preston Lee"]
  spec.email         = ["preston.lee@prestonlee.com"]

  spec.summary       = %q{Health Services Platform command line utilities.}
  spec.description   = %q{Command line utilities for interacting with an account on the public HSPC Marketplace, or any alternative deployment.}
  spec.homepage      = "https://github.com/preston/hsp"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "thor", '>= 0.19.4'
  spec.add_development_dependency "httparty", '>= 0.14.0'
  spec.add_development_dependency "action_cable_client", '>= 1.3.4'
  spec.add_development_dependency "docker-api", '>= 1.33.2'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
