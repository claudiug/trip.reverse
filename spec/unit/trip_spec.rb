
require './models/trip'


describe  Trip do
  it { should have_field(:name).of_type(String) }   
  it { should have_field(:active).of_type(Boolean) }
  it { should have_field(:description).of_type(String)}
  it { should have_field(:cities).of_type(Array)}
  it { should have_field(:images).of_type(Array)}
  

  it { should validate_uniqueness_of(:name)}
  it { should validate_inclusion_of(:active).to_allow([true, false]) }

end