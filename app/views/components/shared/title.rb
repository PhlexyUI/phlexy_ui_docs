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
      xl: "text-xl",
      "2xl": "text-2xl",
      "3xl": "text-3xl",
      "4xl": "text-4xl",
      bold: "font-bold",
      extrabold: "font-extrabold"
    }
  end
end
