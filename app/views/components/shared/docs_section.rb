module Shared
  class DocsSection < ApplicationComponent
    def initialize(*modifiers, **options)
      @modifiers = modifiers
      @as = as
      @options = options
    end

    def view_template(&)
      classes = [
        "space-y-4 mb-8 max-w-4xl",
        options.delete(:class)
      ]
      div class: classes, **options, &
    end

    private

    attr_reader :modifiers, :as, :options
  end
end
