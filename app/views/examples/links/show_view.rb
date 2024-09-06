module Examples
  module Links
    class ShowView < BaseView
      def view_template
        title do
          "Link"
        end

        render_examples [
          BasicComponent,
          UnderlinedComponent,
          ColorsComponent,
          UnderlinedOnlyOnHoverComponent
        ]
      end
    end
  end
end
