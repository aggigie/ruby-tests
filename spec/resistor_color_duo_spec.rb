require_relative('../lib/resistor_color_duo')
RSpec.describe ResistorColorDuo do
  it 'brown and black' do
    expect(ResistorColorDuo.value(%w[brown black])).to(eq(10))
  end
  it 'blue and grey' do
    expect(ResistorColorDuo.value(%w[blue grey])).to(eq(68))
  end
  it 'yellow and violet' do
    expect(ResistorColorDuo.value(%w[yellow violet])).to(eq(47))
  end
  it 'orange and orange' do
    expect(ResistorColorDuo.value(%w[orange orange])).to(eq(33))
  end
  it 'additional colors' do
    expect(ResistorColorDuo.value(%w[green brown orange])).to(eq(51))
  end
end
