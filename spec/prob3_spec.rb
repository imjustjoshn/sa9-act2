require_relative '../prob3.rb'

RSpec.describe StringWrapper do
    describe "#reverse" do
        it "reverses the string" do
            string = 'string'
            string_reverse = StringWrapper.new(string)
            expect(string_reverse.reverse).to eq(string.reverse)
        end
    end
    
    describe "#upcase" do
        it "converts the string to uppercase" do
            string = 'string'
            string_upper = StringWrapper.new(string)
            expect(string_upper.upcase).to eq(string.upcase)
        end
    end
    
    describe "#downcase" do
        it "converts the string to lowercase" do
            string = "STRING"
            string_lower = StringWrapper.new(string)
            expect(string_lower.downcase).to eq(string.downcase)
        end
    end
end
