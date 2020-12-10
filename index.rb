 require_relative ("validators")
 require_relative ("atm_view")

system("clear")

def welcome_and_input(atm_view)
    atm_view.show_options

    input = gets.chomp.to_i
    input_valid = Validators.validate_input(input)
    if !input_valid
    #         #print error message for invalid input
    #         #re-print options
            puts "Invalid input, please enter a number from 1-4"
    end
    case input 
        when 1 
            #show balance
            show_balance()
        when 2
            #make a withdrawl
            make_withdrawl()
        when 3
            #make a deposit
            make_deposit()
        when 4
            #exit
            puts "Goodbye fucker"
            exit(0)
        end
    welcome_and_input(atm_view)
end

#show balance method
def show_balance
    balance = File.read("balance.txt")
    puts "balance: $#{balance}"
end

def get_balance
    File.read("balance.txt")
end

#withdrawl method
def make_withdrawl
    puts "How much would you like to withdraw?"
    #get the amount
    amount = gets.chomp
    #validate the input
    valid = Validators.validate_positive_int(amount)
    if !valid
        #print out error mesage
        puts "invalid amount, please enter a positive number"
        make_withdrawl()
    end
    balance = get_balance()
    valid = Validators.validate_amount_against_balance(amount, balance)
    if !valid
        #make the withdrawl
        #get the bank balance
        #
        puts "Your withdrawl is greater than your balance"
        make_withdrawl()
    end
    updated_amount = (balance.to_i - amount.to_i).to_s
    File.write("balance.txt", updated_amount)
    puts "Your new balance is $#{updated_amount}"
    # withdraw = gets.chomp.to_i
    # bank_balance = 0
    # File.open("balance.txt").each do |file|
    #     bank_balance = file.to_i
    # end
    # amount_after_withdrawl = bank_balance - withdraw
    # File.open("balance.txt", "w") do |f|
    #     f.write amount_after_withdrawl
    # puts "Your bank balance is #{amount_after_withdrawl}."
end

#deposit method
def make_deposit
    puts "How much would you like to deposit?"
    amount = gets.chomp

    valid = Validators.validate_positive_int(amount)
    if !valid
        puts "invalid amount, please enter a positive number"
        make_deposit()
    end
    balance = get_balance().to_i
    new_amount = (balance + amount.to_i).to_s
    File.write("balance.txt", new_amount)
    puts "Your bank balance is $#{new_amount}."
    # deposit = gets.chomp.to_i
    # bank_balance = 0
    # File.open("balance.txt").each do |file|
    #     bank_balance = file.to_i
    # end
    # amount_after_deposit = bank_balance + deposit
    # File.open("balance.txt", "w") do |f|
    #     f.write amount_after_deposit
    # puts "Your bank balance is #{amount_after_deposit}."
    # end
end

atm_view = AtmView.new
welcome_and_input(atm_view)