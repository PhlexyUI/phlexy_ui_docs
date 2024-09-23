class ThemesController < ApplicationController
  before_action :validate_theme

  def create
    session[:theme] = params[:theme] if params[:theme].present?

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.set_dataset_attribute(
          :html,
          :theme,
          session[:theme]
        )
      end

      format.html do
        redirect_back fallback_location: root_path
      end
    end
  end

  private

  def validate_theme
    return if VALID_THEMES.include?(params[:theme])

    redirect_to root_path, alert: "Invalid theme"
  end

  VALID_THEMES = [
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
end
