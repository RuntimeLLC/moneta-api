module Moneta
  module Api
    class Exception < StandardError
      def to_hash
        { message: message }
      end
    end
  end
end
