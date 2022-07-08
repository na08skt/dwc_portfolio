class Users < ActiveRecord::Migration[6.1]
  def change
    remove_column :Users, :is_deleted, :boolean
    
  end
end
