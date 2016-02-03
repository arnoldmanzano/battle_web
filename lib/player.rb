class Player

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 60
  end

  def reduce_points
    @points -= 10
  end
<<<<<<< HEAD
=======

  def attack(player)
    player.reduce_points
  end
>>>>>>> 89e8a432784f13123a5c5aa2f3e043d952752688

end
