module Shared
  class Title < ApplicationView
    def view_template(&)
      h1 class: "text-4xl font-extrabold mb-8", &
    end
  end
end
