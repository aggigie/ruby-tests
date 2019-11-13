require_relative('../lib/anagram')

RSpec.describe Anagram do
  
  it 'no matches' do
    detector = Anagram.new('diaper')
    anagrams = detector.match(%w[hello world zombies pants])
    expected = []
    expect(anagrams).to(eq(expected))
  end

  it 'two anagrams' do
    detector = Anagram.new('master')
    anagrams = detector.match(%w[stream pigeon maters])
    expected = %w[maters stream]
    expect(anagrams.sort).to(eq(expected))
  end
  
  it 'does not detect anagram subsets' do
    detector = Anagram.new('good')
    anagrams = detector.match(%w[dog goody])
    expected = []
    expect(anagrams).to(eq(expected))
  end
  
  it 'only one anagram' do
    detector = Anagram.new('listen')
    anagrams = detector.match(%w[enlists google inlets banana])
    expected = ['inlets']
    expect(anagrams).to(eq(expected))
  end
  
  it 'three anagrams' do
    detector = Anagram.new('allergy')
    anagrams = detector.match(%w[gallery ballerina regally clergy largely leading])
    expected = %w[gallery largely regally]
    expect(anagrams.sort).to(eq(expected))
  end
  
  it 'anagrams with identical checksum' do
    detector = Anagram.new('mass')
    anagrams = detector.match(['last'])
    expected = []
    expect(anagrams).to(eq(expected))
  end

  it 'case insensitive anagrams' do
    detector = Anagram.new('Orchestra')
    anagrams = detector.match(%w[cashregister Carthorse radishes])
    expected = ['Carthorse']
    expect(anagrams).to(eq(expected))
  end

  it 'anagram with case insensitive subject' do
    detector = Anagram.new('Orchestra')
    anagrams = detector.match(%w[cashregister carthorse radishes])
    expected = ['carthorse']
    expect(anagrams).to(eq(expected))
  end

  it 'case insensitive possible matches' do
    detector = Anagram.new('orchestra')
    anagrams = detector.match(%w[cashregister Carthorse radishes])
    expected = ['Carthorse']
    expect(anagrams).to(eq(expected))
  end

  it 'repeated original word' do
    detector = Anagram.new('go')
    anagrams = detector.match(['go Go GO'])
    expected = []
    expect(anagrams).to(eq(expected))
  end

  it 'all letters used exactly once' do
    detector = Anagram.new('tapper')
    anagrams = detector.match(['patter'])
    expected = []
    expect(anagrams).to(eq(expected))
  end

  it 'words as anagrams of themselves' do
    detector = Anagram.new('BANANA')
    anagrams = detector.match(%w[BANANA Banana banana])
    expected = []
    expect(anagrams).to(eq(expected))
  end
end
