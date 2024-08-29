module Examples
  module Menus
    class ShowView < BaseView
      def view_template
        title do
          "Menu"
        end

        render_examples [
          BasicComponent,
          ResponsiveComponent,
          WithIconOnlyComponent,
          WithIconOnlyHorizontalComponent,
          WithIconOnlyWithTooltipComponent,
          WithIconOnlyHorizontalWithTooltipComponent,
          SizesComponent,
          WithDisabledItemsComponent,
          WithIconsComponent,
          WithIconAndBadgeResponsiveComponent,
          WithoutPaddingAndBorderRadiusComponent,
          WithTitleComponent,
          WithTitleAsParentComponent,
          SubmenuComponent,
          CombinedComponent,
          CollapsibleSubMenuComponent,
          FileTreeComponent,
          WithActiveItemComponent,
          HorizontalComponent,
          HorizontalSubmenuComponent,
          MegaMenuWithSubmenuResponsiveComponent,
          CollapsibleWithSubmenuResponsive,
          WithoutPaddingAndBorderRadiusComponent
        ]
      end
    end
  end
end
