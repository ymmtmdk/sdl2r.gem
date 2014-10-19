# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sdl2r/version'

Gem::Specification.new do |spec|
  spec.name          = "sdl2r"
  spec.version       = Sdl2r::VERSION
  spec.authors       = ["ymmtmdk"]
  spec.email         = ["ymmtmdk@gmail.com"]
  spec.extensions    = ["ext/sdl2r/extconf.rb"]
  spec.summary       = "sdl2r is a SDL2 binding for Ruby."
#  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "zlib"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
end
