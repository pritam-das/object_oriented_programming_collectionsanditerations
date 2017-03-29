class BankAccount

  def initialize(balance, interest_rate)
      @balance = balance
      @interest_rate =  interest_rate
  end

  def deposit
      puts "Please input the amount you want to deposit"
      amount = gets.chomp.to_i
      @balance = amount + @balance
      puts "Thank you! Your new balance is #{ @balance } dollars"
  end

  def withdraw
      puts "Please input the amount you would like to withdraw"
      amount = gets.chomp.to_i
      @balance = @balance - amount
      puts "Thank you! Your new balance is #{ @balance } dollars"
  end

  def gain_interest
      amount = @balance
      amount = (amount * @interest_rate)/(100)
      @balance = amount + @balance
      puts "Your outstanding total after gaining interest of #{ @interest_rate } percent is #{ @balance } dollars"
  end

  attr_reader :balance, :interest_rate
  attr_accessor :balance, :interest_rate
  attr_writer :balance, :interest_rate

end
