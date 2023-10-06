class AdultSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_one :profile
  has_many :children
end
