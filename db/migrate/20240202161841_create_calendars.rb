class CreateCalendars < ActiveRecord::Migration[7.1]
  def change
    create_table :calendars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :clearance_tier

      t.timestamps
    end
  end
end
