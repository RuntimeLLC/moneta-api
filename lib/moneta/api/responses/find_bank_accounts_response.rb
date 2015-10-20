module Moneta
  module Api
    module Responses
      class FindBankAccountsResponse
        include Moneta::Api::DataMapper

        # Ответ, который содержит список банковских счетов.
        # Bank Accounts searching response containing the list of bank accounts.
        property :bank_account, type: BankAccountInfo

        def get_account(number)
          bank_account.detect { |account| account.id == number.to_s }
        end
      end
    end
  end
end
