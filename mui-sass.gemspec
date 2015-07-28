# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mui/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'mui-sass'
  spec.version       = Mui::Sass::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = 'MUI framework, powered by Sass and ready to use in Ruby projects'
  spec.description   = 'MUI framework, powered by Sass and ready to use in Ruby projects'
  spec.homepage      = 'https://github.com/rubysamurai/mui-sass'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_runtime_dependency 'sass', '~> 3.3'

  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'compass', '~> 1.0'
  spec.add_development_dependency 'rails', '~> 4.0'
end
