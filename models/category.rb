class Category 
  include Mongoid::Document
  
  field :name, type: String
  field :active, type: Boolean
  field :slug, type: String
  field :short_description, type: String

  validates :name, presence: true, uniqueness: true 
  validates :slug, presence: true, uniqueness: true
  validates :short_description, presence: true
  validates_length_of :short_description, minimum:8, maximum: 150
  
  index({name:1}, {unique:true}) 

end