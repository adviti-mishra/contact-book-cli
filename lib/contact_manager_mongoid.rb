require 'mongoid'
require_relative 'contact'

class ContactManager

  # EFFECTS: loads configuration manually
  def initialize
    # loading configuration manually because this app is not using Ruby on Rails
    Mongoid.load!('config/mongoid.yml', :development)
  end

  # REQUIRES: name_in, email_address_in, phone_number_in, street_address_in are well-formatted
  # MODIFIES: the contacts collection
  # EFFECTS: Creates a new contact
  def create_contact_in_db(name_in ,email_address_in, phone_number_in, street_address_in)
    Contact.create(
      name: name_in, 
      email_address: email_address_in,
      phone_number: phone_number_in, 
      street_address: street_address_in
    )
  end
