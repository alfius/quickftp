require 'bundler/setup'
require 'rspec'
require 'purvey'

Dir[File.expand_path("support/*", File.dirname(__FILE__))].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
end
