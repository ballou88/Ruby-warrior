class Player
  def play_turn(warrior)
    @health = warrior.health if @health.nil? 
    case warrior.feel.empty?
    when false
      if warrior.feel.captive?
        warrior.rescue!
      else
        warrior.attack!
      end
    when true
      if @health > warrior.health
        warrior.walk!
      elsif
        warrior.health < 15
        puts warrior.health
        puts @health
        warrior.rest!
      else
        puts warrior.health
        puts @health
        warrior.walk!
      end
    end
    @health = warrior.health
  end
end
