class AddValuesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :text
    add_column :users, :payment_details, :integer
    add_column :users, :points, :integer
  end
end
