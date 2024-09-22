module Examples
  module Checkboxes
    class SizesComponent < Base
      def title
        "Sizes"
      end

      def example
        Checkbox :checked, :xs
        Checkbox :checked, :sm
        Checkbox :checked, :md
        Checkbox :checked, :lg
      end
    end
  end
end
