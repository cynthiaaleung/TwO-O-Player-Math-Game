require './game'
require './player'

first_player = Player.new("Player 1")
second_player = Player.new("Player 2")

new_game = Game.new(first_player, second_player)

while new_game.is_game_over == false
  num_1 = rand(1..20)
  num_2 = rand(1..20)

  puts "#{new_game.current_player.name}: What does #{num_1} plus #{num_2} equal?"

  if gets.chomp == (num_1 + num_2).to_s
    puts "#{new_game.current_player.name}: Yes! You are correct!"
  else
    puts "#{new_game.current_player.name}: No! You are incorrect!"
    new_game.current_player.lose_lives
  end

  new_game.display_stats

  if new_game.is_game_over
    new_game.display_winner
    puts "----- GAME OVER -----"
    puts "Good bye!"
  else
    new_game.switch_player
    puts "----- NEW TURN -----"
  end
end
