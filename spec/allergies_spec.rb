require_relative('../lib/allergies')

RSpec.describe Allergies do
  it 'no allergies means not allergic' do
    allergies = Allergies.new(0)
    expect(allergies.allergic_to?('peanuts')).to(eq(false))
    expect(allergies.allergic_to?('cats')).to(eq(false))
    expect(allergies.allergic_to?('strawberries')).to(eq(false))
  end

  it 'is allergic to eggs' do
    allergies = Allergies.new(1)
    expect(allergies.allergic_to?('eggs')).to(eq(true))
  end
  
  it 'allergic to eggs in addition to other stuff' do
    allergies = Allergies.new(5)
    expect(allergies.allergic_to?('eggs')).to(eq(true))
    expect(allergies.allergic_to?('shellfish')).to(eq(true))
    expect(allergies.allergic_to?('strawberries')).to(eq(false))
  end
  
  it 'allergic to strawberries but not peanuts' do
    allergies = Allergies.new(9)
    expect(allergies.allergic_to?('eggs')).to(eq(true))
    expect(allergies.allergic_to?('peanuts')).to(eq(false))
    expect(allergies.allergic_to?('shellfish')).to(eq(false))
    expect(allergies.allergic_to?('strawberries')).to(eq(true))
  end
  
  it 'no allergies at all' do
    allergies = Allergies.new(0)
    expected_items = []
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to just eggs' do
    allergies = Allergies.new(1)
    expected_items = ["eggs"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to just peanuts' do
    allergies = Allergies.new(2)
    expected_items = ["peanuts"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to just strawberries' do
    allergies = Allergies.new(8)
    expected_items = ["strawberries"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to eggs and peanuts' do
    allergies = Allergies.new(3)
    expected_items = ["eggs", "peanuts"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to more than eggs but not peanuts' do
    allergies = Allergies.new(5)
    expected_items = ["eggs", "shellfish"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to multiple' do
    allergies = Allergies.new(248)
    expected_items = ["cats", "chocolate", "pollen", "strawberries", "tomatoes"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'allergic to everything' do
    allergies = Allergies.new(255)
    expected_items = ["cats", "chocolate", "eggs", "peanuts", "pollen", "shellfish", "strawberries", "tomatoes"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
  
  it 'non allergen score parts' do
    allergies = Allergies.new(509)
    expected_items = ["cats", "chocolate", "eggs", "pollen", "shellfish", "strawberries", "tomatoes"]
    expect(allergies.list.sort).to(eq(expected_items))
  end
end
