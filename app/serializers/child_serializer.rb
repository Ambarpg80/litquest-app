class ChildSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :profile
  
  has_one :profile
  belongs_to :adult
  has_many :reviews
  has_many :books, through: :reviews
end
