module Examples
  module Tooltips
    class InfoComponent < Base
      def title
        "Info"
      end

      def example
        Tooltip :open, :info, tip: "info" do
          Button :info do
            "info"
          end
        end
      end
    end
  end
end
