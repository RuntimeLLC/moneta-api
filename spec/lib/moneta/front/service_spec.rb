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

  describe '#get_receipt_pdf' do
    subject { service.get_receipt_pdf(operation_id) }

    context 'when success request' do
      let(:operation_id) { 467339 }

      it 'Must be a PDF' do
        expect(subject[0, 4]).to eq('%PDF')
      end
    end

    context 'when bad request' do
      let(:operation_id) { 'report/receipt.htm' }

      it { expect { subject }.to raise_error(Moneta::Front::HTTPException) }
    end
  end
end
