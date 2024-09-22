module Examples
  module Modals
    class ShowView < BaseView
      def view_template
        title do
          "Modal"
        end

        render_examples [
          CombinedComponent,
          BasicComponent,
          ClosesWhenClickedOutsideComponent,
          WithACloseButtonAtCornerComponent,
          WithCustomWidthComponent,
          ResponsiveComponent
        ]
      end
    end
  end
end
