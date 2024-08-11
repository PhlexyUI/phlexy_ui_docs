module Examples
  class ContainerComponent < ApplicationComponent
    def view_template(&)
      div class: "space-y-8 pb-8", &
    end
  end
end
