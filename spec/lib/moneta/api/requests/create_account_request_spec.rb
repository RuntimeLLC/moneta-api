describe Moneta::Api::Requests::CreateAccountRequest, vcr: true do
  let(:service) { Moneta::Api::Service.new($username, $password) }

  describe 'create account' do
    let(:request) do
      described_class.new.tap do |request|
        request.currency = 'RUB'
        request.payment_password = '12345'
      end
    end

    subject { service.create_account(request) }

    its(:account_id) { is_expected.to eq '47494515' }
  end
end
