# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indonesia/version'

Gem::Specification.new do |spec|
  spec.name          = 'indonesia'
  spec.version       = Indonesia::VERSION
  spec.authors       = ['Dimas J. Taniawan']
  spec.email         = ['dimazniawan@gmail.com']

  spec.summary       = 'Indonesia addresses'
  spec.description   = 'Get Indonesia address provinces, regencies, districts'
  spec.homepage      = 'https://github.com/dimasjt/indonesia'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.required_ruby_version = '>= 2.0.0'

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
