describe Moneta::Api::Responses::FindAccountByIdResponse do
  describe '#load_from' do
    subject { described_class.new(account: Moneta::Api::Responses::AccountInfo.new({ id: '10999' })) }

    its(:account) { is_expected.to be_kind_of(Moneta::Api::Responses::AccountInfo) }
  end
end
