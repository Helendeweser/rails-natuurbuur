class Solution < ApplicationRecord
  has_many :experiences
  has_many :favourites
  has_many :likes

  has_one_attached :photo
end
