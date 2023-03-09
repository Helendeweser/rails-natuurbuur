class AddPriceToSolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :price, :integer
  end
end
