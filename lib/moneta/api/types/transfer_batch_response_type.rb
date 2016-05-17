module Moneta
  module Api
    module Types
      class TransferBatchResponseType
        include Moneta::Api::DataMapper

        property :transaction, type: Moneta::Api::Types::TransactionResponseType
      end
    end
  end
end
