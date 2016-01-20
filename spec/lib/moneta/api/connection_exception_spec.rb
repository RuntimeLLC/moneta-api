describe Moneta::Api::ConnectionException do
  describe '.to_hash' do
    let(:message) { 'error' }

    subject { described_class.new(message).to_hash }

    its([:message]) { is_expected.to eq message }
  end
end
