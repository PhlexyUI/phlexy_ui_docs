module Examples
  class ContainerComponent < ApplicationComponent
    attr_reader :component

    def initialize(component:)
      @component = component
    end

    def view_template(&)
      div class: "space-y-8" do
        render_modifiers if component.modifiers.any?

        yield
      end
    end

    private

    def render_modifiers
      div class: "h-96 overflow-y-auto sm:overscroll-y-contain" do
        Table :zebra, :pin_rows do |table|
          table.header do |header|
            header.row do |row|
              row.head class: "w-1/2" do
                "Modifier"
              end
              row.head class: "w-1/2" do
                "DaisyUI class"
              end
            end
          end
          table.body do |body|
            component.modifiers.each do |modifier, css_class|
              body.row do |row|
                row.cell class: "w-1/2" do
                  ":#{modifier}"
                end
                row.cell class: "w-1/2" do
                  css_class
                end
              end
            end
          end
        end
      end
    end
  end
end
