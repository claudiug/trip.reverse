class Feedback
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :is_new, type: Boolean, default: true
  field :email, type: String
  field :content, type: String
  
  validates_inclusion_of :is_new, in:[true, false]

 
end