require 'mongoid'
class Trip 
  include Mongoid::Document
  
  field :name, type: String
  field :description, type: String
  field :cities, type: Array
  field :images, type: Array
  field :active, type: Boolean, default: false
  field :rating, type: Integer

  validates :name, presence: true, uniqueness:true 
  validates_inclusion_of :active, in:[true, false]
  validates_inclusion_of :rating, in:(1..10)

  has_many :hotels, foreign_key: :hotel_id

  index({name:1}, {unique:true})

end