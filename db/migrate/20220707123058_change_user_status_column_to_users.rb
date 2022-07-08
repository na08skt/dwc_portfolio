class ChangeUserStatusColumnToUsers < ActiveRecord::Migration[6.1]
  def change
     change_column :users, :user_status, :boolean, default: false, null: false
  end
end
