class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :production, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :quantity
      t.date :delivery_date_at
      t.boolean :delivery
      t.string :status

      t.timestamps
    end
  end
end
