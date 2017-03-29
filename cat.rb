class Cat

  def initialize(name, preferred_food, meal_time)
      @name = name
      @preferred_food =  preferred_food
      @meal_time = meal_time
  end

  def eats_at
      puts "At what time does the cat eat? Enter the number"
      time = gets.chomp.to_i
      puts "Press 1 if AM, Press 2 for PM"
      response = gets.chomp
      if response == 1
        ampm = 'AM'
      elsif response == 2
        ampm == 'PM'
      else
        ampm == 'oclock'
      end
      puts " #{@name} eats at #{time} #{ampm}"
  end

 def meow
    puts "Hello! My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end

end
