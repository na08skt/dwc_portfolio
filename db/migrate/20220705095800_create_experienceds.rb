class CreateExperienceds < ActiveRecord::Migration[6.1]
  def change
    create_table :experienceds do |t|
      t.integer :user_id, null:false
      t.integer :location_report_id, null:false

      t.timestamps
    end
  end
end
