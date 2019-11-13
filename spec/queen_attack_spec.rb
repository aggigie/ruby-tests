require("minitest/autorun")
require_relative("../lib/queen_attack")
class QueenAttackTest < Minitest::Test
  it("queen with a valid position") do
    expect(Queens.new(:white => ([2, 2]))).to(be_truthy)
  end
  it("queen must have positive row") do
    expect { Queens.new(:white => ([-2, 2])) }.to(raise_error(ArgumentError))
  end
  it("queen must have row on board") do
    expect { Queens.new(:white => ([8, 4])) }.to(raise_error(ArgumentError))
  end
  it("queen must have positive column") do
    expect { Queens.new(:white => ([2, -2])) }.to(raise_error(ArgumentError))
  end
  it("queen must have column on board") do
    expect { Queens.new(:white => ([4, 8])) }.to(raise_error(ArgumentError))
  end
  it("can not attack") do
    queens = Queens.new(:white => ([2, 4]), :black => ([6, 6]))
    expect(queens.attack?).to(eq(false))
  end
  it("can attack on same row") do
    queens = Queens.new(:white => ([2, 4]), :black => ([2, 6]))
    expect(queens.attack?).to(eq(true))
  end
  it("can attack on same column") do
    queens = Queens.new(:white => ([4, 5]), :black => ([2, 5]))
    expect(queens.attack?).to(eq(true))
  end
  it("can attack on first diagonal") do
    queens = Queens.new(:white => ([2, 2]), :black => ([0, 4]))
    expect(queens.attack?).to(eq(true))
  end
  it("can attack on second diagonal") do
    queens = Queens.new(:white => ([2, 2]), :black => ([3, 1]))
    expect(queens.attack?).to(eq(true))
  end
  it("can attack on third diagonal") do
    queens = Queens.new(:white => ([2, 2]), :black => ([1, 1]))
    expect(queens.attack?).to(eq(true))
  end
  it("can attack on fourth diagonal") do
    queens = Queens.new(:white => ([2, 2]), :black => ([5, 5]))
    expect(queens.attack?).to(eq(true))
  end
end
