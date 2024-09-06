class Category
  include ActiveModel::Model

  attr_accessor :name, :components

  def self.all
    CATEGORIES.map do |category_hash|
      Category.new(
        name: category_hash.fetch(:name),
        components: category_hash.fetch(:components).map do |component_name|
          Component.from_name(component_name)
        end
      )
    end
  end

  private

  CATEGORIES = [
    {
      name: "Actions",
      components: [
        "Button",
        "Dropdown"
      ]
    },
    {
      name: "Data display",
      components: [
        "Badge",
        "Card"
      ]
    },
    {
      name: "Feedback",
      components: [
        "Loading"
      ]
    },
    {
      name: "Navigation",
      components: [
        "Menu",
        "Link"
      ]
    }
  ]
end
