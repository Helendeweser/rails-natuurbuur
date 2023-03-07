class RemoveLikesFromSolutions < ActiveRecord::Migration[7.0]
  def change
    remove_column :solutions, :likes, :integer
  end
end
