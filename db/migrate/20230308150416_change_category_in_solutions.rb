class ChangeCategoryInSolutions < ActiveRecord::Migration[7.0]
  def change
    change_column :solutions, :category, :string, array: true, default: [], using: "(string_to_array(category, ','))"
  end
end
