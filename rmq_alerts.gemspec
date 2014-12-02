# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
VERSION = "0.1"

Gem::Specification.new do |spec|
  spec.name          = "rmq_alerts"
  spec.version       = VERSION
  spec.authors       = ["Abdullah Esmail"]
  spec.email         = ["abdullah.esmail@gmail.com"]
  spec.description   = %q{rmq_alerts is an RMQ plugin that makes it very easy to create alert messages in iOS}
  spec.summary       = %q{rmq_alerts is an RMQ plugin that makes it very easy to create alert messages in iOS}
  spec.homepage      = "https://github.com/aesmail/rmq_alerts"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'ruby_motion_query', '>= 0.9.0'
  spec.add_development_dependency "rake"
end
