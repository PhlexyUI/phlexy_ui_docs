class Category
  include ActiveModel::Model

  attr_accessor :name
  attr_reader :id

  @@registry = {}

  def initialize(name:)
    @id = name.parameterize
    @name = name
  end

  def self.from_name(name)
    @@registry[name] ||= new(name: name)
  end

  def self.all
    @@registry.values
  end

  def components
    Component.all.select { |c| c.category == name }
  end
end
