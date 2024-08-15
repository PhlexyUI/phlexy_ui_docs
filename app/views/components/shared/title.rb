module Shared
  class Title < ApplicationComponent
    def initialize(*modifiers, as: :h1, **options)
      @modifiers = modifiers
      @as = as
      @options = options
    end

    def view_template(&)
      classes = [
        "mb-8",
        *TITLE_MODIFIERS_CLASSES.values_at(*modifiers),
        options.delete(:class)
      ]

      public_send as, class: classes, **options, &
    end

    private

    attr_reader :modifiers, :as, :options

    TITLE_MODIFIERS_CLASSES = {
      lg: "text-lg",
      "1x": "text-xl",
      "2x": "text-2xl",
      "3x": "text-3xl",
      "4x": "text-4xl",
      bold: "font-bold",
      extrabold: "font-extrabold"
    }
  end
end
