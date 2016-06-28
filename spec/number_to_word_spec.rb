require('rspec')
require('number_to_word')

describe('Fixnum#number_to_word') do

  it('returns one for number: 1') do
    expect(1.number_to_word()).to(eq("one"))
  end

  it('returns ten for number: 10') do
    expect(10.number_to_word()).to(eq("ten"))
  end

end
