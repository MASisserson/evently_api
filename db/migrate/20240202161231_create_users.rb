class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :role
      t.integer :clearance
      t.text :password

      t.timestamps
    end
  end
end
