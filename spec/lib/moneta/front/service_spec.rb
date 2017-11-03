describe Moneta::Front::Service, vcr: true do
  let(:params) { { demo_mode: true } }

  let(:service) { described_class.new($cert, $cert_private_key, params) }

  describe '#request' do
    subject { service.request(path) }

    context 'when success request' do
      let(:path) { 'report/receipt.htm?operationId=467339&format=pdf' }

      its(:status) { is_expected.to eq 200 }
    end

    context 'when bad request' do
      let(:path) { 'report/receipt.htm' }

      its(:status) { is_expected.to eq 400 }
    end
  end

  describe '#get_invoice_pdf' do
    subject { service.get_receipt_pdf(467339) }

    context 'when success request' do
      let(:operation_id) { 467339 }
      its(:status) { is_expected.to eq 200 }
    end
  end
end
