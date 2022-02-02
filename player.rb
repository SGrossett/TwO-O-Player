class Player
  attr_reader :name, :lives

  def initialize(name, lives)
    @name = name
    @lives = 3
  end

  def life_lost
    @lives -= 1
  end

  def score
    "#{@lives}/3"
  end
end