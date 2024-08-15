class Sidebar < ApplicationView
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    aside class: "w-80" do
      Button(:ghost, class: "text-xl mt-2") do
        "PhlexyUI"
      end

      div class: "h-4"

      Menu do |menu|
        menu.item do
          menu.submenu :collapsible, :open do |submenu|
            submenu.title { "Docs" }

            submenu.item do
              link_to "Installation", docs_installation_path
            end
          end

          menu.submenu :collapsible, :open do |submenu|
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
