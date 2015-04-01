describe Moneta::Api::Service, vcr: true do
  let(:service) { described_class.new($username, $password) }

  describe '#find_account_by_id' do
    subject { service.find_account_by_id(10999) }

    its(:id) { is_expected.to eq '10999' }
  end

  describe '#create_account' do
    let(:request) { Moneta::Api::Request::CreateAccount.new(currency: 'RUB', payment_password: '12345') }

    subject { service.create_account(request) }

    its(:id) { is_expected.to eq '29624334' }
  end
end
