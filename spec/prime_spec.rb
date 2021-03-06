require_relative './spec_helper'
require_relative '../prime.rb'

def prime (numbers)
  @nth_value = nth_value
 for test_value in numbers do
  if (@nth_value % test_value) == 0
   puts ("#{@nth_value} is not divisible by #{numbers}")
  else
   puts ("This is not a prime number since this is divisible by #{test_value}")
  break
  end
 end
 end
end


describe "prime?" do
  it 'returns true for prime numbers' do
    expect(prime?(2)).to be(true)
    expect(prime?(3)).to be(true)
    expect(prime?(11)).to be(true)
    expect(prime?(105557)).to be(true)
  end

  it 'returns false for non-prime numbers' do
    expect(prime?(-1)).to be(false), "Be sure to account for negative numbers!"
    expect(prime?(0)).to be(false)
    expect(prime?(1)).to be(false)
    expect(prime?(4)).to be(false)
    expect(prime?(40)).to be(false)
    expect(prime?(1763)).to be(false)
    expect(prime?(101013)).to be(false)
  end
end
