RSpec.shared_context 'moneta' do
  let(:service) { Moneta::Api::Service.new($username, $password, { demo_mode: true }) }

  let(:fill_base_settings) do
    Proc.new do |request|
      request.payee = 28988504
      request.payer = 10999
      request.amount = 10
      request.is_payer_amount = false
      request.payment_password = '12345'
    end
  end
end
