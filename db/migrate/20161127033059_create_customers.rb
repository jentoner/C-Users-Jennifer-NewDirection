class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :avatar
      t.string :notes
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
