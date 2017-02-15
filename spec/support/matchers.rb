require 'rspec/expectations'

RSpec::Matchers.define :be_a_moneta_id do
  match do |actual|
    actual.is_a?(Integer) && actual.to_s.length >= 5
  end
end

RSpec::Matchers.define :be_a_bank_account_id do
  match do |actual|
    actual.is_a?(Integer) && actual.to_s.length == 4
  end
end
