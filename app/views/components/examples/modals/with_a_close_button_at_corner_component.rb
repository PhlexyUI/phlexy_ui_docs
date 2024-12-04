module Examples
  module Modals
    class WithACloseButtonAtCornerComponent < Base
      def title
        "With a close button at the corner"
      end

      def example
        Button modal: "my_modal_4" do
          "open modal"
        end

        Modal id: "my_modal_4" do |modal|
          modal.body do
            modal.close_button :sm, :circle, :ghost, class: "absolute right-2 top-2" do
              "✕"
            end

            h3 class: "text-lg font-bold" do
              "Hello!"
            end

            p class: "py-4" do
              "Press ESC key or click the button above to close"
            end
          end
        end
      end
    end
  end
end
