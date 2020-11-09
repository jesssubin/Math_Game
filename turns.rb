class Turns

  def initialize
    puts "Enter name for Player 1:"
    puts ">"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name, 3)

    puts "Enter name for Player 2:"
    puts ">"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name, 3)

    @current_player = 2
  end

  def change_player
    if @current_player == 1 
      @current_player = 2 
      return @player2
    else 
      @current_player = 1 
      return @player1 
    end 
  end 

  def set_turn 
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      current_player = change_player
      answer = question.ask_question
      if !answer 
        current_player.lose_life
      end 
        puts "#{@player1.name}: #{@player1.lives}/3 and #{@player2.name}: #{@player2.lives}/3"
      if @player1.lives != 0 && @player2.lives != 0
        puts "-------NEW GAME-------"
      elsif @player1.lives != 0 || @player2.lives != 0
        if @player1.lives == 0 
          puts "#{@player2.name} Won!"
        elsif @player2.lives == 0
          puts "#{@player1.name} Won!"
        end
        puts "-------GAME OVER-------"
        puts "GOOD BYE!"
      end 
    end 
  end       
end  

