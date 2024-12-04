module Examples
  module Modals
    class BasicComponent < Base
      def title
        "Modal with button to close"
      end

      def subtitle
        "Can only close it by clicking the button or pressing ESC"
      end

      def example
        Button modal: "my_modal_1" do
          "open modal"
        end

        Modal id: "my_modal_1" do |modal|
          modal.body do
            h3 class: "text-lg font-bold" do
              "Hello!"
            end

            p class: "py-4" do
              "Press ESC key or click the button below to close"
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
