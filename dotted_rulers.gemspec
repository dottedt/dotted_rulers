# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotted_rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "dotted_rulers"
  spec.version       = DottedRulers::VERSION
  spec.authors       = ["Scott"]
  spec.email         = ["scott@dottedt.com"]
  spec.description   = %q{An excersize in creating a Rack-based Web Framework}
  spec.summary       = %q{Deep-ish dive into building a Ruby Web Framework from scratch}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "test-unit"

end
