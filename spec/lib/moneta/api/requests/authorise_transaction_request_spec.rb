describe Moneta::Api::Requests::AuthoriseTransactionRequest, vcr: true do
  let(:service) { Moneta::Api::Service.new($username, $password) }

  describe '#authorise_transaction' do
    let(:request) do
      described_class.new.tap do |request|
        request.payee = 28988504
        request.payer = 10999
        request.amount = 10
        request.is_payer_amount = false
        request.payment_password = '12345'
      end
    end

    let!(:response) { service.authorise_transaction(request) }

    it 'should success' do
      expect(response).to be_kind_of(Moneta::Api::Responses::AuthoriseTransactionResponse)
      expect(response.id).to be_a_moneta_id
    end
  end
end
