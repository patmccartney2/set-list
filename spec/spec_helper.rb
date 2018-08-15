ENV['RACK_ENV'] = 'test'

require 'bundler'

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)


DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.before(:all) do
    DatabaseCleaner.clean
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
