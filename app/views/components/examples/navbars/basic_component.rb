module Examples
  module Navbars
    class BasicComponent < Base
      def title
        "Navbar"
      end

      def example
        Navbar :base_100, class: "shadow-xl rounded-box" do
          Button :ghost, class: "text-xl" do
            "daisyUI"
          end
        end
      end
    end
  end
end
