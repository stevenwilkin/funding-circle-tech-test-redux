RSpec.describe PrimesTables do
  let(:primes) { Array.new }
  let(:table) { double(:to_s => output) }
  let(:output) { String.new }
  let(:num_primes) { 6 }
  let(:default_num_primes) { 10 }

  describe '.number_of_primes' do
    context 'when the argument is not provided' do
      before do
        ARGV.clear
      end

      it 'uses a default' do
        expect(described_class.number_of_primes).to eq(default_num_primes)
      end
    end

    context 'when the argument is provided' do
      before do
        ARGV.replace(['--count', "#{num_primes}"])
      end

      context 'but is not a natural number' do
        let(:num_primes) { 0 }

        it 'uses a default' do
          expect(described_class.number_of_primes).to eq(default_num_primes)
        end
      end

      context 'and is a natural number' do
        it 'uses the supplied value' do
          expect(described_class.number_of_primes).to eq(num_primes)
        end
      end
    end
  end

  describe '.run!' do
    it 'sends the correct messages' do
      expect(described_class).to receive(:number_of_primes).and_return(num_primes)
      expect(PrimesTables::Util).to receive(:generate_primes).with(num_primes).and_return(primes)
      expect(PrimesTables::Table).to receive(:new).with(primes).and_return(table)
      expect(described_class).to receive(:display).with(output)
      described_class.run!
    end
  end
end
