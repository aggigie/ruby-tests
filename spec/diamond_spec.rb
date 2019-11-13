require_relative("../lib/diamond")

RSpec.describe Diamond do  
  it 'letter a' do
    answer = Diamond.make_diamond("A")
    expect(answer).to(eq("A\n"))
  end

  it 'letter c' do
    answer = Diamond.make_diamond("C")
    string = "  A  \n B B \nC   C\n B B \n  A  \n"
    expect(answer).to(eq(string))
  end

  it 'letter e' do
    answer = Diamond.make_diamond("E")
    string = "    A    \n   B B   \n  C   C  \n D     D \nE       E\n D     D \n  C   C  \n   B B   \n    A    \n"
    expect(answer).to(eq(string))
  end

end
