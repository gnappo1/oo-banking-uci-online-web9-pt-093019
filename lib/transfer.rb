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
    if valid? && sender.
  end
  
  def reverse_transfer
    
  end
end