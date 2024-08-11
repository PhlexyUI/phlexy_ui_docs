class Component
  include ActiveModel::Model

  attr_accessor :id, :name

  def to_param
    id
  end
end
