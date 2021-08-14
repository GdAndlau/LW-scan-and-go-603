class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :store
      t.references :user
      t.boolean :status

      t.timestamps
    end
  end
end
