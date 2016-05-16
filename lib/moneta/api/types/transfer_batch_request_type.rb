module Moneta
  module Api
    module Types
      # Тип, описывающий параметры операции в запросах в пакетном режиме.
      # Transaction parameters type for requests in batch processing mode.

      class TransferBatchRequestType < Entity
        # @return [Boolean] Флаг, указывающий выполнять ли все денежные переводы в одной транзакции.
        #   Если transactional = true, то:
        #   при возникновении ошибки все проведенные операции будут отменены
        #   можно проводить только операции со счетами монеты. Нельзя выводить деньги на внешние платежные системы.
        #   Если transactional = false, то:
        #   при возникновении ошибки все проведенные операции будут сохранены
        #   можно проводить любые операции, которые доступны в TransferRequest
        #   если выставить флаг exitOnFailure = false, то при возникновении ошибки можно пропустить операцию
        #   и продолжить выполнение операций дальше
        #   / Joining all transfers in batch processing into one transaction. True -- all processed transfers will be rolled back on exceptions, no external transfers are allowed. False -- only current transfer rolled back on exceptions, external transfers are allowed.
        property :transactional

        # @return [Boolean] Флаг, указывающий прерывать ли выполнение пакета операций, если произошла ошибка.
        #   Используется только при transactional = false
        #   / Stops batch processing on exceptions. Used only in conjunction with transactional=false.
        property :exit_on_failure

        # @return [Array[Moneta::Api::Types::Entity*]] Набор операций, которые необходимо выполнить в одном пакете.
        #   Операции выполняются в том порядке, в котором они переданы в запросе.
        #   / Set of transfers to be processed in one batch. Processed in order of appearance.
        property :transaction

        # Набор операций, которые необходимо выполнить в одном пакете.
        #   Операции выполняются в том порядке, в котором они переданы в запросе.
        #   / Set of transfers to be processed in one batch. Processed in order of appearance.
        #
        # @param [Moneta::Api::Types::Entity*]
        # @return void
        def add_transaction(item)
          parents = item.class.ancestors
          if parents.include?(Moneta::Api::Types::Entity)
            (@transaction ||=[]).push(item)
          else
            raise TypeError.new("TypeError: #{ item.class } have not parent Moneta::Api::Types::Entity")
          end
        end
      end
    end
  end
end
