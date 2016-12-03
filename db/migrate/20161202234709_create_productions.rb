class CreateProductions < ActiveRecord::Migration[5.0]
  def change
    create_table :productions do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.date :prod_date_at
      t.date :dispo_date_at
      t.integer :quantity
      t.integer :price
      t.string :unit
      t.string :status

      t.timestamps
    end
  end
end
