require_relative('../lib/space_age')

RSpec.describe SpaceAge do
  it 'age on earth' do
    age = SpaceAge.new(1_000_000_000)
    expect(age.on_earth).to(be_within(0.01).of(31.69))
  end
  
  it 'age on mercury' do
    age = SpaceAge.new(2_134_835_688)
    expect(age.on_mercury).to(be_within(0.01).of(280.88))
  end

  it 'age on venus' do
    age = SpaceAge.new(189_839_836)
    expect(age.on_venus).to(be_within(0.01).of(9.78))
  end

  it 'age on mars' do
    age = SpaceAge.new(2_329_871_239)
    expect(age.on_mars).to(be_within(0.01).of(39.25))
  end

  it 'age on jupiter' do
    age = SpaceAge.new(901_876_382)
    expect(age.on_jupiter).to(be_within(0.01).of(2.41))
  end

  it 'age on saturn' do
    age = SpaceAge.new(3_000_000_000)
    expect(age.on_saturn).to(be_within(0.01).of(3.23))
  end

  it 'age on uranus' do
    age = SpaceAge.new(3_210_123_456)
    expect(age.on_uranus).to(be_within(0.01).of(1.21))
  end

  it 'age on neptune' do
    age = SpaceAge.new(8_210_123_456)
    expect(age.on_neptune).to(be_within(0.01).of(1.58))
  end
end
