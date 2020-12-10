require "../atm_view.rb"

describe "ATM View" do
    it "shows the apps options" do
        expected_output = "Welcome to bank ATM\n"
        "Please select from the following options:\n"\
        "1. Display balance\n"\
        "2. Make a withdrawl\n"\
        "3. Make a deposit\n"\
        "4. Exit\n"\
        app_view = AtmView.new
        expect{ app_view.show_options() }.to output(expected_output).to_stdout
    end
end

#\ at the end of the line will joint the strings together to be one string so that we can test the entire string.