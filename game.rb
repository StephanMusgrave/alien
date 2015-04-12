require_relative 'lib/alien.rb'
require_relative 'lib/spaceship'

spaceship = Spaceship.new
velocity = 50
start_position = 150 + rand(50)
move = 20.0

alien = Alien.new(start_position)

puts `clear`
puts "There is an alien #{alien.position} metres away", ' '

while alien.status == 'alive'
  print "\n Enter your firing angle in degrees: "
  angle = gets.chomp.to_f
  if spaceship.check_angle(angle)
    range = spaceship.shoot(angle, velocity)
    print "\t Your range was #{range.round(2)}  "
    if (range - alien.position).abs <= 5
      alien.die!
      puts "\n \n"
      puts '  ----------------------------------------'
      puts '  |  Congratulations! You hit the alien  |'
      puts '  ----------------------------------------'
      puts "\n \n"
    else
      direction = %w(left right).sample
      alien.move(direction, move)
      puts "\t You missed.  The alien is now #{alien.position} metres away"
    end
  else
    puts "\t cannot fire at an angle of #{angle}, angle must be > 0 and < 90"
  end
end
