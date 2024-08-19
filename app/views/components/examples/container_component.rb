module Examples
  class ContainerComponent < ApplicationComponent
    def view_template(&)
      div class: "space-y-8 pb-8 overflow-hidden", &
    end
  end
end
