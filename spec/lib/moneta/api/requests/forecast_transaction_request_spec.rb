describe Moneta::Api::Requests::ForecastTransactionRequest, vcr: true do
  let(:service) { Moneta::Api::Service.new($username, $password) }

  describe 'forecast_transaction' do
    let(:request) do
      described_class.new.tap do |request|
        request.amount = 10
        request.payee = 28988504
        request.payer = 10999
        request.is_payer_amount = false
        request.payment_password = '12345'
      end
    end

    subject { service.forecast_transaction(request) }

    its(:payer_currency) { is_expected.to eq 'RUB' }
  end
end
