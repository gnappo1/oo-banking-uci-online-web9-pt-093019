class Transfer
  attr_reader :amount, :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, "pending"
  end
  
  def valid?
    
  end
end