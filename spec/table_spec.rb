RSpec.describe PrimesTables::Table do
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

  describe '#to_s' do
    subject { described_class.new(input).to_s }

    let(:input) { [2, 11] }
    let(:string) do
      [
        "      2  11\n",
        "  2   4  22\n",
        " 11  22 121"
      ].join
    end

    it { should eq string }
  end
end
