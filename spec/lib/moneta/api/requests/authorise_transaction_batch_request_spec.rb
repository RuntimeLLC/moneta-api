describe Moneta::Api::Requests::AuthoriseTransactionBatchRequest do
  describe 'Entity extension' do
    subject { described_class.new }

    it { is_expected.to be_respond_to(:version) }
    it { is_expected.to be_respond_to(:transactional) }
  end

  describe '#add_transaction' do
    let(:request) { described_class.new }
    let(:add_transaction) { request.add_transaction(item) }

    context 'when valid item' do
      let(:item) { Moneta::Api::Requests::PaymentRequest.new }

      it 'should success add' do
        add_transaction
        expect(request.transaction.count).to eq 1
      end
    end

    context 'when invalid item' do
      let(:item) { Hash.new }

      it { expect { add_transaction }.to raise_error }
    end
  end
end
