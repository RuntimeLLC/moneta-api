describe Moneta::Api::Requests::GetProfileInfoRequest, vcr: true do
  include_context 'moneta'

  let(:unit_id) { 42868 }
  let(:request) { described_class.new }
  let(:response) { service.get_profile_info(request) }
  let(:params) { { unit_id: unit_id } }

  before { request.fill(params) }

  subject { response.attribute }

  its([:last_name]) { is_expected.to eq(value: 'Мономах', approved: false) }
  its([:first_name]) { is_expected.to eq(value: 'Владимир', approved: false) }
  its([:timezone]) { is_expected.to eq(value: 'Europe/Moscow', approved: false) }
  its([:profileType]) { is_expected.to eq(value: 'client', approved: false) }
  its([:name]) { is_expected.to eq(value: 'Мономах Владимир', approved: false) }
  its([:unitid]) { is_expected.to eq(value: '42868', approved: false) }
  its([:cell_phone]) { is_expected.to eq(value: '79520348677', approved: false) }
end
