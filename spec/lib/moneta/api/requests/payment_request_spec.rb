describe Moneta::Api::Requests::PaymentRequest, vcr: true do
  include_context 'moneta'

  describe 'payment' do
    let(:request) do
      described_class.new.tap do |request|
        fill_base_settings.(request)
      end
    end

    let!(:response) { service.payment(request) }

    it 'should success' do
      expect(response.attribute.first).to be_kind_of(Moneta::Api::Types::KeyValueAttribute)
      expect(response.id).to be_a_moneta_id
    end
  end
end
