module Moneta
  module Api
    module Responses
      class AccountInfo
        include Moneta::Api::DataMapper

        property :id
        property :currency
        property :type
        property :status

        def initialize(response)
          @account = load_from(response)
        end
      end
    end
  end
end
