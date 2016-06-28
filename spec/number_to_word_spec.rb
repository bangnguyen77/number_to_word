require('rspec')
require('number_to_word')

describe('String#number_to_word') do

  it('returns one for string input = 1') do
    expect("1".number_to_word()).to(eq("one"))
  end

  it('returns one hundred for string input = 100') do
    expect("101".number_to_word()).to(eq("one hundred one"))
  end
end
