describe Moneta::Api::Requests::FindOperationsListRequest, vcr: true do
  include_context 'moneta'

  describe 'find_operations_list' do
    let(:request) do
      described_class.new.tap do |request|
        request.filter = Moneta::Api::Types::FindOperationsListRequestFilter.new.tap do |r|
          r.date_from = '2015-01-01T00:00:00+03:00'
          r.date_to = '2015-04-13T00:00:00+03:00'
        end

        request.pager = Moneta::Api::Types::Pager.new.tap do |r|
          r.page_number = 1
          r.page_size = 1
        end
      end
    end

    subject { service.find_operations_list(request) }

    its(:account_id) { pending; is_expected.to be_a_moneta_id }
  end
end
