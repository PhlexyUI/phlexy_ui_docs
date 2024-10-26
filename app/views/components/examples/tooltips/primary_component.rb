module Examples
  module Tooltips
    class PrimaryComponent < Base
      def title
        "Primary"
      end

      def example
        Tooltip :open, :primary, tip: "primary" do
          Button :primary do
            "primary"
          end
        end
      end
    end
  end
end
