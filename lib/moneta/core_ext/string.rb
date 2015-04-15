module Moneta
  module CoreExt
    module String

      def self.included(base)
        unless 'moneta'.respond_to?(:classify)
          base.send(:include, Extension)
        end
      end

      module Extension
        def classify_with_lower
          str = dup
          str = str.classify
          str[0] = str[0].downcase

          str
        end

        def classify
          dup.split('_').map(&:capitalize).join
        end
      end

    end
  end
end

String.send :include, Moneta::CoreExt::String