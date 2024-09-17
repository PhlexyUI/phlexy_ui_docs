class Sidebar < ApplicationView
  include Phlex::Rails::Helpers::ImageTag
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    aside class: "w-80 bg-base-100 h-[100dvh]" do
      div class: "flex justify-start items-center" do
        Button(
          :ghost,
          as: :a,
          href: root_path,
          class: "text-lg md:text-2xl font-bold mt-2"
        ) do
          image_tag "phlexy_ui_logo.png", class: "w-12 h-12"
          plain "PhlexyUI"
        end

        span class: "mt-2" do
          "v#{PhlexyUI::VERSION}"
        end
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
