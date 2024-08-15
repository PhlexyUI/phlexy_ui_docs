class DocsController < ApplicationController
  def installation
    render Docs::InstallationView.new
  end
end
