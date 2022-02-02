class Game
  RIGHT_RESPONSES = ["YES! You are correct.", "Nice job!", "Perfecto!", "Ding ding ding! Right answer!", "You're on a roll!"]
  WRONG_RESPONSES = ["Seriously? No!", "You can do better than that.", "Sorry, wrong answer.", "Ding! Wrong answer!"]

  def responses(ans)
    if (ans == "right")
      @right = RIGHT_RESPONSES[rand(RIGHT_RESPONSES.size)]
    else
      @wrong = WRONG_RESPONSES[rand(WRONG_RESPONSES.size)]
    end
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def current_player
    @current_player
  end

  def players_score
    puts "#{@player1.name}: #{@player1.score} vs #{@player2.name}: #{@player2.score}"
  end

  def game_over
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def game_play
    puts "----- NEW GAME -----"

    
    loop do
      question = Question.new
      puts "#{@current_player.name}: #{question.ask_question}"
      player_ans = $stdin.gets.chomp

      if (player_ans == "quit")
        game_over
      end

      if (question.is_correct(player_ans))
        puts "#{@current_player.name}: #{responses("right")}"
      else
        puts "#{@current_player.name}: #{responses("wrong")}"
        @current_player.life_lost
        if @current_player.lives == 0
          champion = (@current_player == @player1 ? @player2 : @player1)
          puts "#{champion} wins with a score of #{champion.score}"
          game_over
        end
      end

      @current_player = (@current_player == @player1 ? @player2 : @player1)
      
      players_score
      puts "----- NEW TURN -----"
    end
  end
end

