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
    # input_valid = Validators.validate_input(input)
    # if !input_valid
    #          #print error message for invalid input
    #         #re-print options
    #         puts "Invalid input, please enter a number from 1-4"
    #         puts "Press any key to continue"
    #         gets 
    #         welcome_and_input()
    #     welcome_and_input()
    case input 
        when 1 
            #show balance
            bank_balance = 0
            File.open("balance.txt").each do |file|
                bank_balance = file.to_i
                puts "Your bank balance is #{bank_balance}."
            end
        when 2
            #make a withdrawl
            puts "How much would you like to withdraw?"
            withdraw = gets.chomp.to_i
            bank_balance = 0
            File.open("balance.txt").each do |file|
                bank_balance = file.to_i
            end
            amount_after_withdrawl = bank_balance - withdraw
            File.open("balance.txt", "w") do |f|
                f.write amount_after_withdrawl
            puts "Your bank balance is #{amount_after_withdrawl}."
            end
        when 3
            #make a deposit
            puts "How much would you like to deposit?"
            deposit = gets.chomp.to_i
            bank_balance = 0
            File.open("balance.txt").each do |file|
                bank_balance = file.to_i
            end
            amount_after_deposit = bank_balance + deposit
            File.open("balance.txt", "w") do |f|
                f.write amount_after_deposit
            puts "Your bank balance is #{amount_after_deposit}."
            end
        when 4
            #exit
            puts "Goodbye fucker"
            system("exit")
        else
            gets.chomp.to_i
            welcome_and_input()
        end
end
welcome_and_input()