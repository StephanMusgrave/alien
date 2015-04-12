class Alien
  attr_reader :status, :position

  def initialize(position)
    @status = 'alive'
    @position = position
  end

  def die!
    @status = 'dead'
  end

  def move(direction, distance)
    if direction == 'right'
      @position += distance
    elsif direction == 'left'
      @position -= distance
    end
    @position     
  end
end
