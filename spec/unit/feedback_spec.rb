require 'spec_helper'
require './models/feedback'


describe Feedback do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:email).of_type(String) }
  it { should have_field(:new).of_type(Boolean)}
  it { should validate_inclusion_of(:new).to_allow([true, false])}
end