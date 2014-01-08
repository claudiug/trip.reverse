require 'spec_helper'

describe 'Status' do
  include DemoApp

  it 'should return 200 OK' do
    get '/status'
    last_response.status.should == 200
    last_response.body.should == 'OK'
  end

  it  'should return 404 ' do 
    get '/status/1'
    last_response.status.should == 404
  end
end