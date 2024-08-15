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
    "Docs::#{doc_name.classify.pluralize}::ShowView".safe_constantize
  end

  def doc_name
    params[:doc_name]
  end
end
