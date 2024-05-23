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

  # EFFECTS: Lists all contacts
  def list_all_contacts
    # Access all documents in the contacts collection
    contacts = Contact.all
    contacts.each do |document|
      # print the contact
      puts JSON.pretty_generate(document.as_document)
    end
  end

  # REQUIRES: name_in is well-formatted
  # EFFECTS: Prints all contacts with name == name_in
  def query_by_name(name_in)
    # Access all documents in the contacts collection with name == name_in
    contacts = Contact.where name: name_in
    contacts.each do |document|
      # print the contact
      puts JSON.pretty_generate(document.as_document)
    end
  end

  # REQUIRES: email_address_in is well-formatted
  # EFFECTS: Prints all contacts with email_address == email_address_in
  def query_by_email(email_address_in)
    # Access all documents in the contacts collection with email_address == email_address_in
    contacts = Contact.where email_address: email_address_in
    contacts.each do |document|
      # print the contact
      puts JSON.pretty_generate(document.as_document)
    end
  end

  # REQUIRES: phone_number_in is well-formatted
  # EFFECTS: Prints all contacts with phone_number == phone_number_in
  def query_by_number(phone_number_in)
    # Access all documents in the contacts collection with phone_number == phone_number_in
    contacts = Contact.where phone_number: phone_number_in
    contacts.each do |document|
      # print the contact
      puts JSON.pretty_generate(document.as_document) 
    end
  end
end