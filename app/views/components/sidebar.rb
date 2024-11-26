class Sidebar < ApplicationView
  include Phlex::Rails::Helpers::ImageTag
  include Phlex::Rails::Helpers::LinkTo
  include ActionView::Helpers::DateHelper

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

        span class: "mt-3 flex flex-col" do
          plain "v#{PhlexyUI::VERSION}"
          span class: "text-xs text-base-content/70" do
            plain "#{time_ago_in_words(PhlexyUI::UPDATED_AT)} ago"
          end
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
                      elsif component.implemented?
                        link_to(
                          component.github_url,
                          class: "!cursor-alias",
                          data: {turbo_frame: :content},
                          target: "_blank"
                        ) do
                          span do
                            component.name
                          end

                          div class: "flex gap-2 justify-end items-center" do
                            Tooltip tip: "Implemented, undocumented" do
                              Badge :outline, :info, :sm, class: "opacity-50" do
                                "Undocumented"
                              end
                            end

                            render GithubSvg.new(class: "w-4 h-4 opacity-50")
                          end
                        end
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
