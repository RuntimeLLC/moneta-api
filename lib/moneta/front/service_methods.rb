module Moneta
  module Front
    module ServiceMethods
      # @param [operation_id:]
      # @return [page]
      def get_invoice_pdf(operation_id:)
        url = "report/receipt.htm?operationId=#{operation_id}&format=pdf"
        request(url)
      end
    end
  end
end
