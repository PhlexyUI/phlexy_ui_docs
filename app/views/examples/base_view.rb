module Examples
  class BaseView < ApplicationView
    def initialize(component:)
      @component = component
    end

    private

    attr_reader :component

    def render_examples(example_components, **)
      example_components.each do |example_component|
        render example_component.new(**)
      end
    end
  end
end
