describe Moneta::Api::Responses::FindAccountByIdResponse do
  describe '#load_from' do
    subject { described_class.build(account: { id: '10999' }) }

    it 'should fill account info' do
      expect(subject.account).to be_kind_of(Moneta::Api::Types::AccountInfo)
      expect(subject.account.id).to eq('10999')
    end
  end
end
