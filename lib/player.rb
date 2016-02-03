class Player

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 60
  end

  def reduce_points
    @points -= 10
  end

  def attack(player)
    player.reduce_points
  end

end
