module Moneta
  module Api
    module Responses
      class FindAccountByIdResponse
        include Moneta::Api::DataMapper

        initialize_from_hash true

        # @return [Moneta::Api::Responses::AccountInfo]
        property :account

      end
    end
  end
end
