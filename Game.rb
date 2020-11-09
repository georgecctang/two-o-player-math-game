require './Question'

class Game

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
  end

  def start
    
    round = 1
    question = Question.new

    while @player1.lives > 0 && @player2.lives > 0
      puts "------ Round ##{round} ------"

      current_player = round % 2 == 1 ? @player1 : @player2

      name = current_player.name  
      numbers = question.generate_numbers

      # Ask player the question
      puts "#{name}: What does #{numbers[0]} plus #{numbers[1]} equal?"
      answer_input = gets.chomp

      # Check answer; reduce life is incorrect
      if question.check_answer(answer_input)
        puts "#{name}: YES! Your are correct."
      else
        puts "#{name}: Seriously? No!"
        current_player.lose_life
      end
      
      # print overall score
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      puts
      
      round += 1
    end

    # check winner
    winning_player = @player1.lives > @player2.lives ? @player1 : @player2

    puts "#{winning_player.name} wins with a score of #{winning_player.lives}/3"
    puts "------ GAME OVER ------"

  end
end