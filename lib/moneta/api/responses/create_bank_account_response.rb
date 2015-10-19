module Moneta
  module Api
    module Responses
      class CreateBankAccountResponse
        include Moneta::Api::DataMapper

        # @return [String] Идентификатор банковских реквизитов в системе МОНЕТА.РУ
        #   / Bank account id.
        property :id
      end
    end
  end
end
