require 'spec_helper'

describe PrimesTables do
  let(:primes) { Array.new }
  let(:table) { double(:to_s => output) }
  let(:output) { String.new }

  describe '.run!' do
    it 'sends the correct messages' do
      expect(PrimesTables::Util).to receive(:generate_primes).with(10).and_return(primes)
      expect(PrimesTables::Table).to receive(:new).with(primes).and_return(table)
      expect(described_class).to receive(:display).with(output)
      described_class.run!
    end
  end
end
