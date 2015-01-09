require('rspec')
require('scrabble')


#Make a website that takes a word and returns the Scrabble score for that word.
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10



describe('String#scrabble') do
  it("one letter input to result in numeric output") do
    expect("a".scrabble()).to(eq(1))
  end

  it("two letter input to result in sum of hash letter values") do
    expect("at".scrabble()).to(eq(2))
  end

  it("multiple letter word will result in the sum of hash of all letter values") do
    expect("quincunx".scrabble()).to(eq(26))
  end

  it("will downcase any uppercase letters present in input string") do
    expect("Hello".scrabble()).to(eq(8))
  end

  it("will remove any extraneous white space entered in input string") do
    expect("H ello ".scrabble()).to(eq(8))
  end
end
