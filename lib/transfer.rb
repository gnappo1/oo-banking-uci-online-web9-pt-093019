class Transfer
  attr_reader :amount, :sender, :receiver
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if status == 'executed'
      sender.balance += amount
      receiver.balance -= amount
    end
  end
end