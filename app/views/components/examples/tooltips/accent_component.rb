module Examples
  module Tooltips
    class AccentComponent < Base
      def title
        "Accent"
      end

      def example
        Tooltip :open, :accent, tip: "accent" do
          Button :accent do
            "accent"
          end
        end
      end
    end
  end
end
