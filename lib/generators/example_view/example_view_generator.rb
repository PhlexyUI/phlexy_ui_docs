require "yaml"

class ExampleViewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  argument :category, type: :string, default: "", banner: "Category of the component"

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

  def update_component_registry
    return if category.blank?

    update_yaml_file
    system "bin/rails restart", exception: true
  end

  private

  def update_yaml_file
    yaml_file_path = Rails.root.join("config", "components.yml")
    components = YAML.load_file(yaml_file_path)

    if components["categories"][category]
      unless components["categories"][category].include?(name)
        components["categories"][category] << name
      end
    else
      components["categories"][category] = [name]
    end

    File.write(yaml_file_path, components.to_yaml)
  end
end
