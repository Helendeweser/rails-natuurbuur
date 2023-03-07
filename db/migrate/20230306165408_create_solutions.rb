class CreateSolutions < ActiveRecord::Migration[7.0]
  def change
    create_table :solutions do |t|
      t.string :title
      t.text :intro
      t.text :explanation
      t.integer :likes, default: 0
      t.integer :price
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
