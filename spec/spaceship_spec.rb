require 'spaceship'

describe Spaceship do
  let (:spaceship) { Spaceship.new }

  it 'can fire at a given angle and knows th range of the shot' do
    expect(spaceship.shoot(45, 20).round(2)).to eq 40.77
    expect(spaceship.shoot(10, 100).round(2)).to eq 348.64
  end

  it 'can check that the firing angle is between 0 and 90' do
    expect(spaceship.check_angle(45)).to be true
    expect(spaceship.check_angle(0)).to be false
    expect(spaceship.check_angle(-45)).to be false
    expect(spaceship.check_angle(90)).to be false
    expect(spaceship.check_angle(120)).to be false
  end
end
