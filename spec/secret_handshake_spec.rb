require_relative ('../lib/secret_handshake')

RSpec.describe SecretHandshake do
  it 'handshake 1 to wink' do
    handshake = SecretHandshake.new(1)
    expect(handshake.commands).to(eq(["wink"]))
  end
  it 'handshake 10 to double blink' do
    handshake = SecretHandshake.new(2)
    expect(handshake.commands).to(eq(["double blink"]))
  end
  it 'handshake 100 to close your eyes' do
    handshake = SecretHandshake.new(4)
    expect(handshake.commands).to(eq(["close your eyes"]))
  end
  it 'handshake 1000 to jump' do
    handshake = SecretHandshake.new(8)
    expect(handshake.commands).to(eq(["jump"]))
  end
  it 'handshake 11 to wink and double blink' do
    handshake = SecretHandshake.new(3)
    expect(handshake.commands).to(eq(["wink", "double blink"]))
  end
  it 'handshake 10011 to double blink and wink' do
    handshake = SecretHandshake.new(19)
    expect(handshake.commands).to(eq(["double blink", "wink"]))
  end
  it 'handshake 11111 to double blink and wink' do
    handshake = SecretHandshake.new(31)
    expected = ["jump", "close your eyes", "double blink", "wink"]
    expect(handshake.commands).to(eq(expected))
  end
  it 'invalid handshake' do
    handshake = SecretHandshake.new 'piggies'
    expect(handshake.commands).to(eq([]))
  end
end
