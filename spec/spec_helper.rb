$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)
require 'simplecov'
SimpleCov.start
require 'rspec'
require 'rack/test'
require 'webmock/rspec'
require 'auth0'

RSpec.configure do |config|
  config.include	WebMock::API
  config.include	Rack::Test::Methods
  config.color = true
  config.formatter = 'documentation'
end
