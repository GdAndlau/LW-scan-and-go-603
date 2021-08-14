class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :address
      t.text :logo
      t.text :opening_hours

      t.timestamps
    end
  end
end
