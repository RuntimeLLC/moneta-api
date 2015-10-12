module Moneta
  module CoreExt
    module String

      def self.included(base)
        base.send(:include, Extension)
      end

      module Extension
        def classify_with_lower
          str = dup
          str = str.classify
          str[0] = str[0].downcase

          str
        end

        def classify
          defined?(super) ? super : dup.split('_').map(&:capitalize).join
        end
      end

    end
  end
end

String.send :include, Moneta::CoreExt::String