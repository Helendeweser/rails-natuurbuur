class AddColumnAdvatagesToSolutions < ActiveRecord::Migration[7.0]
  def change
    add_column :solutions, :advantages, :string, array: true, default: []
  end
end
