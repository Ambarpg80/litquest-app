class Book < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :children, through: :reviews
end
