class Sidebar < ApplicationView
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    aside class: "w-80 bg-base-100 h-[100dvh]" do
      Button(:ghost, as: :a, href: root_path, class: "text-lg md:text-2xl mt-2") do
        "PhlexyUI"
      end

      span do
        "v#{PhlexyUI::VERSION}"
      end

      div class: "h-4"

      Menu do |menu|
        menu.item do |item|
          item.submenu :collapsible, :open do |submenu|
            submenu.title { "Docs" }

            submenu.item do
              link_to "Installation", docs_path(:installation)
            end
          end
        end

        menu.item do |item|
          item.submenu :collapsible, :open do |submenu|
            submenu.title { "Components" }

            Category.all.each do |category|
              submenu.item do
                menu.title as: :h2, class: "px-1.5" do
                  category.name
                end

                menu.submenu do |submenu|
                  category.components.each do |component|
                    submenu.item do
                      link_to component.name, examples_path(component)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
