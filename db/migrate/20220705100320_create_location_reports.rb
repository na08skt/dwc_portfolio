class CreateLocationReports < ActiveRecord::Migration[6.1]
  def change
    create_table :location_reports do |t|
      t.integer :user_id, null: false
      t.integer :comment_id, null: false
      t.string :title, null: false
      t.string :area, null: false
      t.text :address, null: false
      t.decimal :latitude
      t.decimal :longitude
      t.date :date, null: false
      t.string :event
      t.text :body
      t.boolean :publication_status, null: false

      t.timestamps
    end
  end
end
