# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coptic_date/version'

Gem::Specification.new do |spec|
  spec.name          = "coptic_date"
  spec.version       = CopticDate::VERSION
  spec.authors       = ["Kamal Micheal"]
  spec.email         = ["kimomicho@hotmail.com"]

  spec.summary       = "This gem is used to convert Gregorian calendar to Coptic calendar."
  spec.homepage      = "https://github.com/kimomicho/coptic_date_gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
