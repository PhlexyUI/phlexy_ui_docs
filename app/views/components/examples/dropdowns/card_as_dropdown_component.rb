module Examples
  module Dropdowns
    class CardAsDropdownComponent < Base
      def title
        "Card as dropdown component"
      end

      def example
        Dropdown do |dropdown|
          dropdown.button :primary, class: "m-1" do
            "Click"
          end

          dropdown.content :primary, as: Card, class: "w-64 p-2 shadow" do |card|
            card.body do
              h3 class: "card-title" do
                "Card title!"
              end

              p do
                "you can use any element as a dropdown."
              end
            end
          end
        end
      end
    end
  end
end
