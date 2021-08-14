class CreateSessionItems < ActiveRecord::Migration[6.0]
  def change
    create_table :session_items do |t|
      t.references :session, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
