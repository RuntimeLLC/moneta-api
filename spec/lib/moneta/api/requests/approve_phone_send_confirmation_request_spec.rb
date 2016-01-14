describe Moneta::Api::Requests::ApprovePhoneSendConfirmationRequest, vcr: true do
  include_context 'moneta'

  let(:unit_id) { 42868 }
  let(:request) { described_class.new }
  let(:response) { service.approve_phone_send_confirmation(request) }
  let(:text) { 'Ваш код для подтверждения {CODE}' }
  let(:params) { { unit_id: unit_id, text: text } }

  before { request.fill(params) }

  subject { response.attribute }

  its([:phone_number]) { is_expected.to eq('+79520348677') }
end
