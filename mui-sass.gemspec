# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mui/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'mui-sass'
  spec.version       = Mui::Sass::VERSION
  spec.authors       = ['Dmitriy Tarasov']
  spec.email         = ['info@rubysamurai.com']

  spec.summary       = "MUI is a lightweight framework that follows Google's Material Design guidelines"
  spec.description   = "MUI is a lightweight framework that follows Google's Material Design guidelines"
  spec.homepage      = 'https://github.com/rubysamurai/mui-sass'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'autoprefixer-rails', '>= 6.5'
  spec.add_runtime_dependency 'sass', '>= 3.3'

  spec.add_development_dependency 'json', '>= 2.0'
  spec.add_development_dependency 'railties', '>= 5.0'
  spec.add_development_dependency 'rspec', '>= 3.5'
  spec.add_development_dependency 'sprockets-rails', '>= 3.0'
end
