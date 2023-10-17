class CreateConditionals < ActiveRecord::Migration[7.0]
  def change
    create_table :conditionals do |t|

      t.timestamps
    end
  end
end
