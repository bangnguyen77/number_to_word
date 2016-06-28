require('rspec')
require('number_to_word')

describe('Fixnum#number_to_word') do

  it('returns one for number: 1') do
    expect(1.number_to_word()).to(eq("one"))
  end

  it('returns ten for number: 10') do
    expect(10.number_to_word()).to(eq("ten"))
  end

  it('returns fourteen for number: 14') do
    expect(16.number_to_word()).to(eq("sixteen"))
  end

  it('returns twenty for number: 20') do

    expect(20.number_to_word()).to(eq("twenty"))
  end

  it('returns twenty one for number: 21') do
    expect(21.number_to_word()).to(eq("twenty one"))
  end


end
