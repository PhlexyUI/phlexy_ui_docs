# frozen_string_literal: true

module Shared
  class Nav < ApplicationComponent
    include Phlex::Rails::Helpers::LinkTo

    attr_reader :drawer

    def initialize(drawer:)
      @drawer = drawer
    end

    def view_template
      Navbar class: "fixed top-0 z-30 bg-base-100 lg:w-[calc(100%-20rem)]", id: :nav do |navbar|
        navbar.start do
          drawer.button :ghost, :square, class: "lg:hidden" do
            render BurgerSvg
          end
        end

        navbar.center do
        end

        navbar.end do
          render_theme_changer
          render_github_button
        end
      end
    end

    private

    def render_theme_changer
      Dropdown :end do |dropdown|
        dropdown.button :ghost, class: "mb-2" do
          "Theme"
        end

        classes = [
          "w-56",
          "max-h-[calc(100vh-10rem)]",
          "overflow-y-auto",
          "rounded-box",
          "border",
          "border-white/5",
          "outline",
          "outline-1",
          "outline-black/5",
          "shadow-2xl",
          "overscroll-contain"
        ]

        dropdown.menu :base_200, class: classes do |menu|
          div class: "grid grid-cols-1 gap-3 p-3" do
            ThemesController::VALID_THEMES.each do |theme|
              menu.item do
                link_to themes_path(theme:), data: {theme:, turbo_method: :post} do
                  theme.capitalize
                end
              end
            end
          end
        end
      end
    end

    def render_github_button
      Button(
        :ghost,
        :square,
        as: :a,
        href: "https://github.com/phlexyUI/phlexy_ui",
        target: "_blank",
        class: "self-baseline"
      ) do
        render GithubSvg
      end
    end
  end
end
