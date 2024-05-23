require 'mongoid'

class Contact 
  include Mongoid::Document 
  field :name, type: String
  field :email_address, type: String
  field :phone_number, type: String
  field :street_address, type: String 
end