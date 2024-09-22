# frozen_string_literal: true

module Shared
  class Nav < ApplicationComponent
    THEMES = [
      "light",
      "dark",
      "cupcake",
      "bumblebee",
      "emerald",
      "corporate",
      "synthwave",
      "retro",
      "cyberpunk",
      "valentine",
      "halloween",
      "garden",
      "forest",
      "aqua",
      "lofi",
      "pastel",
      "fantasy",
      "wireframe",
      "black",
      "luxury",
      "dracula",
      "cmyk",
      "autumn",
      "business",
      "acid",
      "lemonade",
      "night",
      "coffee",
      "winter",
      "dim",
      "nord",
      "sunset"
    ].freeze

    attr_reader :drawer
    def initialize(drawer:)
      @drawer = drawer
    end

    def view_template
      Navbar class: "fixed top-0 z-20 bg-base-100 lg:w-[calc(100%-20rem)]" do |navbar|
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
        dropdown.button class: "mb-2" do
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
          "shadow-2xl"
        ]

        dropdown.menu :base_200, class: classes do |menu|
          div class: "grid grid-cols-1 gap-3 p-3" do
            THEMES.each do |theme|
              menu.item do
                a data: {set_theme: theme} do
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
