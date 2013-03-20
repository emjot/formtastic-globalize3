# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'formtastic/globalize3/version'

Gem::Specification.new do |spec|
  spec.name          = "formtastic-globalize3"
  spec.version       = Formtastic::Globalize3::VERSION
  spec.authors       = ["Maximilian Herold"]
  spec.email         = ["herold@emjot.de"]
  spec.description   = %q{patch for formtastic to make its magical column type determination work with globalize3 translated models}
  spec.summary       = %q{formtastic features for globalize3 translated models}
  spec.homepage      = "https://github.com/emjot/formtastic-globalize3"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "formtastic", "~> 2.0"
  spec.add_runtime_dependency "globalize3", "~> 0.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "appraisal", "~> 0.5.1"
  spec.add_development_dependency "rspec-rails", "~> 2.8.0"
  spec.add_development_dependency "rake"
end
