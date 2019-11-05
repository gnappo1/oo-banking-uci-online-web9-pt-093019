class BankAccount
  attr_reader :name
  attr_accessor :status, :balance
  
  def initialize(name)
    @name, @status, @balance = name, 'open', 1000
  end
  
  def deposit(money)
    self.balance += money
  end
  
  def display_balance
    "Your balance is $#{balance}"
  end
end
