class CreateCustomValidations < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_validations do |t|

      t.timestamps
    end
  end
end
