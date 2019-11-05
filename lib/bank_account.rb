class BankAccount
  attr_reader :name
  attr_accessor :status, :balance
  
  def initialize(name)
    @name, @status, @balance = name, 'open', 1000
  end
  
  def deposit(money)
    balance += money
  end
end
