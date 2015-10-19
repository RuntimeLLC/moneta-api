describe Moneta::Api::Requests::CreateBankAccountRequest, vcr: true do
  include_context 'moneta'

  let(:params) do
    {
      attribute: {
        bik: '044525225',
        account: '30301810000006000001'
      }
    }
  end

  let(:request) { described_class.new }

  before { request.fill(params) }

  subject { service.create_bank_account(request) }

  its(:id) { is_expected.to be_a_bank_account_id }
end
