class Category
  include ActiveModel::Model

  attr_accessor :name, :components
  attr_reader :id

  def initialize(name:)
    super
    @id = name.parameterize
    @components = []
  end

  @@registry = {}

  def self.from_name(name)
    @@registry[name] ||= new(name:)
  end

  def self.all
    @@registry.values
  end
end
