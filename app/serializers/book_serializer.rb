class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :publisher, :genre, :thumbnail_url

  has_many :reviews
  has_many :children, through: :reviews
end
