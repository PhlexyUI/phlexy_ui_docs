module Examples
  module Navbars
    class WithTitleAndIconComponent < Base
      def title
        "Navbar with title and icon"
      end

      def example
        Navbar :base_100, class: "shadow-xl rounded-box" do |navbar|
          navbar.start do
            Button :ghost, class: "text-xl" do
              "daisyUI"
            end
          end

          navbar.end do
            Button :square, :ghost do
              three_dots_svg
            end
          end
        end
      end

      def three_dots_svg
        svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", class: "inline-block h-5 w-5 stroke-current" do |svg|
          svg.path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"
        end
      end
    end
  end
end
