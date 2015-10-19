describe Moneta::Api::Requests::Profile::EditOrganizationProfileRequest, vcr: true do
  include_context 'moneta'

  let(:unit_id) { 42871 }
  let(:request) { described_class.new }

  let(:params) do
    {
      unit_id: unit_id,
      profile: {
        fio_director: 'Peter Pen',
        organization_name: 'The Lost Boys'
      }
    }
  end

  before { request.fill(params) }

  subject { service.edit_profile(request) }

  its(:success) { is_expected.to be_truthy }
end
