module Examples
  module Modals
    class ClosesWhenClickedOutsideComponent < Base
      def title
        "Closes when clicked outside"
      end

      def subtitle
        "Can close it by clicking outside or pressing ESC"
      end

      def example
        Button modal: "my_modal_2" do
          "open modal"
        end

        Modal :tap_outside_to_close, id: "my_modal_2" do |modal|
          modal.body do
            h3 class: "text-lg font-bold" do
              "Hello!"
            end

            p class: "py-4" do
              "Press ESC key or click outside to close"
            end
          end
        end
      end
    end
  end
end
