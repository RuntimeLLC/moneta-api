describe Moneta::Api::Requests::CreateAccountRequest, vcr: true do
  include_context 'moneta'

  describe 'create account' do
    let(:request) do
      described_class.new.tap do |request|
        request.currency = 'RUB'
        request.payment_password = '12345'
      end
    end

    subject { service.create_account(request) }

    its(:account_id) { is_expected.to be_a_moneta_id }
  end
end
