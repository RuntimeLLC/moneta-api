module Moneta
  module Front
    module ServiceMethods
      # @param [operation_id:]
      # @return [page]
      def get_receipt_pdf(operation_id)
        url = "report/receipt.htm?operationId=#{operation_id}&format=pdf"

        call(url)
      end

      private

      def call(url)
        response = request(url)

        case response.status
        when 200..230 then response.body
        else
          raise Moneta::Front::HTTPException.new("Status code: #{response.status}")
        end

      rescue Faraday::Error => e
        raise Moneta::Front::HTTPException.new(e.message)
      end
    end
  end
end
