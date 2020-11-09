class Player
  attr_accessor :name, :lives
  
  def initialize(name, lives)
    @name = name 
    @lives = lives
  end 

  def lives_count 
    puts "#{lives} /3 "
  end 

  def lose_life 
    @lives -= 1 
  end 

end 

#example 
jess = Player.new("Jess", 3)
jess.lose_life
p jess