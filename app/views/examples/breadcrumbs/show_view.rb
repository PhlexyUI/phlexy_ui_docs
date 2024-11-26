module Examples
  module Breadcrumbs
    class ShowView < BaseView
      def view_template
        title do
          "Breadcrumbs"
        end

        render_examples [
          BasicComponent,
          WithIcons,
          WithMaxWidth
        ]
      end
    end
  end
end
