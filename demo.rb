require 'rubygems'
require 'bundler/setup'

class Demo < Sinatra::Base
  
  get '/status' do
    [200, {},'OK']
  end 
  
end