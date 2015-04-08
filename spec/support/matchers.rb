require 'rspec/expectations'

RSpec::Matchers.define :be_a_moneta_id do
  match do |actual|
    Integer(actual) && actual.length > 5
  end
end
