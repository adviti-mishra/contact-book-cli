require_relative ContactManager

cm = ContactManager .new 

loop do
    puts "-------------MENU-------------------"
    puts "Choose one of these options"
    puts "1. Create a contact "
    puts "2. List all contacts "
    puts "3. Search a contact by name "
    puts "4. Search a contact by email address "
    puts "5. Search a contact by phone number "
    puts "6. Exit application "

    print "Enter your choice now "
    choice = gets.chomp.to_i

    case choice 
    when 1:
        puts "Enter the name"
        name = gets.chomp
        puts "Enter the email address "
        email_address = gets.chomp 
        puts "Enter the phone number "
        phone_number = gets.chomp 
        puts "Enter the street address "
        street_address = gets.chomp 
        cm.create_contact_in_db(name, email_address, phone_number)
    when 2: 
        cm.list_all_contacts
    when 3: 
        puts "Enter the name "
        name = gets.chomp 
        cm.query_by_name(name)
    when 4: 
        puts "Enter the email address "
        email_address = gets.chomp
        cm.query_by_email(email_address)
    when 5: 
        puts "Enter the phone number "
        phone_number = gets.chomp
        cm.query_by_number(phone_number)
    when 6: 
        break 
    else: 
        puts "Please enter a valid choice"
    end 
end