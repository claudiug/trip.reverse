require 'spec_helper'

describe  Category do
  it 'should have field of type name' do
    should have_field(:name).of_type(String)
  end
  
  it 'should have a field of type active' do
    should have_field(:active).of_type(Boolean)
  end
  
  it 'should have the name unique' do
    should validate_uniqueness_of(:name)
  end
end