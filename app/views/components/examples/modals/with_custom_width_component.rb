module Examples
  module Modals
    class WithCustomWidthComponent < Base
      def title
        "With custom width"
      end

      def example
        Button modal: "my_modal_5" do
          "open modal"
        end

        Modal :tap_outside_to_close, id: "my_modal_5" do |modal|
          modal.body class: "w-11/12 max-w-5xl" do
            h3 class: "text-lg font-bold" do
              "Hello!"
            end

            p class: "py-4" do
              "Press ESC key, click outside or click the button below to close"
            end

            modal.action do |action|
              action.close_button :primary do
                "Close"
              end
            end
          end
        end
      end
    end
  end
end
