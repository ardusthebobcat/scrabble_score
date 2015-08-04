require('rspec')
require('pry')
require('scrabble_score')

describe("String#scrabble_score") do

  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end
  it("returns a scrabble score for an entire word") do
    expect("cat".scrabble_score()).to(eq(5))
  end
end
