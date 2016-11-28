class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :stock_quantity
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
