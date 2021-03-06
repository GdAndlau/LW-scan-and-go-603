class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :store, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.integer :price
      t.integer :size
      t.text :image
      t.boolean :available
      t.integer :points
      t.integer :quantity

      t.timestamps
    end
  end
end
