# frozen_string_literal: true

class ApplicationLayout < ApplicationView
  include Phlex::Rails::Layout
  include Phlex::Rails::Helpers::TurboRefreshesWith
  include Phlex::Rails::Helpers::Flash

  def view_template(&block)
    doctype

    html class: "overscroll-none" do
      head do
        title { "Rails7 + Vite" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        csp_meta_tag
        csrf_meta_tags

        plain helpers.vite_client_tag
        plain helpers.vite_stylesheet_tag("application", data_turbo_track: "reload")
        plain helpers.vite_javascript_tag("application", data_turbo_track: "reload", type: "module")

        turbo_refreshes_with method: :morph, scroll: :preserve
        yield :head
      end

      body do
        main do
          render_flash

          Drawer(id: :drawer, lg: :open) do |drawer|
            drawer.toggle
            drawer.content class: "px-4 sm:px-6 md:px-8 pb-8" do
              Navbar do
                drawer.button :ghost, :square, class: "lg:hidden" do
                  burger_svg
                end
              end

              yield
            end

            drawer.side do
              drawer.overlay
              render Sidebar.new
            end
          end
        end
      end
    end
  end

  private

  def burger_svg
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      fill: "none",
      viewbox: "0 0 24 24",
      class: "inline-block w-6 h-6 stroke-current"
    ) do |s|
      s.path(
        stroke_linecap: "round",
        stroke_linejoin: "round",
        stroke_width: "2",
        d: "M4 6h16M4 12h16M4 18h16"
      )
    end
  end

  def render_flash
    flash.each do |type, msg|
      classes = [
        "fixed",
        "top-0",
        "z-10",
        "alert",
        "rounded-none",
        (type == "alert") ? "alert-error" : "alert-info"
      ]

      div(class: classes, role: :alert) do
        msg
      end
    end
  end
end
