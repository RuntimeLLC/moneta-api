describe Moneta::Api::Requests::AuthoriseTransactionRequest, vcr: true do
  include_context 'moneta'

  describe '#authorise_transaction' do
    let(:request) do
      described_class.new.tap do |request|
        fill_base_settings.(request)
      end
    end

    let!(:response) { service.authorise_transaction(request) }

    it 'should success' do
      expect(response).to be_kind_of(Moneta::Api::Responses::AuthoriseTransactionResponse)
      expect(response.id).to be_a_moneta_id
    end
  end
end
