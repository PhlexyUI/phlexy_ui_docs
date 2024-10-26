module Examples
  module Tooltips
    class TopComponent < Base
      def title
        "Top"
      end

      def example
        Tooltip :open, :top, tip: "hello" do
          Button do
            "Top"
          end
        end
      end
    end
  end
end
