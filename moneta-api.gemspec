# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moneta/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'moneta-api'
  spec.version       = Moneta::Api::VERSION
  spec.authors       = ['ssnikolay']
  spec.email         = ['ssnikolay@gmail.com']
  spec.summary       = 'МОНЕТА.РУ (MONETA.MerchantAPI.v2)'
  spec.description   = 'МОНЕТА.РУ (MONETA.MerchantAPI.v2).'
  spec.homepage      = 'https://www.moneta.ru/doc/MONETA.MerchantAPI.v2.ru.pdf'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'savon', '~> 2.10.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'fakeweb'
  spec.add_development_dependency 'yard'
end
