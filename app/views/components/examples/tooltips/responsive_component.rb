module Examples
  module Tooltips
    class ResponsiveComponent < Base
      def title
        "Responsive tooltip. Only visible on large screens."
      end

      def example
        Tooltip responsive: {lg: true}, tip: "hello" do
          Button do
            "Hover me"
          end
        end
      end
    end
  end
end
