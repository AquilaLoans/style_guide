# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'style_guide/version'

Gem::Specification.new do |spec|
  spec.name          = 'aquila-style_guide'
  spec.version       = StyleGuide::VERSION
  spec.authors       = ['Zane Wolfgang Pickett']
  spec.email         = ['sirwolfgang@users.noreply.github.com']

  spec.summary       = 'Documentation and Rubocop configuration for the ruby style guide'
  spec.homepage      = 'https://github.com/AquilaLoans/style_guide-ruby'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r(^exe/)) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
