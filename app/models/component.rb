class Component
  include ActiveModel::Model

  attr_accessor :id, :name

  def self.from_name(name)
    new(id: name.parameterize, name: name)
  end

  def to_param
    id
  end
end
