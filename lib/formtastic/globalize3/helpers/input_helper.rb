module Formtastic
  module Globalize3
    module Helpers
      # Make formtastic support globalize3 translated fields when working the magical type determination for columns
      module InputHelper

        def self.included(base)
          base.send :include, InstanceMethods
          base.send :alias_method_chain, :column_for, :globalize3_support
        end

        module InstanceMethods

          def column_for_with_globalize3_support(method)
            column = column_for_without_globalize3_support(method)

            if column.nil? && @object.respond_to?(:translations)
              translation_obj = @object.translations.empty? ? @object.translations.new : @object.translations.first

              if translation_obj.try(:respond_to?, :column_for_attribute)
                column = translation_obj.column_for_attribute(method)
              end
            end

            column
          end

        end

      end
    end
  end
end