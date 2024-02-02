class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :calendar, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :minute
      t.integer :length

      t.timestamps
    end
  end
end
