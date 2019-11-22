class CreateOccasions < ActiveRecord::Migration[6.0]
  def change
    create_table :occasions do |t|
      t.references :friend, null: false, foreign_key: true
      t.string :occasion
      t.string :month
      t.string :day
      t.string :year
      t.integer :reminder_time

      t.timestamps
    end
  end
end
