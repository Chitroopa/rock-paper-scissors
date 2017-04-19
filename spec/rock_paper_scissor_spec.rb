require('rspec')
require('rock_paper_scissor')

describe('String#rock_paper_scissor') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns false if rock and scissors are passed to the method") do
    expect("scissors".beats?("rock")).to(eq(false))
  end
  it("returns true if rock beats scissors") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns true if scissors beats paper") do
    expect("scissors".beats?("paper")).to(eq(true))
  end
  it("returns true if paper beats rock") do
    expect("paper".beats?("rock")).to(eq(true))
  end
  it("returns who won the game") do
    expect("paper".rock_paper_scissor("rock")).to(eq('Player1 wins'))
  end
  it("returns who won the game") do
    expect("rock".rock_paper_scissor("paper")).to(eq('Player2 wins'))
  end
  it("returns draw if both players have same value") do
    expect("paper".rock_paper_scissor("paper")).to(eq('Draw'))
  end
end
