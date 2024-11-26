module Examples
  module Breadcrumbs
    class WithMaxWidth < Base
      def title
        "Breadcrumbs with max width"
      end

      def example
        Breadcrumbs class: "max-w-xs text-sm" do |breadcrumbs|
          breadcrumbs.crumb do
            "Long text 1"
          end

          breadcrumbs.crumb do
            "Long text 2"
          end

          breadcrumbs.crumb do
            "Long text 3"
          end

          breadcrumbs.crumb do
            "Long text 4"
          end

          breadcrumbs.crumb do
            "Long text 5"
          end
        end
      end
    end
  end
end
