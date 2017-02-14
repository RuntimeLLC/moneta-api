describe Moneta::Api::HTTPException do
  let(:message) { 'Server Error' }

  let(:exception) { described_class.new(message) }

  describe '.to_hash' do
    subject { exception.to_hash }

    its(:length) { is_expected.to eq 1 }
    its([:message]) { is_expected.to eq message }
  end

  describe '.inspect' do
    subject { exception }

    its(:inspect) { is_expected.to eq 'HTTPException: Server Error' }
  end
end
