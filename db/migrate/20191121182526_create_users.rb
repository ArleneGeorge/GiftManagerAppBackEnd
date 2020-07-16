class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :avatar
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
