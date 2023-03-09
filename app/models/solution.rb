class Solution < ApplicationRecord
  has_many :experiences
  has_many :favourites, dependent: :destroy
  has_many :likes
  has_many :users, through: :favourites

  has_one_attached :photo
end
