describe Moneta::Api::Requests::PaymentRequest, vcr: true do
  let(:service) { Moneta::Api::Service.new($username, $password) }

  describe 'payment' do
    let(:request) do
      described_class.new.tap do |request|
        request.payee = 28988504
        request.payer = 10999
        request.amount = 10
        request.is_payer_amount = false
        request.payment_password = '12345'
      end
    end

    let!(:response) { service.payment(request) }

    it 'should success' do
      expect(response.attribute.first).to be_kind_of(Moneta::Api::Types::KeyValueAttribute)
      expect(response.id).to eq('339834')
    end
  end
end
