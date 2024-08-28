module Examples
  module Menus
    class FileTreeComponent < Base
      def title
        "File tree"
      end

      def example
        Menu :base_200, :xs, class: "rounded-lg w-full max-w-xs" do |menu|
          menu.item do
            a do
              blank_file_svg
              plain "resume.pdf"
            end
          end

          menu.item do |item|
            item.submenu :collapsible, :open do |submenu|
              submenu.title do
                folder_svg
                plain "My Files"
              end

              submenu.item do
                a do
                  blank_file_svg
                  plain "Project-final.psd"
                end
              end

              submenu.item do
                a do
                  blank_file_svg
                  plain "Project-final-2.psd"
                end
              end

              submenu.item do |submenu_item|
                submenu_item.submenu :collapsible, :open do |submenu_2|
                  submenu_2.title do
                    folder_svg
                    plain "Images"
                  end

                  submenu_2.item do
                    a do
                      image_svg
                      plain "Screenshot1.png"
                    end
                  end

                  submenu_2.item do
                    a do
                      image_svg
                      plain "Screenshot2.png"
                    end
                  end

                  submenu_2.item do |submenu_item|
                    submenu_item.submenu :collapsible do |submenu_3|
                      submenu_3.title do
                        folder_svg
                        plain "Others"
                      end

                      submenu_3.item do
                        a do
                          image_svg
                          plain "Screenshot3.png"
                        end
                      end
                    end
                  end
                end
              end
            end
          end

          menu.item do
            a do
              blank_file_svg
              plain "reports-final-2.pdf"
            end
          end
        end
      end

      def blank_file_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke_width: "1.5",
          stroke: "currentColor",
          class: "h-4 w-4"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            d:
              "M19.5 14.25v-2.625a3.375 3.375 0 00-3.375-3.375h-1.5A1.125 1.125 0 0113.5 7.125v-1.5a3.375 3.375 0 00-3.375-3.375H8.25m2.25 0H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 00-9-9z"
          )
        end
      end

      def folder_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke_width: "1.5",
          stroke: "currentColor",
          class: "h-4 w-4"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            d:
              "M2.25 12.75V12A2.25 2.25 0 014.5 9.75h15A2.25 2.25 0 0121.75 12v.75m-8.69-6.44l-2.12-2.12a1.5 1.5 0 00-1.061-.44H4.5A2.25 2.25 0 002.25 6v12a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18V9a2.25 2.25 0 00-2.25-2.25h-5.379a1.5 1.5 0 01-1.06-.44z"
          )
        end
      end

      def image_svg
        svg(
          xmlns: "http://www.w3.org/2000/svg",
          fill: "none",
          viewbox: "0 0 24 24",
          stroke_width: "1.5",
          stroke: "currentColor",
          class: "h-4 w-4"
        ) do |s|
          s.path(
            stroke_linecap: "round",
            stroke_linejoin: "round",
            d:
              "M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z"
          )
        end
      end
    end
  end
end
