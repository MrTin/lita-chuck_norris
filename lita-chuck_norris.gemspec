Gem::Specification.new do |spec|
  spec.name          = 'lita-chuck_norris'
  spec.version       = '0.0.1'
  spec.authors       = 'Martin Samami'
  spec.email         = ['martin@digitalkookie.io']
  spec.description   = %q{Lita handler delivering instafun using Chuck Norris jokes}
  spec.summary       = %q{Lita handler delivering instafun using Chuck Norris jokes}
  spec.homepage      = 'https://github.com/MrTin/lita-chuck_norris'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 3.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.1'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'

  spec.metadata = { 'lita_plugin_type' => 'handler' }
end
