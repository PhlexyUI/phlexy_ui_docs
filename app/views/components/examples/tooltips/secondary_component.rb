module Examples
  module Tooltips
    class SecondaryComponent < Base
      def title
        "Secondary"
      end

      def example
        Tooltip :open, :secondary, tip: "secondary" do
          Button :secondary do
            "secondary"
          end
        end
      end
    end
  end
end
