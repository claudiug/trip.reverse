require 'spec_helper'
require './models/hotel'
describe Hotel do
  it { should have_field(:name).of_type(String) }
  it { should have_field(:city).of_type(String) }
  it { should have_field(:address).of_type(Array) }
  it { should have_field(:phone_number).of_type(Array) }
  it { should belong_to(:category).of_type(Category) }
  it { should have_field(:rating).of_type(Array)}
  it { should validate_inclusion_of(:rating).to_allow(1..10) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:rating) }
  it { should have_index_for(name: 1) }
end