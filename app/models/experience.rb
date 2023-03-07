class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  has_one_attached :photo

  validates :username, :rating, :user_id, :solution_id, :content, presence: true
end
