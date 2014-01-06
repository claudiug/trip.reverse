require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'

class Demo < Sinatra::Base
  
  get '/status' do
    [200, {},'OK']
  end 
  
end