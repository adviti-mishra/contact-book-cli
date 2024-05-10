require 'mongo'
class ContactManager

    @@client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'ContactsApp')
    @@database = @@client.database
    @@collection = @@database[:contacts]

    def create_contact_in_db(name, email_address, phone_number, street_address)
    end 

    def list_all_contacts
    end

    def query_by_name(name)
    end

    def query_by_email(email_address)
    end

    def query_by_number(phone_number)
    end

end 