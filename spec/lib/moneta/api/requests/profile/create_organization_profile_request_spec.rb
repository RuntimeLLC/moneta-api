describe Moneta::Api::Requests::Profile::CreateOrganizationProfileRequest, vcr: true do
  include_context 'moneta'

  let(:params) { {} }
  let(:request) { described_class.new }

  before { request.fill(params) }

  describe 'request' do
    subject { request }

    its(:profile_type) { is_expected.to eq 'organization' }
  end

  describe 'response' do
    let(:params) do
      {
        profile: {
          fio_director: 'Peter Pan',
          organization_name: 'The Lost Boys'
        }
      }
    end

    subject { service.create_profile(request) }

    its(:profile_id) { is_expected.to be_a_moneta_id }
  end
end
