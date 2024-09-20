module Examples
  class ContainerComponent < ApplicationComponent
    attr_reader :component

    def initialize(component:)
      @component = component
    end

    def view_template(&)
      div class: "space-y-8" do
        render_modifiers

        yield
      end
    end

    private

    def render_modifiers
      div class: "h-96 overflow-y-auto overscroll-contain" do
        Table :zebra, :pin_rows do |table|
          table.header do |header|
            header.row do |row|
              row.head { "Modifier" }
              row.head { "DaisyUI class" }
            end
          end
          table.body do |body|
            component.modifiers.each do |modifier, css_class|
              body.row do |row|
                row.cell { ":#{modifier}" }
                row.cell { css_class }
              end
            end
          end
        end
      end
    end
  end
end
