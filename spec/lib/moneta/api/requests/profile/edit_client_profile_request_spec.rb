describe Moneta::Api::Requests::Profile::EditClientProfileRequest, vcr: true do
  include_context 'moneta'

  let(:unit_id) { 42868 }
  let(:request) { described_class.new }

  let(:params) do
    {
      unit_id: unit_id,
      profile: {
        last_name: 'Мономах',
        first_name: 'Владимир'
      }
    }
  end

  before { request.fill(params) }

  subject { service.edit_profile(request) }

  its(:success) { is_expected.to be_truthy }
end
