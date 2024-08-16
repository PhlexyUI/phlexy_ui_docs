class ExampleViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def create_view_file
    template(
      "show_view.rb.tt",
      Rails.root.join(
        "app",
        "views",
        "examples",
        name.pluralize.underscore,
        "show_view.rb"
      )
    )
  end

  def create_component_file
    template(
      "basic_component.rb.tt",
      Rails.root.join(
        "app",
        "views",
        "components",
        "examples",
        name.pluralize.underscore,
        "basic_component.rb"
      )
    )
  end
end
