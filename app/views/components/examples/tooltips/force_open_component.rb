module Examples
  module Tooltips
    class ForceOpenComponent < Base
      def title
        "Force open"
      end

      def example
        Tooltip :open, tip: "hello" do
          Button do
            "Force open"
          end
        end
      end
    end
  end
end
