module Examples
  module Skeletons
    class WithExistingComponentsComponent < Base
      def title
        "Skeleton - with existing components via modifier"
      end

      def example
        Avatar :skeleton do
          div class: "w-24 rounded" do
          end
        end
      end
    end
  end
end
