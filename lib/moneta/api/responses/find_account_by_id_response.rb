module Moneta
  module Api
    module Responses
      class FindAccountByIdResponse
        include Moneta::Api::DataMapper

        # @return [Moneta::Api::Responses::AccountInfo]
        property :account

        def initialize(response)
          load_from(response)
        end
      end
    end
  end
end
