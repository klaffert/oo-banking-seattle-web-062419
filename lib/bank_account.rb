# BankAccount class takes one instance of the class and
# can transfer money to another instance through a Transfer class

require 'pry'
class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def valid?
        balance > 0 && status == "open"
    end

    def close_account
        @status = "closed"
    end

end
