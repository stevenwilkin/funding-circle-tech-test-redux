RSpec.describe PrimesTables::Util do
  describe '.prime?' do
    let(:primes) { [2, 37, 101, 149 ] }
    let(:non_primes) { [1, 38, 102, 148] }

    it 'returns true for prime numbers' do
      primes.each do |x|
        expect(described_class.prime?(x)).to be_truthy
      end
    end

    it 'returns false for non-prime numbers' do
      non_primes.each do |x|
        expect(described_class.prime?(x)).to be_falsy
      end
    end
  end

  describe '.next_prime' do
    let(:current_and_next_primes) { Hash[[[2, 3], [101, 103], [139, 149]]] }

    it 'returns the next prime number' do
      current_and_next_primes.each do |current_prime, next_prime|
        expect(described_class.next_prime(current_prime)).to eq next_prime
      end
    end
  end

  describe '.generate_primes' do
    let(:primes) { [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101] }

    it { expect(described_class.generate_primes(primes.count)).to eq primes }
    it { expect(described_class.generate_primes(1)).to eq [2] }
  end
end
