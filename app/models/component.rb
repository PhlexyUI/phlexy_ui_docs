class Component
  include ActiveModel::Model

  attr_writer :documented
  attr_accessor :name, :category
  attr_reader :id

  @@registry = {}
  @@config = YAML.load_file(Rails.root.join("config", "components.yml"))

  def initialize(name:, category:)
    @id = name.parameterize
    @name = name
    @category = category
    @documented = file_exists?
  end

  def self.load_components
    @@config["categories"].each do |category, components|
      components.each do |component|
        register(component, category: category)
      end
    end
  end

  def self.register(name, category:)
    Category.from_name(category)
    @@registry[name] = new(name: name, category: category)
  end

  def self.from_name(name)
    @@registry[name]
  end

  def self.all
    @@registry.values
  end

  def to_param
    name.parameterize
  end

  def modifiers
    "PhlexyUI::#{name}".constantize.modifiers
  end

  def documented?
    @documented
  end

  private

  def file_exists?
    File.exist?(
      Rails.root.join(
        "app",
        "views",
        "examples",
        name.pluralize.underscore,
        "show_view.rb"
      )
    ) &&
      File.exist?(
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
