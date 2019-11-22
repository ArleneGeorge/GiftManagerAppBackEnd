class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :image_url
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :relationship
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :cell_phone
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
