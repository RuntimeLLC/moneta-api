module Moneta
  module Api
    class HTTPException < Exception
      def to_hash
        { message: message }
      end

      def inspect
        "HTTPException: #{ message }"
      end
    end
  end
end
