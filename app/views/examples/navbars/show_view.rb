module Examples
  module Navbars
    class ShowView < BaseView
      def view_template
        title do
          "Navbar"
        end

        render_examples [
          BasicComponent,
          WithTitleAndIconComponent,
          WithIconAtStartAndEndComponent,
          WithMenuAndSubmenuComponent,
          WithSearchAndDropdownComponent
        ]
      end
    end
  end
end
