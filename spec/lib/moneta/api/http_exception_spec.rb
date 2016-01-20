describe Moneta::Api::HTTPException do
  let(:message) { 'Server Error' }
  let(:code) { '500' }

  let(:exception) { described_class.new(message).tap { |e| e.code = code } }

  describe '.to_hash' do
    subject { exception.to_hash }

    its([:message]) { is_expected.to eq message }
    its([:code]) { is_expected.to eq code }
  end

  describe '.inspect' do
    subject { exception }

    its(:inspect) { is_expected.to eq '500: Server Error' }
  end
end
