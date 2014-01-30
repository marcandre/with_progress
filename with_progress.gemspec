# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_progress/version'

Gem::Specification.new do |spec|
  spec.name          = "with_progress"
  spec.version       = WithProgress::VERSION
  spec.authors       = ["Marc-Andre Lafortune"]
  spec.email         = ["github@marc-andre.ca"]
  spec.description   = %q{progressbar for enumerables}
  spec.summary       = %q{progressbar for enumerables}
  spec.homepage      = "http://github.com/marcandre/with_progress"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'ruby-progressbar', '~> 1.4'
  spec.add_dependency 'backports', '~> 3.5'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
