module Examples
  module Skeletons
    class ShowView < BaseView
      def view_template
        title do
          "Skeleton"
        end

        render_examples [
          BasicComponent,
          CircleWithContentComponent,
          RectangleWithContentComponent,
          WithExistingComponentsComponent
        ]
      end
    end
  end
end
