module Examples
  class Base < ApplicationComponent
    def initialize(component:)
      @component = component
    end

    def view_template
      render DemoComponent.new(
        component:,
        title:,
        subtitle:,
        example_method: method(:example)
      )
    end

    def title
      raise NotImplementedError, "Subclasses must implement a :title method."
    end

    def subtitle
    end

    def example
      raise NotImplementedError, "Subclasses must implement an :example method."
    end

    private

    attr_reader :component
  end
end
