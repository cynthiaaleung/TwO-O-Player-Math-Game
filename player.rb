class Player 
  attr_accessor :lives, :name
  
  def initialize(name, lives: 3)
    @name = name
    @lives = lives
    
  end

  def lose_lives
    @lives -= 1
  end

  def is_dead?
    lives == 0
  end

end