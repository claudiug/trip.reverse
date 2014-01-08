class Hotel
  include Mongoid::Document

  field :name, type: String
  field :city, type: String
  field :address, type: Array
  field :phone_number, type: Array
  field :rating, type: Array

  validates_inclusion_of :rating, in:(1..10)
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :rating, presence: true

  belongs_to :category

  index({name:1}, {unique:true}) 

end