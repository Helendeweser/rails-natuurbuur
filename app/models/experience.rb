class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  has_one_attached :photo

  validates :rating, :user_id, :solution_id, :content, presence: true
  validates :rating, numericality: { in: (0..5) }
end
