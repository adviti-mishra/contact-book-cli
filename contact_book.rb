require_relative 'ContactManager'

cm = ContactManager .new 

loop do
    # print the menu
    puts "-------------MENU-------------------"
    puts "Choose one of these options"
    puts "1. Create a contact "
    puts "2. List all contacts "
    puts "3. Search a contact by name "
    puts "4. Search a contact by email address "
    puts "5. Search a contact by phone number "
    puts "6. Exit application "

    # get the user's choice
    print "Enter your choice now "
    choice = gets.chomp.to_i

    case choice 
    # case 1: Create a contact
    when 1
        # get the information from the user 
        puts "For the contact you want to create, please "
        puts "1. enter the name"
        name = gets.chomp
        puts "2. enter the email address "
        email_address = gets.chomp 
        puts "3. enter the phone number "
        phone_number = gets.chomp 
        puts "4. enter the street address "
        street_address = gets.chomp
        # call corresponding function in the contactmanager
        cm.create_contact_in_db(name, email_address, phone_number)
    # case 2: List all contacts
    when 2
        # call corresponding function in the contactmanager
        cm.list_all_contacts
    # case 3: Search a contact by name
    when 3
        puts "Enter the name you want to look for "
        name = gets.chomp 
        # call corresponding function in the contactmanager
        cm.query_by_name(name)
    # case 4: Search a contact by email
    when 4 
        puts "Enter the email address you want to look for"
        email_address = gets.chomp
         # call corresponding function in the contactmanager
        cm.query_by_email(email_address)
    # case 5: Search a contact by phone number
    when 5
        puts "Enter the phone number you want to look for "
        phone_number = gets.chomp
         # call corresponding function in the contactmanager
        cm.query_by_number(phone_number)
    # case 6: exit the menu
    when 6 
        break
    # invalid integer choice
    else
        puts "Please enter a valid choice"
    end 
end