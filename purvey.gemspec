# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'purvey/version'

Gem::Specification.new do |gem|
  gem.name          = "purvey"
  gem.version       = Purvey::VERSION
  gem.authors       = ["Alfonso Cora"]
  gem.email         = ["acora6@gmail.com"]
  gem.description   = %q{Purvey is an in-place ftp server}
  gem.summary       = %q{Purvey is a command line application that allows to quickly start an ftp server without worrying about configuration. This makes it a handy tool to transfer files easily. It's not intended to be used in public servers.}
  gem.homepage      = "https://github.com/alfonsocora/purvey"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'ftpd', '~> 0.6.0'
  gem.add_development_dependency 'rspec', '~> 2.12.0'
end
