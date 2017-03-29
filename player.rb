class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives +=1
  end

  def collect_treasure
    @gold_coins +=1
      if @gold_coins%10 == 0
        return level_up
      else
        return @gold_coins
      end
  end

  def do_battle
    damage = 1
    @health_points -= 1
    if @health_points<1
      @lives -=1
      @health_points = 10
      if @lives<0
        return restart
      else
        puts "Health points:#{@health_points}\n You have #{@lives} lives remaining"
      end
    else
      puts "Health points:#{@health_points}\n You have #{@lives} lives remaining"
    end
    return
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    puts "Your game has been restarted"
  end


    attr_reader :gold_coins, :health_points, :lives
end
