require 'mongoid-rspec'
require 'rack/test'
require_relative '../demo'

module DemoApp
  include Rack::Test::Methods
  
  def app
   Demo
  end
end
	
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true  
  config.include Mongoid::Matchers
   
  config.order = 'random'
end


