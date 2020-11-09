class Turns

  def initalize(player)
    @player = player 
    puts "Enter name for Player 1:"
    puts ">"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name, 3)

    puts "Enter name for Player 2:"
    puts ">"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name, 3)
  end

  def whose_turn 
    puts "Now it's #{player.name}'s turn"
    new_question = Question.new(player) 
  end

  def current_score
    puts "#{@player1.name}: #{@player1.lives_count} and #{@player2.name}: #{@player2.lives_count}"
  end 

  def set_turn 
    while @player1.lives > 0 || @player2.lives > 0
      initial_turn = whose_turn(@player1)
      current_score
      if @player1.lives == 0 
        puts "#{@player2.name} Won!"
      elsif @player2.lives == 0
        puts "#{@player1.name} Won!"
      end 
    end 
  end 
end  

