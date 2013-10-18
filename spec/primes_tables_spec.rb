require 'spec_helper'

describe PrimesTables do
  describe '.prime?' do
    let(:primes) { [2, 37, 101, 149 ] }
    let(:non_primes) { [1, 38, 102, 148] }

    it 'returns true for prime numbers' do
      primes.each do |x|
        expect(PrimesTables.prime?(x)).to be_true
      end
    end

    it 'returns false for non-prime numbers' do
      non_primes.each do |x|
        expect(PrimesTables.prime?(x)).to be_false
      end
    end
  end

  describe '.next_prime' do
    let(:current_and_next_primes) { Hash[[[2, 3], [101, 103], [139, 149]]] }

    it 'returns the next prime number' do
      current_and_next_primes.each do |current_prime, next_prime|
        expect(PrimesTables.next_prime(current_prime)).to eq next_prime
      end
    end
  end
end
