module Examples
  module Badges
    class ShowView < BaseView
      def view_template
        title do
          "Badge"
        end

        render_examples [
          BasicComponent,
          WithBrandColorsComponent,
          OutlineComponent,
          SizesComponent,
          EmptyComponent,
          WithStateColorsComponent,
          InATextComponent,
          InAButtonComponent
        ]
      end
    end
  end
end
