module Examples
  module Breadcrumbs
    class BasicComponent < Base
      def title
        "Breadcrumbs"
      end

      def example
        Breadcrumbs class: "text-sm" do |breadcrumbs|
          breadcrumbs.crumb do
            a do
              "Home"
            end
          end
          breadcrumbs.crumb do
            a do
              "Documents"
            end
          end
          breadcrumbs.crumb do
            "Add Document"
          end
        end
      end
    end
  end
end
