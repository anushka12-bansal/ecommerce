class RenameFullPhoneNumberToContactNumber < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :full_phone_number, :contact_number
  end
end
