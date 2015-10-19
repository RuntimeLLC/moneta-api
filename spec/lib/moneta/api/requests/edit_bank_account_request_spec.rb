describe Moneta::Api::Requests::EditBankAccountRequest, vcr: true do
  include_context 'moneta'

  let(:id) { '1182' }
  let(:request) { described_class.new }

  let(:params) do
    {
      id: id,
      attribute: {
        bik: '044525225',
        account: '30301810000006000001',
        bank: 'ФИЛИАЛ "БАЙКОНУР" ОАО "СОБИНБАНК"'
      }
    }
  end

  before { request.fill(params) }

  subject { service.edit_bank_account(request) }

  its(:success) { is_expected.to be_truthy }
end
