module Examples
  module Modals
    class ResponsiveComponent < Base
      def title
        "Responsive"
      end

      def example
        Button modal: "my_modal_6" do
          "open modal"
        end

        Modal :tap_outside_to_close, :bottom, responsive: {sm: :middle}, id: "my_modal_6" do |modal|
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
