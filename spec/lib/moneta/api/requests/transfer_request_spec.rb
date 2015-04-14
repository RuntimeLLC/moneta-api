describe Moneta::Api::Requests::TransferRequest, vcr: true do
  include_context 'moneta'

  describe 'transfer' do
    let(:request) do
      described_class.new.tap do |request|
        fill_base_settings.(request)
      end
    end

    subject { service.transfer(request) }

    its(:status) { is_expected.to eq 'SUCCEED' }
  end
end
