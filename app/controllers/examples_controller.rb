class ExamplesController < ApplicationController
  before_action :verify_component_exists

  def show
    render klass.new(component:)
  end

  private

  def verify_component_exists
    return if klass

    redirect_to root_path, alert: "The component #{component_name} doesn't exist!"
  end

  def klass
    case component_name
    when "card" then Examples::Cards::ShowView
    end
  end

  def component_name
    params[:component]
  end

  def component
    Component.from_name(component_name)
  end
end
