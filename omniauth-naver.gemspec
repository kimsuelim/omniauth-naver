# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-naver/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-naver"
  spec.version       = Omniauth::Naver::VERSION
  spec.authors       = ["Surim Kim"]
  spec.email         = ["kimsuelim@gmail.com"]

  spec.summary       = %q{OmniAuth strategy for Naver}
  spec.description   = %q{OmniAuth strategy for Naver(https://developers.naver.com)}
  spec.homepage      = "http://github.com/kimsuelim/omniauth-naver"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
