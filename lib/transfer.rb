class Transfer
  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, "pending"
  end
  
  def valid?
    
  end
end