require 'spec_helper'
require './models/feedback'


describe Feedback do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:email).of_type(String) }
  it { should have_field(:is_new).of_type(Boolean)}
  it {should have_field(:is_new).of_type(Boolean).with_default_value_of(true)}
    it { should validate_inclusion_of(:is_new).to_allow([true, false])}

end