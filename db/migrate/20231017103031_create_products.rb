class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.date :manufacturing_date
      t.text :description
      t.date :expire_date
      t.string :manufactured_by


      t.timestamps
    end

  end
  add_reference :users, :product, index: true
end
