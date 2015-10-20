module Moneta
  module Api
    module Responses
      class BankAccountInfo < KeyValueResponse

        # @return [Integer] ID счета.
        #   Bank account ID.
        property :id
      end
    end
  end
end
