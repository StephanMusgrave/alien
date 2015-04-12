GRAVITY = 9.81

class Spaceship
  def radians(degrees)
    degrees * Math::PI / 180
  end

  def check_angle(angle)
    angle < 90 && angle > 0
  end

  def shoot(angle, velocity)
    radians = radians(angle)
    (2 * Math.cos(radians) * Math.sin(radians) * (velocity**2)) / GRAVITY
  end
end
