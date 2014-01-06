class Feedback
  include Mongoid::Document

  field :name, type: String
  field :email, type: String
  field :new, type: Boolean
  field :email type: String
  field :content type: String
 
end