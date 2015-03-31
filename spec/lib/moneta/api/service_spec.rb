describe Moneta::Api::Service do
  let(:service) { described_class.new($username, $password) }

  describe '#find_account_by_id' do
    let(:response) { service.find_account_by_id(10999) }

    it 'response should include id' do
      expect(response.body[:find_account_by_id_response][:account][:id]).to eq('10999')
    end
  end
end
