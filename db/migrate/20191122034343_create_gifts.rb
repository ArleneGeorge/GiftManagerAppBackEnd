class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.references :friend_id, null: false, foreign_key: true
      t.string :link
      t.string :image_url
      t.string :name
      t.string :note

      t.timestamps
    end
  end
end
