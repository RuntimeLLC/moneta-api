module Moneta
  module Api
    module Support
      def capitalize(str)
        str.split('_').map(&:capitalize).join
      end

      def capitalize_with_lower(str)
        str = capitalize(str)
        str[0].downcase!

        str
      end
    end
  end
end
