class CreateHollidays < ActiveRecord::Migration[6.0]
  def change
    create_table :hollidays do |t|
      t.references :friend_id, null: false, foreign_key: true
      t.boolean :christmas
      t.boolean :hanukkah
      t.boolean :kwanza
      t.boolean :valentines
      t.boolean :easter
      t.integer :reminder_time

      t.timestamps
    end
  end
end
