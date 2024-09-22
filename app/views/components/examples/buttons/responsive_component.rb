module Examples
  module Buttons
    class ResponsiveComponent < Base
      def title
        "Responsive button"
      end

      def example
        Button :xs, responsive: {sm: :sm, md: :md, lg: :lg} do
          "Responsive"
        end
      end
    end
  end
end
