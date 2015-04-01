describe Moneta::Api::Responses::FindAccountByIdResponse do
  describe '#load_from' do
    subject { described_class.new(account: { id: '10999' }) }

    its(:id) { is_expected.to eq '10999' }
  end
end