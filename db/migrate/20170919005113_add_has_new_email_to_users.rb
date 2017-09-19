class AddHasNewEmailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :has_new_email, :boolean
  end
end
