describe Moneta::Api::RuntimeException do
  let(:message) { 'error' }
  let(:code) { 'SOAP-ENV:Client' }
  let(:detail) { { foo: ['bar'] } }

  let(:exception) { described_class.new(code, message, detail) }

  describe '.to_hash' do
    subject { exception.to_hash }

    its([:message]) { is_expected.to eq message }
    its([:code]) { is_expected.to eq code }
    its([:detail]) { is_expected.to eq detail }
  end

  describe '.inspect' do
    subject { exception }

    its(:inspect) { is_expected.to eq "SOAP-ENV:Client: error#{ $/ }foo: bar" }
  end
end
