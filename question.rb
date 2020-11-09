class Question 
  attr_accessor :ask_question

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def ask_question 
    puts "What does #{@num1} plus #{@num2} equal?"
    puts "> "
    
    player_answer = gets.chomp.to_i

    if player_answer == @num1 + @num2
      puts "YES! You are correct."
      return true 
    else
      puts "Seriously? No!"
      return false 
    end
  end 

end  
