module Moneta
  module Front
    class HTTPException < StandardError
      def to_hash
        { message: message }
      end

      def inspect
        "HTTPException: #{ message }"
      end
    end
  end
end
