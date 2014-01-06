require 'spec_helper'
require './models/category'

describe  Category do
  it { should have_field(:name).of_type(String) }   
  it { should have_field(:active).of_type(Boolean) }
  
end