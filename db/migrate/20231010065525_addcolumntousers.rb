class Addcolumntousers < ActiveRecord::Migration[7.0]
  def change
    add_column :users , :age, :integer
    add_column :users, :adhar_number,:bigint
  end
end
