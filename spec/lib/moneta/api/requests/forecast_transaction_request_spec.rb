describe Moneta::Api::Requests::ForecastTransactionRequest, vcr: true do
  include_context 'moneta'
  describe 'forecast_transaction' do
    let(:request) do
      described_class.new.tap do |request|
        fill_base_settings.(request)
      end
    end

    subject { service.forecast_transaction(request) }

    its(:payer_currency) { is_expected.to eq 'RUB' }
  end
end
