describe Moneta::Api::Requests::ApprovePhoneApplyCodeRequest, vcr: true do
  include_context 'moneta'

  let(:unit_id) { 42868 }
  let(:request) { described_class.new }
  let(:response) { service.approve_phone_apply_code(request) }
  let(:confirmation_code) { 123456 }
  let(:params) { { unit_id: unit_id, confirmation_code: confirmation_code } }

  before { request.fill(params) }

  subject { response }

  context 'when code invalid' do
    let(:confirmation_code) { 123456 }

    it { expect { subject }.to raise_error(Moneta::Api::RuntimeException, 'Неверный код подтверждения') }
  end
end
