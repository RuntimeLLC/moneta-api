module Moneta
  module Api
    module Types
      class AccountAccessInfo
        include Moneta::Api::DataMapper

        property :access_to_write
        property :access_to_taken_out
        property :access_to_taken_in

        # @param [Hash]
        def initialize(response)
          load_from(response)
        end
      end
    end
  end
end