class Question 
  attr_accessor :ask_question

  def initialize(player)
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @player = player
  end

  def ask_question 
    puts "What does #{@num1} plus #{@num2} equal?"
    puts "> "
    
    player_answer = gets.chomp.to_i
    if player_answer == answer
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @player.lose_life
    end
  end 

end  
