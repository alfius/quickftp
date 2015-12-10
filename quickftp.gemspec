# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quickftp/version'

Gem::Specification.new do |gem|
  gem.name          = 'quickftp'
  gem.version       = Quickftp::VERSION
  gem.authors       = ['Alf Cora']
  gem.email         = ['alfius@protonmail.com']
  gem.description   = %q{Quickftp is an in-place ftp server}
  gem.summary       = %q{Quickftp is a command line application that allows to quickly start an ftp server without worrying about configuration. This makes it a handy tool to transfer files easily. It's not intended to be used in public servers.}
  gem.homepage      = 'https://github.com/alfonsocora/quickftp'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'ftpd', '~> 1.1.1'
  gem.add_development_dependency 'minitest', '~> 5.8', '>= 5.8.3'
  gem.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'
end
