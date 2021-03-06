 require "pry"
 class Transfer
  attr_accessor :sender , :receiver , :amount, :status ,:count

  def initialize(sender , receiver , amount )
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction
    if valid? && @sender.balance > amount && @status = "pending"
      
      @sender.balance -= @amount
      @receiver.balance += @amount
      #binding.pry
      @status = "complete"
    else
       @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    end
  end

    
