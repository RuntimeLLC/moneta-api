describe Moneta::Api::Requests::FindBankAccountsRequest, vcr: true do
  include_context 'moneta'

  let(:request) { described_class.new }
  let(:response) { service.find_bank_accounts(request) }

  before { request.fill({}) }

  subject { response.bank_account }

  its(:count) { is_expected.to eq 6 }

  describe 'first account' do
    let(:bank_account) { response.get_account(1182) }
    subject { bank_account }

    its(:id) { is_expected.to eq 1182 }

    describe '.attribute' do
      subject { bank_account.attribute }

      its([:bank]) { is_expected.to eq(value: 'ФИЛИАЛ "БАЙКОНУР" ОАО "СОБИНБАНК"', approved: false) }
      its([:account]) { is_expected.to eq(value: '30301810000006000001', approved: false) }
      its([:bik]) { is_expected.to eq(value: '044525225', approved: false) }
      its([:corr_account]) { is_expected.to eq(value: '30101810400000000225', approved: false) }
      its([:is_international]) { is_expected.to eq(value: 'false', approved: false) }
    end
  end
end
