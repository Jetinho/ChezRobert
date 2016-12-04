class AddProducerToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :producer, :boolean
  end
end
