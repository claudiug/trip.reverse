class Category 
  include Mongoid::Document
  field :name, type: String
  field :active, type: Boolean
  validates :name, presence: true, uniqueness:true 
end