module Examples
  module Breadcrumbs
    class WithIcons < Base
      def title
        "Breadcrumbs with icons"
      end

      def example
        Breadcrumbs class: "text-sm" do |breadcrumbs|
          breadcrumbs.crumb do
            a do
              closed_folder_svg
              plain "Home"
            end
          end

          breadcrumbs.crumb do
            a do
              closed_folder_svg
              plain "Documents"
            end
          end

          breadcrumbs.crumb do
            open_folder_svg
            plain "Add Document"
          end
        end
      end

      private

      def closed_folder_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          class: "h-4 w-4 stroke-current"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d:
              "M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-6l-2-2H5a2 2 0 00-2 2z"
          )
        end
      end

      def open_folder_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          class: "h-4 w-4 stroke-current"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            stroke_width: "2",
            d:
              "M9 13h6m-3-3v6m5 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"
          )
        end
      end
    end
  end
end
