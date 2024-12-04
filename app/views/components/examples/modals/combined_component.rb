module Examples
  module Modals
    class CombinedComponent < Base
      def title
        "Combined"
      end

      def subtitle
        "Can close it by clicking outside, pressing ESC or clicking the button"
      end

      def example
        Button modal: "my_modal_3" do
          "open modal"
        end

        Modal :tap_outside_to_close, id: "my_modal_3" do |modal|
          modal.body do
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
