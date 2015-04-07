describe Moneta::Api::Service, vcr: true do
  let(:service) { described_class.new($username, $password) }

  describe '#find_account_by_id' do
    subject { service.find_account_by_id(10999) }

    its('account.id') { is_expected.to eq '10999' }
  end
end
