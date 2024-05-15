require 'mongo'

class ContactManager
  
  # EFFECTS: Creates a connection and sets instance variables for the database of contacts 
  def initialize
    @client =  Mongo::Client.new([ 'localhost:27017' ], :database => 'ContactsApp')
    @database = @client.database
    @collection = @database[:contacts]
  end
  
  # REQUIRES: name, email_address, phone_number, street_address are well-formatted
  # MODIFIES: the contacts collection
  # EFFECTS: Creates a new contact
  def create_contact_in_db(name_in ,email_address_in, phone_number_in, street_address_in)
    # Create a document representing the new contact
    doc = {
      name: name_in, 
      email_address: email_address_in, 
      phone_number: phone_number_in, 
      street_address: street_address_in
    }
    # Insert this one contact into the contacts collection
    @collection.insert_one(doc)
  end

  # EFFECTS: Lists all contacts
  def list_all_contacts
    # Access all documents in the contacts collection
    cursor =  @collection.find
    cursor.each do |document|
      # print the contact
      puts JSON.pretty_generate(document)
    end
  end

  # REQUIRES: name_in is well-formatted
  # EFFECTS: Prints all contacts with name == name_in
  def query_by_name(name_in)
    # Access all documents in the contacts collection with name == name_in
    cursor = @collection.find name: name_in
    cursor.each do |document|
      # print the contact
      puts JSON.pretty_generate(document)
    end
  end

  # REQUIRES: email_address_in is well-formatted
  # EFFECTS: Prints all contacts with email_address == email_address_in
  def query_by_email(email_address_in)
    # Access all documents in the contacts collection with email_address == email_address_in
    cursor = @collection.find email_address: email_address_in
    cursor.each do |document|
      # print the contact
      puts JSON.pretty_generate(document)
    end
  end

  # REQUIRES: phone_number_in is well-formatted
  # EFFECTS: Prints all contacts with phone_number == phone_number_in
  def query_by_number(phone_number_in)
    # Access all documents in the contacts collection with phone_number == phone_number_in
    cursor = @collection.find phone_number: phone_number_in
    cursor.each do |document|
      puts JSON.pretty_generate(document) 
    end
  end

end

