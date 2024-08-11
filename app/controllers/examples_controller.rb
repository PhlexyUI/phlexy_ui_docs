class ExamplesController < ApplicationController
  before_action :verify_component_exists

  def show
    render klass.new
  end

  private

  def verify_component_exists
    return if klass

    redirect_to root_path, alert: "The component #{component} doesn't exist!"
  end

  def klass
    case component
    when "card" then Examples::Cards::ShowView
    end
  end

  def component
    params[:component]
  end
end
