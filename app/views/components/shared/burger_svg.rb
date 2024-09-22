module Shared
  class BurgerSvg < ApplicationComponent
    def view_template
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        fill: "none",
        viewbox: "0 0 24 24",
        class: "inline-block w-6 h-6 stroke-current"
      ) do |s|
        s.path(
          stroke_linecap: "round",
          stroke_linejoin: "round",
          stroke_width: "2",
          d: "M4 6h16M4 12h16M4 18h16"
        )
      end
    end
  end
end
