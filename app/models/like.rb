class Like < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  validates :user, uniqueness: { scope: :solution }
end
