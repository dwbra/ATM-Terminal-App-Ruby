## This method won't be used.
## Only exists to check that rspect is working correctly 

def welcome_and_input
    system("clear")
    puts "Welcome to bank ATM"
    puts "Please select from the following options:"
    puts "1. Display balance"
    puts "2. Make a withdrawl"
    puts "3. Make a deposit"
    puts "4. Exit"
    input = gets.chomp.to_i
    input_valid = Validators.validate_input(input)
    if !input_valid
             #print error message for invalid input
            #re-print options
            puts "Invalid input, please enter a number from 1-4"
            puts "Press any key to continue"
            gets 
            welcome_and_input()
        welcome_and_input()
    case input 
        when 1 
            #show balance
        when 2
            #make a withdrawl
        when 3
            #make a deposit
        when 4
            #exit
            puts "Goodbye fucker"
            system("exit")
        else
    end
    end

welcome_and_input()