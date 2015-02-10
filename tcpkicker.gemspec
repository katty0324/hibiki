# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tcpkicker/version'

Gem::Specification.new do |spec|
  spec.name          = 'tcpkicker'
  spec.version       = Tcpkicker::VERSION
  spec.authors       = ['Naoyuki Kataoka']
  spec.email         = ['kataokanaoyuki@gmail.com']
  spec.summary       = 'Fake tcp server to launch real tcp servers.'
  spec.description   = 'Fake tcp server to launch real tcp servers.'
  spec.homepage      = 'https://github.com/katty0324/tcpkicker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
end
