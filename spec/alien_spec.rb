require 'alien'

describe Alien do
  let (:alien) { Alien.new(50) }
  it 'is alive when created' do
    expect(alien.status).to eq 'alive'
  end

  it 'can die' do
    alien.die!
    expect(alien.status).to eq 'dead'
  end

  it 'has a position' do
    expect(alien.position).to eq 50
  end

  it 'can move right' do
    alien.move('right', 10)
    expect(alien.position).to eq 60
  end

  it 'can move left' do
    alien.move('left', 5)
    expect(alien.position).to eq 45
  end
end
