module Moneta
  module Api
    module Responses
      class FindAccountByIdResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Responses::AccountInfo]
        property :account

        def initialize(response)
          @account = AccountInfo.new(response[:account])
        end
      end
    end
  end
end
