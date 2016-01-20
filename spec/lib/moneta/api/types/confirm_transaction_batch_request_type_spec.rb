describe Moneta::Api::Types::ConfirmTransactionBatchRequestType do
  describe '.add_transaction' do
    let(:request) { described_class.new }

    it 'should add transaction' do
      transaction = Moneta::Api::Types::ConfirmTransactionRequestType.new

      request.add_transaction(transaction)

      expect(request.transaction).to include transaction
    end

    it 'should not add with wrong type' do
      transaction = Moneta::Api::Types::Entity.new

      expect { request.add_transaction(transaction) }.to raise_exception TypeError
    end
  end
end
