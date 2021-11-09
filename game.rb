class Game 
  attr_accessor :player_1, :player_2, :current_player, :game_over

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @game_over = false
  end

  def switch_player
    if current_player == player_1
      @current_player = player_2
    else
      @current_player = player_1
    end
  end
  
  def is_game_over
    if current_player.is_dead?
      @game_over = true
    end
    return game_over
  end

  def display_stats
    puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"
  end

  def display_winner
    switch_player
    puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
  end

end