class Solution < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :likes
  has_many :users, through: :favourites

  has_many_attached :photos
end
