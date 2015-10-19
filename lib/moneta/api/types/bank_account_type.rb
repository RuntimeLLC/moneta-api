module Moneta
  module Api
    module Types

      # Банковские реквизиты.
      # Bank account.
      class BankAccountType < KeyValueEntity
        # @return [String] Банк.
        #   / Bank.
        property :bank

        # @return [String] БИК.
        #   / BIC.
        property :bik

        # @return [String] Расчетный счет.
        #  / Checking account.
        property :account

        # @return [String] Корреспондентский банк.
        #  / Corresponding bank.
        property :corr_bank

        # @return [String] Корреспондентский счет.
        #   / Corresponding account.
        property :corr_account

        # @return [String] Страна.
        #  / Country.
        property :country

        # @return [String] Регион/республика.
        #   / State or region.
        property :state

        # @return [String] Город.
        #  / City.
        property :city

        # @return [String] КБК.
        #   / Budgetary classification code.
        property :kbk

        # @return [String] Общероссийский классификатор территорий муниципальных образований.
        #   / Russian Classification of Territories of Municipal Formations.
        property :oktmo

        # @return [String] КПП.
        #   / Industrial Enterprises Classifier.
        property :kpp

        # @return [String] Наименование получателя
        #   / Beneficiary Customer-Name.
        property :username

        # @return [Boolean]  Международные банковские реквизиты
        #   / International bank details.
        property :is_international
      end
    end
  end
end
