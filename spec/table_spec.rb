require 'spec_helper'

describe PrimesTables::Table do
  describe '#result' do
    subject { described_class.new(input).result }

    let(:input) { [1, 2, 3] }
    let(:output) do
      [
        [1, 2, 3],
        [2, 4, 6],
        [3, 6, 9]
      ]
    end

    it { should eq output }
  end
end
