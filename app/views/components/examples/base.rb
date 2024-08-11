module Examples
  class Base < ApplicationComponent
    def view_template
      render DemoComponent.new(
        title:,
        example_method: method(:example)
      )
    end

    def title
      raise NotImplementedError, "Subclasses must implement a :title method."
    end

    def example
      raise NotImplementedError, "Subclasses must implement an :example method."
    end
  end
end
