class Trip 
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :cities, type: Array
  field :images, type: Array
  field :active, type: Boolean, default: false
  
  validates :name, presence: true, uniqueness:true 
  
  index({name:1}, {unique:true})
end