class Sidebar < ApplicationView
  include Phlex::Rails::Helpers::ImageTag
  include Phlex::Rails::Helpers::LinkTo

  def view_template
    aside class: "w-80 bg-base-100 min-h-[100dvh] overscroll-contain" do
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
            submenu.title { "📚 Docs" }

            submenu.item do
              link_to "About", docs_path(:about)
            end

            submenu.item do
              link_to "Installation", docs_path(:installation)
            end

            submenu.item do
              link_to "Configuration", docs_path(:configuration)
            end
          end
        end

        menu.item do |item|
          item.submenu :collapsible, :open do |submenu|
            submenu.title { "✨ Components" }

            Category.all.each do |category|
              submenu.item do |item|
                item.title as: :h2, class: "px-1.5" do
                  category.name
                end

                item.submenu do |submenu|
                  category.components.each do |component|
                    submenu.item do
                      if component.documented?
                        link_to(
                          component.name,
                          examples_path(component),
                          data: {turbo_frame: :content, turbo_action: :advance}
                        )
                      else
                        link_to(
                          component.name,
                          "#",
                          class: "opacity-50 !cursor-default",
                          data: {turbo_frame: :content}
                        )
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
end
