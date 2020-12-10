require '../index'

describe 'index.rb' do
    it 'does stuff' do
        expect(hello()).to eq("hello world")
    end
    
    xit "does something else" do
    
    end
end

describe 'validate_input' do
    it 'checks if input is valid' do
        expect(validate_input("1")).to eq(true)
        expect(validate_input("2")).to eq(true)
        expect(validate_input("3")).to eq(true)
        expect(validate_input("4")).to eq(true)
        expect(validate_input("1.23232")).to eq(true)
        expect(validate_input("232edwef")).to eq(true)

        expect(validate_input("0")).to eq(false)
        expect(validate_input("hello")).to eq(false)
        expect(validate_input("0")).to eq(false)
        expect(validate_input("0")).to eq(false)
    end
end