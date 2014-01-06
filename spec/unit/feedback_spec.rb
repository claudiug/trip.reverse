require 'spec_helper'
require './models/feedback'


describe Feedback do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:email).of_type(String) }
  it { should have_field(:is_new).of_type(Boolean)}
  it {should have_field(:is_new).of_type(Boolean).with_default_value_of(true)}
end