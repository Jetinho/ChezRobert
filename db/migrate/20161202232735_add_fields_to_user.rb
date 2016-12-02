class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :farm_description, :string
    add_column :users, :delivery, :boolean
    add_column :users, :delivery_conditions, :text
    add_column :users, :delivery_range, :integer
  end
end
