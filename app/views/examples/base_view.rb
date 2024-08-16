module Examples
  class BaseView < ApplicationView
    def initialize(component:)
      @component = component
    end

    private

    attr_reader :component

    def render_examples(example_components)
      render ContainerComponent.new do
        example_components.each do |example_component|
          render example_component.new(component:)
        end
      end
    end
  end
end
