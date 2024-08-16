module Examples
  class BaseView < ApplicationView
    def initialize(component:)
      @component = component
    end

    def title(&)
      Title :"4x", :extrabold, &
    end

    def render_examples(example_components)
      render ContainerComponent.new do
        example_components.each do |example_component|
          render example_component.new(component:)
        end
      end
    end

    private

    attr_reader :component
  end
end
