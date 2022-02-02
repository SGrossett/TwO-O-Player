require "./player"
require "./questions"
require "./game"

puts "Player 1, enter your name:"
# name1 = 
player1 = Player.new($stdin.gets.chomp, 3)

puts "Player 2, enter your name:"
# name2 = $stdin.gets.chomp
player2 = Player.new($stdin.gets.chomp, 3)

game = Game.new(player1, player2)

game.game_play