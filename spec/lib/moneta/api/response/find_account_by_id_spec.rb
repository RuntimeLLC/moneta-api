describe Moneta::Api::Responses::FindAccountByIdResponse do
  describe '#load_from' do
    subject { described_class.new(account: Moneta::Api::Types::AccountInfo.new({ id: '10999' })) }

    its(:account) { is_expected.to be_kind_of(Moneta::Api::Types::AccountInfo) }
  end
end
