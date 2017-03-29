class Paperboy
  def initialize(name)
    @name = name
    @experience = 50
    @earnings = 0
    @number_of_papers_delivered = 0
  end

  def quota
    nextquota = @experience
    nextquota = nextquota/2
    @experience = nextquota + @experience
    puts "Your quota for your next delivery is #{@experience} "
  end

def deliver
  puts "Please enter your starting house number"
  start_address = gets.chomp.to_i
  puts "Please enter your ending house number"
  end_address = gets.chomp.to_i
  houses_covered = end_address - start_address
  #number_of_papers_delivered += houses_covered   #to keep track of papers delivered
  if houses_covered < @experience
    @earnings = (houses_covered * 0.25) - 2
  elsif houses_covered == @experience
    @earnings = houses_covered * 0.25
  else
    extra_houses_covered = houses_covered - @experience
    bonus_earned = extra_houses_covered * 0.5
    normal_earning = @experience * 0.25
    @earnings = bonus_earned + normal_earning
  end

  @number_of_papers_delivered +=houses_covered
  return report

end

def report
  puts "Hi I'm #{@name}, I've delivered #{@number_of_papers_delivered} papers and I've earned $#{@earnings}"
  return quota
end

end
