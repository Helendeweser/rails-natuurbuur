class Solution < ApplicationRecord
  has_many :experiences, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :likes
  has_many :users, through: :favourites

  has_many_attached :photos

  def average_rating
    if experiences.first
      ratings_average.round(1)
    else
      "New"
    end
  end

  private

  def ratings_average
    ratings = experiences.map(&:rating)
    total = ratings.sum
    total / ratings.size
  end
end
