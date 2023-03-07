class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  validates :user, uniqueness: { scope: :solution, message: "This solution is already in your favourite" }
end
