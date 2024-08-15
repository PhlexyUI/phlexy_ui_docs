class DocsController < ApplicationController
  before_action :verify_doc_exists

  def show
    render view_class.new
  end

  private

  def verify_doc_exists
    return if view_class

    render Application::NotFoundView.new, status: :not_found
  end

  def view_class
    case doc_name.to_sym
    when :installation then Docs::InstallationView
    end
  end

  def doc_name
    params[:doc_name].to_sym
  end
end
