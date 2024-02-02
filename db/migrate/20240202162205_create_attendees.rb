class CreateAttendees < ActiveRecord::Migration[7.1]
  def change
    create_table :attendees do |t|
      t.references :event, null: false, foreign_key: true
      t.jsonb :form

      t.timestamps
    end
  end
end
