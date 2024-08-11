class Category
  include ActiveModel::Model

  attr_accessor :name, :components

  def self.all
    CATEGORIES.map do |category_hash|
      Category.new(
        name: category_hash.fetch(:name),
        components: category_hash.fetch(:components).map do |component_name|
          Component.new(
            id: component_name.parameterize,
            name: component_name
          )
        end
      )
    end
  end

  private

  CATEGORIES = [
    {
      name: "Data display",
      components: ["Card"]
    }
  ]
end
