require 'spec_helper'
require './models/category'

describe  Category do
  it { should have_field(:name).of_type(String) }   
  it { should have_field(:active).of_type(Boolean) }
  it { should have_field(:slug).of_type(String) }
  it { should have_field(:short_description).of_type(String) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_uniqueness_of(:slug) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:slug) }
  it { should validate_presence_of(:short_description)}
  it { should validate_length_of(:short_description).within(8..150) }
  it { should have_index_for(name: 1) }
  
end