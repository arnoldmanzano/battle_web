class Player
  DEFAULT_HP = 60

  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = DEFAULT_HP
  end

  def reduce_points
    @points -= Kernel.rand(10)
  end

end
