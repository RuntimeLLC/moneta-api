describe Moneta::Api::Requests::GetAccountPaymentPasswordChallengeRequest, vcr: true do
  let(:service) { Moneta::Api::Service.new($username, $password) }

  describe 'get_account_payment_password_challenge' do
    let(:request) do
      described_class.new.tap do |request|
        request.account_id = 28988504
      end
    end

    subject { service.get_account_payment_password_challenge(request) }

    it { is_expected.to be_kind_of(Moneta::Api::Responses::GetAccountPaymentPasswordChallengeResponse) }
  end
end
