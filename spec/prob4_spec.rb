require_relative '../prob4.rb'

RSpec.describe BankAccount do
    describe "#deposit" do
        it "increases the balance by the deposit amount" do
            account = BankAccount.new(10)
            account.deposit(5)
            expect(account.balance).to eq(15)
        end
    end
   
    describe "#withdraw" do
        it "decreases the balance by the withdrawal amount if funds are available" do
            account = BankAccount.new(10)
            account.withdraw(5)
            expect(account.balance).to eq(5)
        end
        it "does not change the balance if insufficient funds" do
        account = BankAccount.new(10)
        account.withdraw(20)
        expect(account.balance).to eq(10)
        end
    end
    
    describe "#balance" do
        it "returns the current balance" do
            account = BankAccount.new(10)
            expect(account.balance).to eq(10)
        end
    end
end
