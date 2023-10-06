class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :summary, :rating
  belongs_to :child
  belongs_to :book
end
