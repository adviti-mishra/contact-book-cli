class Contact
    def initialize(name, email_address, phone_number, street_address)
        @contact_name = name
        @contact_email_address = email 
        @contact_phone_number = phone_number
        @contact_street_address = street_address 
        create_contact_in_db
    end 

    def create_contact_in_db
    end 

    def list_all_contacts
    end

    def query_by_name
    end

    def query_by_email
    end

    def query_by_number
    end

end 