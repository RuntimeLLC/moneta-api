describe Moneta::Api::Requests::VerifyPaymentBatchRequest do
  describe 'Entity extension' do
    subject { described_class.new.properties.keys }

    it { is_expected.to be_include(:version) }
    it { is_expected.to be_include(:transactional) }
  end

  describe '#add_transaction' do
    let(:request) { described_class.new }
    let(:add_transaction) { request.add_transaction(item) }

    context 'when valid item' do
      let(:item) { Moneta::Api::Types::TransactionRequestType.new }

      it 'should success add' do
        add_transaction
        expect(request.transaction.count).to eq 1
      end
    end

    context 'when invalid item' do
      let(:item) { Hash.new }

      it { expect { add_transaction }.to raise_error TypeError }
    end
  end

  describe 'use', vcr: true do
    include_context 'moneta'

    let(:data) {
      {
        amount: 10,
        payee: 28988504,
        payer: 10999,
        is_payer_amount: false,
        payment_password: '12345'
      }
    }
    let(:request) do
      described_class.new.tap do |request|
        request.transactional = false
        request.exit_on_failure = true
        operations.each { |o| request.add_transaction(o) }
      end
    end

    subject { service.verify_payment_batch(request) }

    context 'when one operation' do
      let(:operations) do
        [
          Moneta::Api::Types::TransactionRequestType.build(data)
        ]
      end

      its('transaction.transaction') { is_expected.to be_a_kind_of(Moneta::Api::Types::OperationInfo) }
    end

    context 'when two operations' do
      let(:operations) do
        [
          Moneta::Api::Types::TransactionRequestType.build(data),
          Moneta::Api::Types::TransactionRequestType.build(data)
        ]
      end

      its('transaction.first.transaction') { is_expected.to be_a_kind_of(Moneta::Api::Types::OperationInfo) }
    end
  end
end
