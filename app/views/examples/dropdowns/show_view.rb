module Examples
  module Dropdowns
    class ShowView < BaseView
      def view_template
        title do
          "Dropdown"
        end

        render_examples [
          BasicComponent,
          UsingCssFocusComponent,
          EndComponent,
          TopComponent,
          TopEndComponent,
          BottomComponent,
          BottomEndComponent,
          LeftComponent,
          LeftEndComponent,
          RightComponent,
          RightEndComponent,
          OpenOnHoverComponent,
          ForceOpenComponent,
          CardAsDropdownComponent,
          InNavbarComponent,
          HelperComponent
        ]
      end
    end
  end
end
