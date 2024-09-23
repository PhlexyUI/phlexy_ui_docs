class ThemesController < ApplicationController
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
end
