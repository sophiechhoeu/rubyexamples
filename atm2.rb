#create an atm

class ATM
  # how do we describe an ATM
  def initialize(location, fees, balance)
    @location = location
    @fees = fees
    @balance = balance
    @out_of_order = broken #leaving it not a number lets it change each balance
  end

#what it can do
  def dispense(withdrawal)

   @balance = @balance - withdrawal #method in the definition
   puts @balance
  end

  def deposit(amount)
    @balance = @balance + amount
    puts @balance
  end

  end

#   # class Account
#   #   def initialize(balance, pin)
#   #     @balance = balance
#   #     @pin = pin
#   #     @log = []
#   #   end
#   #
#   #   def correct_pin(pin)
#   #     if @pin == pin
#   #       true
#   #     else
#   #       false
#   #   end
#   #
#   #   def enough_money(amount)
#   #     if balance >= amount
#   #       true
#   #     else
#   #       false
#   #     end
# end

#### call outside the method

broadway_atm = ATM.new("broadway", "100%",400)
haymarket_atm = ATM.new("haymarket", "100%", 500)

#broadway_atm.dispense(40)
#haymarket_atm.dispense(50)
#broadway_atm.deposit(50)
haymarket_atm.deposit(80)
haymarket_atm.deposit(100)
broadway_atm.dispense(50)
